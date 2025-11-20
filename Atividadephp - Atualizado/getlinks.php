<?php
@include "conn.php";
session_start();

if($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = $_POST['nomeU'] ?? '';
    $senha = $_POST['senha'] ?? '';
    
    $_SESSION['nomeU'] = $nome;
    $_SESSION['senha'] = $senha;
}

$nome = $_SESSION['nomeU'] ?? '';
$senha = $_SESSION['senha'] ?? '';

$sql = "SELECT * FROM links l INNER JOIN usuario U ON u.idU = l.idU INNER JOIN configuracao c ON u.idU = c.idU WHERE u.senha = '$senha' and u.nomeU = '$nome'";

$result = $mysqli->query($sql);

if($result) {
    $arr = [];
    while($row = $result->fetch_assoc()) {
        array_push($arr, $row);
    }
    echo json_encode ($arr);
}

else {
    echo "erro";
}
?>