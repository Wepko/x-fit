<?php

function template(string $path, array $vars = []) : string {
	$systemTemplateRenererIntoFullPath = "views/$path.php"; 
	extract($vars);
	ob_start();
	include($systemTemplateRenererIntoFullPath);
	return ob_get_clean();
}

function parseUrl(string $url, array $routes) : array{
	$res = [
		'controller' => 'errors/e404',
		'params' => []
	];
	
	foreach($routes as $route){
		$matches = [];

		if(preg_match($route['test'], $url, $matches)){
			$res['controller'] = $route['controller'];

			if(isset($route['params'])){
				foreach($route['params'] as $name => $num){
					$res['params'][$name] = $matches[$num];
				}
			}

			break;
		}
	}
	// find route, parse params

	return $res;
}

function countVisitSite() {
	$count = intval(file_get_contents('counter.dat'));
	file_put_contents('counter.dat' , ++$count);
	$count = round($count / 5);
	return $count;
}