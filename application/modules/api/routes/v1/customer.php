<?php
/***********************************************
 * Customer API : ลูกค้า/บริษัท/ผู้ติดต่อ
 ***********************************************/
# [GET] รายชื่อลูกค้า
$route['api/v1/customer'] = 'api/v1/customer/list';
# [GET] ดูข้อมูลลูกค้าจาก ID
$route['api/v1/customer/(:num)'] = 'api/v1/customer/view/$1';
# [GET] ข้อมูลรายชื่อผู้ติดต่อของลูกค้า
$route['api/v1/customer/(:num)/contacts'] = 'api/v1/customer/contacts/$1';
# [GET] ข้อมูลที่อยุ่ในการจัดส่งเครื่องมือ
$route['api/v1/customer/(:num)/delivery-addresses'] = 'api/v1/customer/delivery_addresses/$1';
# [GET] ข้อมูลที่อยุ่ในการจัดส่งใบรับรอง
$route['api/v1/customer/(:num)/cert-addresses'] = 'api/v1/customer/cert_addresses/$1';




