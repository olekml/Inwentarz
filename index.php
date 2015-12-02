<?php
	require_once('libs/inwentarz.php');
	$inwentarz = new Inwentarz();
?>
<!docType html>
<html lang="pl">
	<head>
		<meta charset="utf-8">
		<meta name="author" content="Dawid Tomas">
		<title>Inwentarz sprzętu komputerowego</title>
        <link rel="stylesheet" type="text/css" href="css/powiadomienia.css">
		<link rel="stylesheet" type="text/css" href="css/logowanie.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

        <script src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="tekst">
			<p>Inwentarz sprzętu komputerowego szkoły: <?php $inwentarz->nazwaSzkoly(); ?></p>
		</div>
		<section class="logowanie">
			<div class="tytul">Logowanie użytkownika</div>
			<form name="logowanie-inwentarz"  action="index.php" method="post">
				<input type="text" name="login" required title="Login wymagany!" placeholder="Login" data-icon="U">
				<input type="password" name="haslo" required title="Wymagane hasło!" placeholder="Hasło" data-icon="x">
				<input type="submit" name="zaloguj" value="Zaloguj" class="loguj">
			</form>
		</section>
        <?php $inwentarz->logowanie(); ?>
		<?php
            include('footer.php');
        ?>
	</body>
</html>