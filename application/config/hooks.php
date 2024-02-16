<?php


defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/hooks.html
|
*/


use Recca0120\LaravelBridge\Laravel;



// $dotenv = \Dotenv\Dotenv::createImmutable(FCPATH);
// $dotenv->load();

require_once __DIR__ . '/database.php';

$connections = [];
foreach ($db as $key => $options) {
    $dbdriver = $options['dbdriver'];
    $dbdriver = ($dbdriver === 'mysqli') ? 'mysql' : $dbdriver;
    $connections[$key] = [
        'driver' => "mysql",
        'host' => $options['hostname'],
        'port' =>  $options['port'],
        'database' => $options['database'],
        'username' => $options['username'],
        'password' => $options['password'],
        'charset' => $options['char_set'],
        'collation' => $options['dbcollat'],
        'prefix' => $options['swap_pre'],
        'strict' => $options['stricton'],
        'engine' => null,
        'options' => array(
            \PDO::ATTR_CASE => \PDO::CASE_LOWER,
        ),
    ];
}

$viewPath = __DIR__ . '/../views/';
$viewCompiledPath = __DIR__ . '/../cache/compiled/';

if (is_dir($viewCompiledPath) === false) {
    mkdir($viewCompiledPath, 0777);
}

Laravel::instance()
    ->setupView($viewPath, $viewCompiledPath)
    ->setupDatabase($connections, 'default')
    ->setupPagination();
    // ->setupTracy([
    //     'showBar' => true
    // ]);
