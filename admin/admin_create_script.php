<?php
require_once __DIR__ . '/../config/dbCon.php';
try {
	$cl = new Confi();
	$conn = $cl->dbConnection();
	$username = 'admin';
	$email = 'admin@gmail.com';
	$password = 'your password here';


	//don't change this
	$pas = password_hash($password, PASSWORD_DEFAULT);
	$sql = "INSERT INTO admin (username, email, pass, status) VALUES (:uname, :email, :pass, 'active')";

	$stmt = $conn->prepare($sql);
	$stmt->execute([

		':uname' => $username,
		':email' => $email,
		':pass' => $pas
	]);

	echo "Admin user created successfully";
} catch (PDOException $e) {
	echo "DB Error:" . $e->getMessage();
}
