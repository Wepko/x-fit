<?php 
	$form = template('auth/login');
	$pageTitle = 'Главная';
	$pageContent = template('index', ['form' => $form]);