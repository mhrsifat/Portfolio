<?php

require_once __DIR__ . '/mailer/PHPMailer.php';
require_once __DIR__ . '/mailer/SMTP.php';
require_once __DIR__ . '/mailer/Exception.php';

require_once __DIR__ . '/../vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

use PHPMailer\PHPMailer\PHPMailer;

class MyClass
{
    public function sendMail($toEmail, $htmlMessage, $subject)
    {
      $mail = new PHPMailer();
$mail->isSMTP();
$mail->Host       = $_ENV['MAIL_HOST'];
 //$mail->SMTPDebug  = 3;
$mail->SMTPAuth   = true;
$mail->Username   = $_ENV['MAIL_USERNAME'];
$mail->Password   = $_ENV['MAIL_PASSWORD'];
$mail->SMTPSecure = $_ENV['MAIL_ENCRYPTION'];
$mail->Port       = $_ENV['MAIL_PORT']; 

$mail->setFrom($_ENV['MAIL_FROM_ADDRESS'], $_ENV['MAIL_FROM_NAME']);
        $mail->addAddress($toEmail);
        $mail->addReplyTo($_ENV['MAIL_REPLY_TO');
        $mail->isHTML(true);
        $mail->Subject = htmlspecialchars($subject);
        $mail->Body    = $htmlMessage;

        if (!$mail->send()) {
            $_SESSION['mailError'] = $mail->ErrorInfo;
            return false;
        }
        return true;
    }
}

function mail_logs($message) {
    error_log(date('[Y-m-d H:i:s] ') . $message . PHP_EOL, 3, 'mail_logs.log');
}

if (isset($_POST['send_message'])) {
    // Verify CSRF token
    if (!isset($_POST['csrf_token']) || $_POST['csrf_token'] !== $_SESSION['csrf_token']) {
        die('Invalid CSRF token');
    }

    $mailer = new MyClass();

   // Validate and sanitize inputs
$name = isset($_POST['name']) ? htmlspecialchars(trim($_POST['name']), ENT_QUOTES, 'UTF-8') : '';
$email = isset($_POST['email']) ? filter_var(trim($_POST['email']), FILTER_VALIDATE_EMAIL) : false;
$subject = isset($_POST['subject']) ? htmlspecialchars(trim($_POST['subject']), ENT_QUOTES, 'UTF-8') : '';
$message = isset($_POST['message']) ? nl2br(htmlspecialchars(trim($_POST['message']), ENT_QUOTES, 'UTF-8')) : '';

    // Validate required fields
    if (empty($name) || empty($email) || empty($subject) || empty($message)) {
        $_SESSION['mail_msg'] = 'All fields are required';
        header('Location: index.php');
        exit;
    }

    // Escape output for email body
    $escapedName = htmlspecialchars($name, ENT_QUOTES, 'UTF-8');
    $escapedEmail = htmlspecialchars($email, ENT_QUOTES, 'UTF-8');
    $escapedSubject = htmlspecialchars($subject, ENT_QUOTES, 'UTF-8');
    
    
     $adminEmail   = $_ENV['ADMIN_EMAIL'];
    $adminSubject = 'New message from portfolio contact form';
    $adminBody    = "
        <strong>From:</strong> {$escapedName}<br>
        <strong>Email:</strong> {$escapedEmail}<br>
        <strong>Subject:</strong> {$escapedSubject}<br>
        <strong>Message:</strong><br>{$message}
    ";
    
    if(!$serverdown) {
    // Prepare and insert into database
try {
    $stmt = $pdo->prepare("INSERT INTO message (name, email, subject, message, created_at) VALUES (:name, :email, :subject, :message, NOW())");
    $stmt->execute([
        ':name' => $name,
        ':email' => $email,
        ':subject' => $subject,
        ':message' => $message
    ]);
} catch (Exception $e) {
  error_log('Database Error: ' . $e->getMessage());
}
} else {
  $adminSubject = 'DB failed: New message from portfolio contact form';
    $adminBody    = "
    Couldn't save data to database.
    
        <strong>From:</strong> {$escapedName}<br>
        <strong>Email:</strong> {$escapedEmail}<br>
        <strong>Subject:</strong> {$escapedSubject}<br>
        <strong>Message:</strong><br>{$message}
    ";
  mail_logs("DB failed: " . strip_tags($adminBody));
}

    // Send to admin
    $sentToAdmin = $mailer->sendMail($adminEmail, $adminBody, $adminSubject);

    if ($sentToAdmin) {
        // Send auto-reply to user
        $userSubject = 'Thank you for your message!';
        $userBody    = "
            Dear {$escapedName},<br><br>
            Thank you for reaching out. I've received your message and will get back to you soon.<br><br>
            Best regards,<br>
            Muhammad Hafizur Rahman Sifat
        ";
        $mailer->sendMail($email, $userBody, $userSubject);

        $_SESSION['mail_msg'] = 'Message sent successfully!';
    } else {
        $_SESSION['mail_msg'] = 'Message send failed: ' . ($_SESSION['mailError'] ?? 'Unknown error');
    }

    // Redirect back to contact section
    header('Location: index.php');
    exit;
}
