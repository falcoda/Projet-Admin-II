<?php
    $connexion = mysqli_connect('192.168.8.4:3306', 'coda', 'test', 'myDb')or die('Erreur de connexion');
?>
<html>
    <head>
    </head>
        <body>
                <h1> ERP </h1>
            <?php
                    $test = mysqli_query($connexion,'SELECT * FROM objets;');
                while($result = mysqli_fetch_row($test)) {
                     print '<div>Titre : '.$result[1].'. Prix : '.$result[2].'</div>';
                };
                 mysqli_close($connexion);
            ?>
        </body>
</html>