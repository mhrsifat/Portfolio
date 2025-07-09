<?php
header('Content-Type: application/json');
require "config/dbCon.php";
session_start();

if (empty($_POST['id']) || !is_numeric($_POST['id'])) {
  echo json_encode(['success'=>false,'message'=>'Invalid ID']);
  exit;
}

$postId = (int)$_POST['id'];

try {
    $cl = new Confi();
    $pdo = $cl->dbConnection();

    // Increment the real_views for this blog_id
    $stmt = $pdo->prepare("
      UPDATE `views`
         SET `real_views` = `real_views` + 1
       WHERE `blog_id` = :id
    ");
    $stmt->execute([':id' => $postId]);

    // Optionally fetch the new total
    $fetch = $pdo->prepare("
      SELECT initial_view + real_views AS total_views
        FROM views
       WHERE blog_id = :id
    ");
    $fetch->execute([':id' => $postId]);
    $total = (int)$fetch->fetchColumn();

    echo json_encode(['success'=>true,'total_views'=>$total]);

} catch (Exception $e) {
    echo json_encode(['success'=>false,'message'=>'DB Error']);
}
