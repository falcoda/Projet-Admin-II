<?php
    $connexion = mysqli_connect('192.168.8.4:3306', 'Utilisateur', 'Mot de passe', 'myDb')or die('Erreur de connexion');
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
			 mysqli_close($connexion);
		?>
	</body>
</html>
