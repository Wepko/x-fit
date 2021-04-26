<?php 

	$trainers = treningAll();
	$tips = tipsAll();
	$pageTitle = 'Тренира';
	$pageContent = template('trening/all', [
	'title' => $pageTitle,
	'trainers' => $trainers,
	'tips' => $tips
]);
