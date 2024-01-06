<?php

/***********************************************
 * LAB && SUB LAP  สถานีหลัก/สถานีย่อย
 ***********************************************/

# [GET] สถานะหลัก/ห้องแล็บหลัก
$route['api/v1/lab'] = 'api/v1/lab/list_lab';
$route['api/v1/lab/lab/(:num)'] = 'api/v1/lab/view_lab/$1';
$route['api/v1/lab/(:num)/sublab'] = 'api/v1/lab/list_sublab_by_lab/$1';

# [GET] สถานีย่อย/ห้องแล็บย่อย
$route['api/v1/lab/sublab'] = 'api/v1/lab/list_sublab';
$route['api/v1/lab/sublab/(:num)'] = 'api/v1/lab/view_sublab/$1';
