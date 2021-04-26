<?php 

	$contents = servicesAll();
	$pageTitle = 'Услуги';
	$pageContent = template('services/all', [
	'title' => $pageTitle,
	'contents' => $contents,
]);
