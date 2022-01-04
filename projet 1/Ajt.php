<?php
mysql_connect("localhost", "root","");
mysql_select_db("scolaire");

$a = $_POST["nom"];
$b = $_POST["code"];
$c = $_POST["adresse"];
$d = $_POST["num"];
$e = $_POST["Choix"];

$req1 = "INSERT INTO eleve VALUES ('$b', '$a','$c','$d','$e')";
mysql_query($req1);

echo "<p align= 'center'> <b><font size='7' color='blue' face='Kunstler Script'>
L'enregistrement a été effectué</font></b></p>";

mysql_close()
?>