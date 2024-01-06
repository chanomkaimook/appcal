<?php
/***********************************************
 * ใบขอรับบริการ (ยังไม่ได้สร้าง)
 ***********************************************/

#ดูรายละเอียดใบขอรับบริการ จาก ID
$route['api/v1/bill']['get'] = 'api/v1/bill/list';
$route['api/v1/bill/search']['get'] = 'api/v1/bill/search';
$route['api/v1/bill/mylabs']['get'] = 'api/v1/bill/mylabs';
$route['api/v1/bill/list']['get'] = 'api/v1/bill/list';
$route['api/v1/bill/(:num)']['get'] = 'api/v1/bill/view/$1';
$route['api/v1/bill/(:num)/labs']['get'] = 'api/v1/bill/labs/$1';
$route['api/v1/bill/code/(:any)']['get'] = 'api/v1/bill/code/$1';
$route['api/v1/bill/(:num)/items']['get'] = 'api/v1/bill/items/$1';
$route['api/v1/bill/list_labs']['get'] = 'api/v1/bill/list_labs';
$route['api/v1/bill/progress-status']['get'] = 'api/v1/bill/progress_status';
$route['api/v1/bill/(:num)/progress-status']['post'] = 'api/v1/bill/set_progress_status/$1';
$route['api/v1/bill/(:num)/progress-complete']['post'] = 'api/v1/bill/set_progress_complete/$1';
$route['api/v1/bill/item/tracking-status']['get'] = 'api/v1/bill/tracking_status';
$route['api/v1/bill/item/(:num)/tracking-status']['post'] = 'api/v1/bill/set_tracking_status/$1';
$route['api/v1/bill/item/(:num)/tracking-complete']['post'] = 'api/v1/bill/set_tracking_complete/$1';

#ดูข้อมูลติดตามสถานะ traking ใบขอรับบริการ จาก ID
$route['api/v1/bill/tracking/(:any)']['get'] = 'api/v1/bill/tracking/$1';






