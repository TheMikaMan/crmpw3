<?php
session_start();
if(!isset($_SESSION['username'])) {
	header("location: admin.php");
	}
	else {
session_destroy();
	header("location: login.php") ;
	}
	?>
