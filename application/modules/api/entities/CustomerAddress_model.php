<?php

namespace App\modules\api\entities;

class CustomerAddress_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "customer_address";
}
