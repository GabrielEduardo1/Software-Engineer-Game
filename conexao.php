<?php
    $servidor = "localhost";
    $usuario = "root";
    $senha = "root1234";
    $banco = "engineer_software";
    $conecta = mysqli_connect($servidor, $usuario, $senha, $banco);
    if(mysqli_connect_errno($conecta)){
        die("Conexão falhou");
    }
?>