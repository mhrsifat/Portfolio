<?php
require_once DIR . '/../vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(DIR . '/..');
$dotenv->load();

class Confi 
{
    private $host;
    private $db_name;
    private $username;
    private $password;

    public $conn;
    public $serverdown = false;

    public function __construct()
    {
        // Use environment variables from .env file
        $this->host     = $_ENV['DB_HOST'] ?? '127.0.0.1';
        $this->db_name  = $_ENV['DB_DATABASE'] ?? 'portfolio';
        $this->username = $_ENV['DB_USERNAME'] ?? 'root';
        $this->password = $_ENV['DB_PASSWORD'] ?? '';
    }

    public function dbConnection()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name . ";charset=utf8mb4",
                $this->username,
                $this->password
            );
        } catch (PDOException $exception) {
            $this->serverdown = true;
        }

        return $this->conn;
    }
}
?>
