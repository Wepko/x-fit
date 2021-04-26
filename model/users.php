<?php

	function usersById(string $id) : ?array{
		$sql = "SELECT id, login FROM users WHERE id=:id";
		$query = dbQuery($sql, ['id' => $id]);
		$user = $query->fetch();
		return $user === false ? null : $user;
	}

	function usersOne(string $login) : ?array{
		$sql = "SELECT id,password FROM users WHERE login=:login";
		$query = dbQuery($sql, ['login' => $login]);
		$user = $query->fetch();
		return $user === false ? null : $user;
	}

	function usersAdd(string $name, string $password, int $status = 0) : bool {
		$params = ['name' => $name, 'password' => $password, 'status' => $status];
		$sql = "INSERT users (login, password, status)  VALUES (:name, :password, :status)";
		dbQuery($sql, $params);
		return true;
	}
	function commentAdd(string $name, string $coment, int $id_trainer) : bool {
		$params = ['name' => $name, 'coment' => $coment, 'id_trainer' => $id_trainer];
		$sql = "INSERT comments (full_name, text, id_trainer) VALUES (:name, :coment, :id_trainer)";
		dbQuery($sql, $params);
		return true;
	}
