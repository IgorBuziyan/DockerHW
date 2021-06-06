<?php
//phpinfo();
$pdo = new PDO('pgsql: dbname = docker; host = pgsql', 'root', 'secret');
var_dump($pdo);