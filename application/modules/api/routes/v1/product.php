<?php

/***********************************************
 * PRODUCT API รายชื่อเครื่องมือ
 ***********************************************/

# [GET] รายชื่อเครื่องมือทั้งหมด
$route['api/v1/product']['get']  = 'api/v1/product/list';

# [GET] ดูรายละเอียดเครื่องจาก ID
$route['api/v1/product/(:num)']['get']  = 'api/v1/product/view/$1';

# [GET] ดูรายละเอียดเครื่องจาก ID ร่วมกับข้อมูลในใบขอรับบริการ
$route['api/v1/product/(:num)/calibration']['get']  = 'api/v1/product/view_calibrate/$1';

# [GET] ดูสินค้าตาม lab
$route['api/v1/product/labs']['get']  = 'api/v1/product/list_lab';
$route['api/v1/product/lab/(:num)']['get']  = 'api/v1/product/list_by_lab/$1';
$route['api/v1/product/sublab/(:num)']['get']  = 'api/v1/product/list_by_sublab/$1';
$route['api/v1/product/lab/(:num)/(:num)']['get']  = 'api/v1/product/list_by_category/$1/$2';
$route['api/v1/product/sublab/(:num)']['get']  = 'api/v1/product/list_by_sublub/$1';





