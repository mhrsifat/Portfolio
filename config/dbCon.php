<?php

require_once __DIR__ . '/../vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/..');
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
        $this->host = $_ENV['DB_HOST'];
        $this->db_name = $_ENV['DB_NAME'];
        $this->username = $_ENV['DB_USER'];
        $this->password = $_ENV['DB_PASS'];
    }

    public function dbConnection()
    {
        $this->conn = null;

        try 
        {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name . ";charset=utf8mb4",
                $this->username,
                $this->password
            );
        } 
        catch (PDOException $exception) 
        {
            $this->serverdown = true;
        }

        return $this->conn;
    } 
}


?>
