<?php

session_start();

const HOST = 'http://localhost';
const BASE_URL = '/';

const DB_HOST = 'localhost';
const DB_NAME = 'x-fit';
const DB_USER = 'root';
const DB_PASS = 'root';


include_once('core/db.php');
include_once('core/system.php');
include_once('core/auth.php');

include_once('model/trening.php');
include_once('model/services.php');
include_once('model/tips.php');
include_once('model/users.php');
include_once('model/office.php');


$user = authGetUser();
$count = countVisitSite();

$uri = $_SERVER['REQUEST_URI'];

if(false){
	$cname = 'error404';
}
else{
	$routes = include('core/routes.php');
	$url = $_GET['querysystemurl'] ?? '';

	$routerRes = parseUrl($url, $routes);
	$cname = $routerRes['controller'];
	define('URL_PARAMS', $routerRes['params']);

	$urlLen = strlen($url);

	if($urlLen > 0 && $url[$urlLen - 1] == '/'){
		$url = substr($url, 0, $urlLen - 1);
	}
}

$path = "controller/$cname.php";
$pageTitle = $pageContent = '';

if(!file_exists($path)){
	$cname = 'error404';
	$path = "controller/$cname.php";
}

include_once($path);

$html = template('base/main', [
	'title' => $pageTitle,
	'content' => $pageContent,
	'counter' => $count
]);


echo $html;