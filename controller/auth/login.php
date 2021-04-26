<?php

	if($_SERVER['REQUEST_METHOD'] === 'POST'){
		$login = trim($_POST['login']);
		$password = trim($_POST['password']);
		$authErr = true;

		if($login != '' && $password != ''){
			$user = usersOne($login);

			if($user !== null && $user['password'] == $password){
				$_SESSION['user'] = $user;
				
				$data_sent = sent($user['id']);

				if (empty($data_sent)) {
					$_SESSION['sent'] = 0;
				} else {
					$_SESSION['sent'] = 1;
				}

				header('Location: ' . BASE_URL . "office/private_office");
				exit();
			} else {
				$authErr = 'Ошибка такого пользователя нет или пароли не совпадают';
			} 
		} else {
			$authErr = 'Ошибка пустые поля';
		}
	}


	$pageTitle = 'Login';
	$pageContent = template('auth/login', ['authErr' => $authErr]);
