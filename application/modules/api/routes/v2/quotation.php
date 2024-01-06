<?php 
#รายการใบเสนอราคา + แบ่งหน้า
$route['api/v2/quotations']['get'] = 'api/v2/quotation/index';
$route['api/v2/quotations']['post'] = 'api/v2/quotation/create';


#ดูรายละเอียดใบเสนอราคา
$route['api/v2/quotations/(:num)']['get'] = 'api/v2/quotation/view/$1';
$route['api/v2/quotations/(:num)']['post'] = 'api/v2/quotation/update/$1';
$route['api/v2/quotations/code/(:any)']['get'] = 'api/v2/quotation/view_code/$1';
$route['api/v2/quotations/(:num)/revisions']['get'] = 'api/v2/quotation/revisions/$1';
$route['api/v2/quotations/(:num)/delivery_addresses']['get'] = 'api/v2/quotation/delivery_addresses/$1';