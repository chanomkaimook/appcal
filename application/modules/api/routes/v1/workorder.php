<?php

/***********************************************
 * WORK ORDER
 ***********************************************/
$route['api/v1/workorder']['get']                      = 'api/v1/workorder/index';
$route['api/v1/workorder/fetch_dt']['get']             = 'api/v1/workorder/fetch_dt';
$route['api/v1/workorder/(:num)/receive_date']['post']               = 'api/v1/workorder/update_receive_date/$1';
$route['api/v1/workorder/(:num)']['get']               = 'api/v1/workorder/view_task/$1';

// $route['api/v1/workorder/fetch_addTracking']['post']   = 'api/workorder/fetch_addTracking';
$route['api/v1/workorder/set_tracking_status']['post'] = 'api/v1/workorder/set_tracking_status';

$route['api/v1/certificate']['get']               = 'api/v1/workorder/certificate';
$route['api/v1/certificate/(:num)']['get']               = 'api/v1/workorder/view_certificate/$1';




