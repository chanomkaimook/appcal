<?php



/***********************************************
 * INVOICE
 ***********************************************/
$route['api/v1/invoice']['get']                         = 'api/v1/invoice/index';
$route['api/v1/invoice/fetch_dt']['get']                = 'api/v1/invoice/fetch_dt';
$route['api/v1/invoice/list/(:num)']['get']                  = 'api/v1/invoice/list/$1';
$route['api/v1/invoice/(:num)']['get']                  = 'api/v1/invoice/view/$1';
$route['api/v1/invoice/form/(:num)']['get']                  = 'api/v1/invoice/get_workOrder/$1';
// $route['customer/invoice/view/(:num)']['get']                  = 'customer/invoice/view/$1';
$route['api/v1/invoice/insert_item']['post']                  = 'api/v1/invoice/insert_item/';
