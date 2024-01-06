<?php
$route['api/v1/auth']['get'] = 'api/auth/index'; # [GET] hello
$route['api/v1/auth/login'] = 'api/v1/auth/login'; # [POST] เข้าสู่ระบบ
$route['api/v1/auth/me'] = 'api/v1/auth/me'; # [GET] ดูข้อมูลส่วนตัว
$route['api/v1/auth/logout']['post'] = 'api/v1/auth/logout'; # [POST]

