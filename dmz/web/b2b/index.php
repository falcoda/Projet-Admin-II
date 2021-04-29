<?php
    $connexion = mysqli_connect('ip', 'user', 'mdp', 'myDb')or die('Erreur de connexion');
<<<<<<< HEAD
    //connexion à la base de donnée
=======
>>>>>>> 8dbd93c4ff3f2ef62b060c687cbc46062b611add
?>
<html lang = "fr">
	<head>
		<meta charset = "UTF-8">
		<title> site web b2b de Woodytoys </title>
	</head>

	<body>
		<h1> site web b2b de Woodytoys </h1>
		<?php
				$test = mysqli_query($connexion,'SELECT * FROM objets;'); //permet de tout sélectionner dans la table objets
			while($result = mysqli_fetch_row($test)) {
				 print '<p>Article : '.$result[0].'. Prix : '.$result[1].'€</p>'; //ajoute différents paragraphes
			};

            if(isset($_POST['submit'])) //si on a submit
            {
                $objet = $_POST['objet']; //assignation des valeurs du formulaire à des variables
                $prix = $_POST['prix'];

                $insert = mysqli_query($connexion,"INSERT INTO `objets`(`name`, `prix`) VALUES ('$objet','$prix')");
                //insertion dans la base de donnée

                if(!$insert)
                {
                    echo "erreur"; //affiche erreur si ça n'a pas pu ajouter dans la base de donnée
                }
                else
                {
                    echo "Donnée bien envoyez. Rechargez la page"; //affiche si les données ont été ajoutées

                }
            }
			 mysqli_close($connexion);
		?>
        <form method="POST"> <!-- formulaire d'insertion -->
            objet <input type="text" name="objet" placeholder="objet" Required>
            <br/>
            prix : <input type="number" name="prix" placeholder="prix" Required>
            <br/>
            <input type="submit" name="submit" value="Submit">
        </form>
	</body>
</html>
