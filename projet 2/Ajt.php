<?php
mysql_connect("localhost", "root","");
mysql_select_db("inscription");

$a = $_POST["nom"];
$b = $_POST["prenom"];
$c = $_POST["adresse"];
$d = $_POST["mdp"];
$e = $_POST["cmdp"];
$f = $_POST["num"];
$g = $_POST["Choix"];

if ($d != $e){
	echo"<p align= 'center'> <b><font size='7' color='red' face='Kunstler Script'>
	Le mot de passe est incorrecte</font></b></p>";

}

else {
	$req1 = "INSERT INTO clients VALUES ('$b', '$a','$c','$d','$f','$g')";
	mysql_query($req1);

	echo "<p align= 'center'> <b><font size='7' color='blue' face='Kunstler Script'>
	L'enregistrement a été effectué</font></b></p>";
}
mysql_close()
?>