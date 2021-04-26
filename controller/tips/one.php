<?php 
	$id = URL_PARAMS['id'];
	$content = tipsOne($id);

	$hasMsg = $content !== false; 
	if ($hasMsg) {
			$pageTitle = 'Совтеы клиентам';
			$pageContent = template('tips/one', [
			'title' => $pageTitle,
			'content' => $content,
		]);
	} else {
		$pageContent = template('404');
	}
	