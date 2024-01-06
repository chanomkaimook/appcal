<?php
$route[] = array_merge(
  [
    require_once  __DIR__ . '/auth.php',
    require_once  __DIR__ . '/bill.php',
    require_once  __DIR__ . '/customer.php',
    require_once  __DIR__ . '/invoice.php',
    require_once  __DIR__ . '/lab.php',
    require_once  __DIR__ . '/product.php',
    require_once  __DIR__ . '/promotion.php',
    require_once  __DIR__ . '/quotation.php',
    require_once  __DIR__ . '/staff.php',
    require_once  __DIR__ . '/workorder.php',
  ]
);
