<?php
session_start();
require_once "connect.php";
$polaczenie1 = new mysqli($host, $db_user, $db_password, $db_name);

$user = $_SESSION['user'];

//echo $_SESSION['user'];

if ($polaczenie1->query("UPDATE uzytkownicy SET drewno=drewno-100, kamien=kamien-100, zboze=zboze-100 WHERE user='$user'"))
{
	header('Location: gra.php');
}
	
//echo "Rozbudowano Tartak!";
//echo "<a href='gra.php'>Powrót</a>"


//header('Location: gra.php');

$polaczenie1->close();
?>