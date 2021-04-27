<?php
    $connexion = mysqli_connect('135.125.101.214:3306', 'root', 'test', 'myDb')or die('Erreur de connexion');
?>
<html lang = "fr">
	<head>
		<meta charset = "UTF-8">
		<title> site web b2b de Woodytoys </title>
	</head>

	<body>
		<h1> site web b2b de Woodytoys </h1>
		<?php
				$test = mysqli_query($connexion,'SELECT * FROM objets;');
			while($result = mysqli_fetch_row($test)) {
				 print '<p>Article : '.$result[0].'. Prix : '.$result[1].'€</p>';
			};

            if(isset($_POST['submit']))
            {
                $objet = $_POST['objet'];
                $prix = $_POST['prix'];

                $insert = mysqli_query($connexion,"INSERT INTO `objets`(`name`, `prix`) VALUES ('$objet','$prix')");

                if(!$insert)
                {
                    echo "erreur";
                }
                else
                {
                    echo "Donnée bien envoyez. Rechargez la page";

                }
            }
			 mysqli_close($connexion);
		?>
        <form method="POST">
            objet <input type="text" name="objet" placeholder="objet" Required>
            <br/>
            prix : <input type="number" name="prix" placeholder="prix" Required>
            <br/>
            <input type="submit" name="submit" value="Submit">
        </form>
	</body>
</html>