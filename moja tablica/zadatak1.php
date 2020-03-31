<?php

$link = new mysqli('localhost', 'root', '', 'petarrumiha');
if($link === false)
{
    die("error" . mysqli_connect_error());
}
if($result = mysqli_query($link, "SELECT * FROM raspored4g"))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table align='center' border='1' width='5'>";
        echo "<tr>";
        echo "<th>Id</th>";
        echo "<th>Ponedjeljak</th>";
        echo "<th>Utorak</th>";
        echo "<th>Srijeda</th>";
        echo "<th>Četvrtak</th>";
        echo "<th>Petak</th>";
        echo "</tr>";
    }
}
while($row = mysqli_fetch_array($result))
{
    echo "<tr>";
    echo "<td>" . $row['Id'] .          "</td>";
    echo "<td>" . $row['Ponedjeljak'] . "</td>";
    echo "<td>" . $row['Utorak'] .      "</td>";
    echo "<td>" . $row['Srijeda'] .     "</td>";
    echo "<td>" . $row['Četvrtak'] .    "</td>";
    echo "<td>" . $row['Petak'] .       "</td>";
    echo "<tr>";
}
echo "</table>";
mysqli_free_result($result);

?>