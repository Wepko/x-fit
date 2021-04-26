<?php



	if($_SERVER['REQUEST_METHOD'] === 'POST'){
		$login = trim($_POST['login']);
		$password = trim($_POST['password']);
		$password2 = trim($_POST['password2']);
		$authErr = false;

		if($login != '' && $password != '' && $password2 != '') {

			if ($password2 == $password) {
				$is_addUser = usersAdd($login, $password);
				$content = template('auth/vin_reg');

				
				
			} else {
				$authErr = true;

			}
		}
	}
	else{
		$authErr = true;
		$pageTitle = 'Регистрация';
		$pageContent = template('auth/registration', ['authErr' => $authErr, 'content' => $content]);
	}



$pageTitle = 'Регистрация';
$pageContent = template('auth/registration', ['authErr' => $authErr, 'content' => $content]);
