<?php

function orderAdd(string $name, string $phone, string $club, int $id_user) : bool {
	$params = ['name' => $name, 'phone' => $phone, 'club' => $club, 'id_user' => $id_user ];
	$sql = "INSERT order_abonnement (name, phone, club, id_user)  VALUES (:name, :phone, :club, :id_user)";
	dbQuery($sql, $params);
	return true;
}

function sent(int $id) : ?array {
	$sql = "SELECT id_user FROM order_abonnement WHERE id_user=:id";
	$query = dbQuery($sql, ['id' => $id]);
	$user = $query->fetch();
	return $user === false ? null : $user;
}
