<?php
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
require("vendor/autoload.php");
// $openapi = \OpenApi\Generator::scan(['/application/controllers/']);
// $openapi = \OpenApi\Generator::scan($_SERVER['DOCUMENT_ROOT'].'/application/controllers/');
$openapi = \OpenApi\Generator::scan(['./application/modules/api/controllers/v2/']);
header('Content-Type: application/json');
echo $openapi->toJSON();
