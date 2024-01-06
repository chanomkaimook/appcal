<?php
/**************************************************************************
 * Bill V2
 *************************************************************************/
#ใบขอรับบริการทั้งหมด
$route['api/v2/bills']['get'] = 'api/v2/bill/index';
#ดูรายละเอียดขอรับบริการ
$route['api/v2/bills/(:num)']['get'] = 'api/v2/bill/view/$1';
#สรุปรายชื่อห้อง labs ที่จะได้เข้าทดลอง ของบิล
$route['api/v2/bills/(:num)/labs']['get'] = 'api/v2/bill/labs/$1';

#รายชื่อสถานะ
$route['api/v2/bills/status/tracking']['get'] = 'api/v2/bill/list_tracking_status';
$route['api/v2/bills/status/tracking-customer']['get'] = 'api/v2/bill/list_tracking_customer_status';