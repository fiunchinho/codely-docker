<?php

require_once __DIR__ . '/vendor/autoload.php';

$connectionParams = [
    'dbname'    => 'codelytv_pro',
    'user'      => getenv('MYSQL_USER'),
    'password'  => getenv('MYSQL_PASSWORD'),
    'host'      => getenv('MYSQL_HOST'),
    'driver'    => 'pdo_mysql',
];

$config = new \Doctrine\DBAL\Configuration();
$connection = \Doctrine\DBAL\DriverManager::getConnection($connectionParams, $config);

$users = $connection->fetchAll("SELECT id, name, lastname FROM users");

var_dump($users);
