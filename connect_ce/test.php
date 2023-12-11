<?php
require_once 'class/user.php';

$product = new User();

$fetch_product = $product->get_data();

echo "<pre>";
print_r($fetch_product);
echo "</pre>";
?>