<?php
	function tipsAll() : array{
		$sql = "SELECT * FROM tips ORDER BY id ASC";
		$query = dbQuery($sql);
		return $query->fetchAll();
	}

	function tipsOne(int $id){
		$sql = "SELECT * FROM tips WHERE id=:id";
		$query = dbQuery($sql, ['id' => $id]);
		return $query->fetch();
	}