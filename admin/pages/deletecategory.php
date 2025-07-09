<?php
require_once __DIR__ . '/../class.user.php';
session_start();

header('Content-Type: application/json');

if (!isset($_POST['csrf_token']) || $_POST['csrf_token'] !== $_SESSION['csrf_token']) {
    echo json_encode(['success' => false, 'message' => 'Invalid CSRF token.']);
    exit;
}

if (!isset($_POST['catId']) || !is_numeric($_POST['catId'])) {
    echo json_encode(['success' => false, 'message' => 'Invalid category ID.']);
    exit;
}

$catId = (int) $_POST['catId'];

try {
    $user = new USER();
    $pdo = $user->getConnection();
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->prepare("DELETE FROM category WHERE id = :id");  
    $stmt->execute([':id' => $catId]);

    if ($stmt->rowCount() > 0) {
        echo json_encode(['success' => true, 'message' => 'Category deleted successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Category not found or already deleted.']);
    }

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $e->getMessage()]);
}
