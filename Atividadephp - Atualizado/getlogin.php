<?php
@include "conn.php";

$data = json_decode( file_get_contents("php://input"), true );

$email = $data['email'];
$senha = $data["senha"];

$sql = "SELECT idU as has FROM usuario WHERE email = '$email' AND senha = '$senha'";

$result = $mysqli->query($sql);
if( $result ){
    $row = $result->fetch_assoc();
    if($row["has"] != 0){
        session_start();
        $_SESSION['idU'] = $row["has"];
    }
    echo json_encode($row);
}else{
    echo "error";
}


?>