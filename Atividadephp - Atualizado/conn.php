<?php

$host = "localhost";
$usuario = "root";
$senha = "28012005";
$banco = "linktree";

$mysqli = new mysqli($host, $usuario, $senha, $banco);
$mysqli->set_charset("utf8");

if($mysqli->connect_errno) {
    echo "Erro de conexão";
    exit();
}

return;
?>