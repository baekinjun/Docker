<?php
    $conn=mysqli_connect(
        'docker-mysql-test.cfhpxw7jhdhj.ap-northeast-2.rds.amazonaws.com',
        'user',
        'qordls741',
        'TEST',
        '3306'
    );
    if(mysqli_connect_errno()){
        echo "Faiied to connect to MYSQL:".mysqli_connect_error();
    }
    $sql="SELECT VERSION()";
    $result=mysqli_query($conn, $sql);
    $row=mysqli_fetch_array($result);
    print_r($row["VERSION()"]);
?>