<?php
echo "Hello World From Php";


$pdo = new PDO('mysql:dbname=init_db;host=mysql:3306', 'root', 'root');
$databases = $pdo->query('SHOW TABLES')->fetch(PDO::FETCH_ASSOC);
print_r($databases);

phpinfo();
