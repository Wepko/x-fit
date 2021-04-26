<?php 
	$contents = tipsAll();
	$pageTitle = 'Советы клиентам';
	$pageContent = template('tips/all', [
	'title' => $pageTitle,
	'contents' => $contents,
]);
