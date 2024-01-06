<?php

/***********************************************
 * role and permission
 ***********************************************/
$route['api/v2/roles'] = 'api/v2/role/index';
$route['api/v2/roles/(:any)'] = 'api/v2/role/view/$1';
$route['api/v2/roles/(:any)/permissions'] = 'api/v2/role/permissions/$1';
$route['api/v2/roles/user/(:num)'] = 'api/v2/role/user_permissions/$1';


$route['api/v2/permissions'] = 'api/v2/permission/index';
$route['api/v2/permissions/(:any)'] = 'api/v2/permission/view/$1';


