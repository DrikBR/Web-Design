<?php
@include "conn.php";

$id_user = 1;

$sql = "SELECT * FROM links l INNER JOIN usuario U ON u.idU = l.idU WHERE u.idU = $id_user";

$result = $mysqli->query($sql);

if($result) {
    $arr = [];
    while($row = $result->fetch_assoc()) {
        array_push($arr, $row);
    }
}

else {
    echo "erro";
}

$id_user2 = 2;

$sql2 = "SELECT * FROM links l INNER JOIN usuario U ON u.idU = l.idU WHERE u.idU = $id_user2";

$result2 = $mysqli->query($sql2);

if($result2) {
    $arr2 = [];
    while($row2 = $result2->fetch_assoc()) {
        array_push($arr2, $row2);
    }
}

else {
    echo "erro";
}

echo json_encode ([
    "user1" => $arr,
    "user2" => $arr2]);
?>