<?php
	function servicesAll() : array{
		$sql = "SELECT * FROM services ORDER BY id ASC";
		$query = dbQuery($sql);
		return $query->fetchAll();
	}

	function servicesOne(int $id){
		$sql = "SELECT * FROM services WHERE id=:id";
		$query = dbQuery($sql, ['id' => $id]);
		return $query->fetch();
	}