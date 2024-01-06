<?php
/***********************************************
 * PROMOTION  โปรโมชั่น
 ***********************************************/

 $route['api/v1/promotion']['get'] = 'api/v1/promotion/index';
 $route['api/v1/promotion/fetch_dt']['get'] = 'api/v1/promotion/fetch_dt';
 $route['api/v1/promotion/status/active']['get'] = 'api/v1/promotion/all_active';
 $route['api/v1/promotion/status/inactive']['get'] = 'api/v1/promotion/all_inactive';
 $route['api/v1/promotion']['post'] = 'api/promotion/save';
 $route['api/v1/promotion/(:num)']['get'] = 'api/v1/promotion/view/$1';
 $route['api/v1/promotion/(:num)']['post'] = 'api/v1/promotion/update/$1';
 $route['api/v1/promotion/(:num)']['put'] = 'api/v1/promotion/update/$1';
 
 $route['api/v1/promotion/(:num)']['delete'] = 'api/v1/promotion/disable/$1';
 $route['api/v1/promotion/(:num)/disable']['post'] = 'api/v1/promotion/disable/$1';
 $route['api/v1/promotion/(:num)/status']['put'] = 'api/v1/promotion/set-status/$1';
 $route['api/v1/promotion/validateVoucher']['post'] = 'api/v1/promotion/validateVoucher';