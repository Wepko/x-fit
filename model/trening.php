<?php
	function treningAll() : array{
		$sql = "SELECT * FROM trainers ORDER BY id ASC";
		$query = dbQuery($sql);
		return $query->fetchAll();
	}

	function treningOne(int $id){
		$sql = "SELECT * FROM trainers WHERE id=:id";
		$query = dbQuery($sql, ['id' => $id]);
		return $query->fetch();
	}

	function treningOneTip($id) {
		$sql = "SELECT comments.* FROM `comments` JOIN trainers on trainers.id = comments.id_trainer WHERE trainers.id = :id";
		$query = dbQuery($sql, ['id' => $id]);
		return $query->fetchAll();
	}
/*
	function messagesAdd(array $fields) : bool{
		$sql = "INSERT messages (name, text) VALUES (:name, :text)";
		dbQuery($sql, $fields);
		return true;
	}

	function messagesValidate(array &$fields) : array{
		$errors = [];
		$textLen = mb_strlen($fields['text'], 'UTF-8');

		if(mb_strlen($fields['name'], 'UTF-8') < 2){
			$errors[] = 'Имя не короче 2 символов!';
		}

		if($textLen < 10 || $textLen > 140){
			$errors[] = 'Текст от 10 до 140 символов!';
		}

		$fields['name'] = htmlspecialchars($fields['name']);
		$fields['text'] = htmlspecialchars($fields['text']);

		return $errors;
	}*/