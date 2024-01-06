<?php 
/***********************************************
 * Customer API V2: ลูกค้า/บริษัท/ผู้ติดต่อ
 ***********************************************/
# [GET] รายชื่อลูกค้า
$route['api/v2/customers'] = 'api/v2/customer/index';
# [GET] ดูข้อมูลลูกค้าจาก ID
$route['api/v2/customers/(:num)'] = 'api/v2/customer/view/$1';
# [GET] ข้อมูลรายชื่อผู้ติดต่อของลูกค้า
$route['api/v2/customers/(:num)/contacts'] = 'api/v2/customer/contacts/$1';
# [GET] ข้อมูลที่อยุ่ในการจัดส่งเครื่องมือ
$route['api/v2/customers/(:num)/delivery-addresses'] = 'api/v2/customer/delivery_addresses/$1';
# [GET] ข้อมูลที่อยุ่ในการจัดส่งใบรับรอง
$route['api/v2/customers(:num)/cert-addresses'] = 'api/v2/customer/cert_addresses/$1';
?>