<?php

/**
 * ใบเสนอราคา
 */

$route['api/v1/quotations']['get'] = 'api/v1/quotation/index';
$route['api/v1/quotations']['post'] = 'api/v1/quotation/save';
$route['api/v1/quotations/(:num)']['get'] = 'api/v1/quotation/view/$1';
$route['api/v1/quotations/(:num)']['put'] = 'api/v1/quotation/update/$1';





