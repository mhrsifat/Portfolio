<?php

require_once __DIR__ . '/../vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

class Confi 
{
	private $host =  $_ENV['DB_HOST'];
	private $db_name = $_ENV['DB_NAME'];
	private $username = $_ENV['DB_USER'];
	private $password = $_ENV['DB_PASS'];

	public $conn;
	public $serverdown = false;
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
			//echo "Connection Error:".$exception->getMessage();
			$this->serverdown = true;
			//exit;
		}

		return $this->conn;
	} 
}


?>
