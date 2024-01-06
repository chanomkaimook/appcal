<?php

namespace App\modules\api\entities;

class CustomerCert_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "customer_cert";
}
