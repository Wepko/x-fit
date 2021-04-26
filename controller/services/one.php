<?php 
	$id = URL_PARAMS['id'];
	$content = servicesOne($id);

	$hasMsg = $content !== false; 
	if ($hasMsg) {
			$pageTitle = 'Услуга';
			$pageContent = template('services/one', [
			'title' => $pageTitle,
			'content' => $content,
		]);
	} else {
		$pageContent = template('404');
	}
	
