<?php
{
    $link = mysqli_connect("localhost", "root", "", "sakila");
    if (!$link)
    {
        echo "Došlo je do greške kod povezivanja.";
        exit;
    }
    else
    {
        $unos = $_POST["upit"];
        $odabir = "SELECT * FROM `actor` WHERE first_name = \"" . "$unos" . "\"";
        if ($result = mysqli_query($link, $odabir))
        {
            if(mysqli_num_rows($result) > 0)
            {
                echo "Rezultati pretrage: " . mysqli_num_rows($result);
                echo "<br>";
                echo "<table align='center' border='1' width='5'>";
                echo "<tr>";
                echo "<td>"."Ime"."</td>";
                echo "<td>" ."Prezime". "</td>";
                echo "<td>" . "Id" . "</td>";
                echo "<tr>";

                while($row = mysqli_fetch_array($result))
                {
                    echo "<tr>";
                    echo "<td>" . $row['first_name'] ."\t". "</td>";
                    echo "<td>" . $row['last_name'] . "</td>";
                    echo "<td>" . $row['actor_id'] . "</td>";
                    echo "<tr>";

                }
                echo "</table>";
                mysqli_free_result($result);
            }
        }
    }
}
?>