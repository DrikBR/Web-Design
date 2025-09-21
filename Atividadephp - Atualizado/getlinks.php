<?php
@include "conn.php";

$id_user = 1;

$sql = "SELECT * FROM links l INNER JOIN usuario U ON u.idU = l.idU INNER JOIN configuracao c ON u.idU = c.idU WHERE u.idU = $id_user";

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