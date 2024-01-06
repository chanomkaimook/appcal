<?php

namespace App\modules\api\entities;


class Document_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "documents";
}
