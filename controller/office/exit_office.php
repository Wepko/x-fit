<?php
	session_destroy();

	header('Location: ' . BASE_URL . "auth/login");
	exit();
?>