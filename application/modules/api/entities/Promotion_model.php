<?php

namespace App\modules\api\entities;


class Promotion_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "promotion";
}
