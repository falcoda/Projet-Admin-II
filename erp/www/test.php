<?php
$conn = mysqli_connect('db', 'user', 'test', 'myDb', 3306);
mysqli_set_charset($conn, "utf8");
$query = 'SELECT * From Person';
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Demo</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
  <style>body{font-family:Nunito,sans-serif;min-height:90vh;align-items:center;justify-content:center;display:flex}</style>
</head>

<body>
  <p>
    <?php
    while ($value = $result->fetch_array(MYSQLI_ASSOC)) {
      foreach ($value as $element) {
        echo ' - ' . $element;
      }
    }
    $result->close();
    mysqli_close($conn);
    ?>
    -
  </p>
</body>

</html>