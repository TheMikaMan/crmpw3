<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Register</title>
	</head>
    <style>
* {
  	box-sizing: border-box;
  	font-family: -apple-system, BlinkMacSystemFont, "segoe ui", roboto, oxygen, ubuntu, cantarell, "fira sans", "droid sans", "helvetica neue", Arial, sans-serif;
  	font-size: 16px;
  	-webkit-font-smoothing: antialiased;
  	-moz-osx-font-smoothing: grayscale;
}
body {
  	background-color: #435165;
  	margin: 0;
}
.register {
  	width: 400px;
  	background-color: #ffffff;
  	box-shadow: 0 0 9px 0 rgba(0, 0, 0, 0.3);
  	margin: 100px auto;
}
.register h1 {
  	text-align: center;
  	color: #5b6574;
  	font-size: 24px;
  	padding: 20px 0 20px 0;
  	border-bottom: 1px solid #dee0e4;
}
.register form {
  	display: flex;
  	flex-wrap: wrap;
  	justify-content: center;
  	padding-top: 20px;
}
.register form label {
  	display: flex;
  	justify-content: center;
  	align-items: center;
  	width: 50px;
 	height: 50px;
  	background-color: #3274d6;
  	color: #ffffff;
}
.register form input[type="password"], .register form input[type="text"], .register form input[type="email"] {
  	width: 310px;
  	height: 50px;
  	border: 1px solid #dee0e4;
  	margin-bottom: 20px;
  	padding: 0 15px;
}
.register form input[type="submit"] {
  	width: 100%;
  	padding: 15px;
  	margin-top: 20px;
  	background-color: #3274d6;
 	border: 0;
  	cursor: pointer;
  	font-weight: bold;
  	color: #ffffff;
  	transition: background-color 0.2s;
}
.register form input[type="submit"]:hover {
	background-color: #2868c7;
  	transition: background-color 0.2s;
}
    </style>
	<body>
		<div class="register">
			<h1>Registreren</h1>
			<form action="register.php" method="post" autocomplete="off">
				<label for="username">
					<i class="fas fa-user"></i>
				</label>
				<input type="text" name="Naam" placeholder="Naam" id="username" required>
				<label for="password">
					<i class="fas fa-lock"></i>
				</label>
                <input type="text" name="Tussenvoegsel" placeholder="Tussenvoegsel" id="username" >

                <label for="achternaam">
				</label>
				<input type="text" name="Achternaam" placeholder="Achternaam" id="password" required>

                <label for="telefoonnummer">
				</label>
				<input type="text" name="Telefoonnummer" placeholder="Telefoonnummer" id="password" required>

                <label for="email">
					<i class="fas fa-envelope"></i>
				</label>
				<input type="email" name="email" placeholder="Email" id="email" required>

                <label for="password">
				</label>
				<input type="password" name="Wachtwoord" placeholder="Wachtwoord" id="password" required>

				<input type="submit" value="Registreren">
			</form>
		</div>
	</body>
</html>