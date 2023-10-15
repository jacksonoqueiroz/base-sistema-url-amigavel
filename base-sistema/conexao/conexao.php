<?php

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "db_controle_fichas";

try{
	$conn = new PDO("mysql:host=$host;dbname=" . $dbname, $user, $pass);
	//echo "Conectado com o banco!";
}catch(PDOException $err){
	echo "Erro: Não conectado! Erro: " . $err->getMessage();
}