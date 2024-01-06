<?php

namespace App\modules\api\entities;

class Staff_model extends BaseModel
{
  public function __construct()
  {
    parent::__construct();
  }

  protected $table = "staff";
}
