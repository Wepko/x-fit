<?php 

	$id = URL_PARAMS['id'];
	$trainers = treningOne($id);
	$comments = treningOneTip($id);
	$hasMsg = $trainers !== false; 
	if ($hasMsg) {
			$pageTitle = 'Персональный тренир';
			$pageContent = template('trening/personal_trening', [
			'title' => $pageTitle,
			'trainers' => $trainers,
			'comments' => $comments
		]);
	} else {
		$pageContent = template('404');
	}
	


	if ($_SERVER['REQUEST_METHOD'] === 'POST') {
		$name = $_POST['name'];
		$comment = $_POST['comment'];
		$id_traning = $_POST['id_traning'];
		commentAdd($name, $comment, $id_traning);

		header('Location: ' . BASE_URL. "/trening/$id_traning");
		exit();
	}



