<?php


	if($_SERVER['REQUEST_METHOD'] === 'POST'){
		$name = trim($_POST['name']);
		$phone = trim($_POST['phone']);
		$club = trim($_POST['club']);
		$id_user = $_SESSION['user']['id'];

		if($name != '' && $phone != '' && $club != ''){
			orderAdd($name, $phone, $club, $id_user);
			$_SESSION['sent'] = 1;
			header('Location: ' . BASE_URL . "office/subscription");
			exit();
		} 
	}

	if (isset($_SESSION['user'])) {
		$users = usersById($_SESSION['user']['id']);
	}

	$pageTitle = 'Оформить абонемент';
	$pageContent = template('base/menu', [
		'content' => template('office/subscription', ['sent' => $sent])
 	]);