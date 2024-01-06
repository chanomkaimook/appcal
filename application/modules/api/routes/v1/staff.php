<?php

/***********************************************
 * Staff
 ***********************************************/

$route['api/v1/staff'] = 'api/v1/staff/list';
$route['api/v1/staff/(:num)'] = 'api/v1/staff/view/$1';
$route['api/v1/staff/code/(:any)'] = 'api/v1/staff/viewByCode/$1';

