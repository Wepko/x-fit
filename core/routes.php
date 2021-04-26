<?php

return (function(){
	$intGT0 = '[1-9]+\d*';
	$normUrl = '[0-9aA-zZ_-]+';

	return [
		[
			'test' => '/^$/',
			'controller' => 'index'
		],
		[
			'test' => '/^indxe\.php\/?$/',
			'controller' => 'index'
		],
		[
			'test' => '/^trening\/?$/',
			'controller' => 'trening/all'
		],
		[
			'test' => "/^trening\/($intGT0)\/?$/",
			'controller' => 'trening/one',
			'params' => ['id' => 1]
		],
		[
			'test' => '/^services\/?$/',
			'controller' => 'services/all'
		],
		[
			'test' => "/^services\/($intGT0)\/?$/",
			'controller' => 'services/one',
			'params' => ['id' => 1]
		],
		[
			'test' => '/^tips\/?$/',
			'controller' => 'tips/all'
		],
		[
			'test' => "/^tips\/($intGT0)\/?$/",
			'controller' => 'tips/one',
			'params' => ['id' => 1]
		],
		[
			'test' => '/^branches\/?$/',
			'controller' => 'branches'
		],
		[
			'test' => '/^vacancy\/?$/',
			'controller' => 'vacancy'
		],
		[
			'test' => '/^club_card\/?$/',
			'controller' => 'club_card'
		],
		[
			'test' => '/^about_us\/?$/',
			'controller' => 'about_us'
		],
		[
			'test' => '/^contact\/?$/',
			'controller' => 'contact'
		],
		[
			'test' => '/^requisit\/?$/',
			'controller' => 'requisit'
		],
		[
			'test' => "/^auth\/login\/?$/",
			'controller' => 'auth/login'
		],
		[
			'test' => "/^auth\/registration\/?$/",
			'controller' => 'auth/registration'
		],
		[
			'test' => "/^office\/private_office\/?$/",
			'controller' => 'office/private_office'
		],
		[
			'test' => "/^office\/subscription\/?$/",
			'controller' => 'office/subscription'
		],
		[
			'test' => "/^office\/logout\/?$/",
			'controller' => 'office/exit_office'
		],
	];
})();