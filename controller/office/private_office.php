<?php
	if (isset($_SESSION['user'])) {
		$users = usersById($_SESSION['user']['id']);
	}

	$pageTitle = 'Личный кабинет';
	$pageContent = template('base/menu', [
		'content' => template('office/private_office', ['users' => $users])
 	]);