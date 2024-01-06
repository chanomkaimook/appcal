<?php

namespace App\modules\api\entities;


class PermissionUser_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "permiss_control";

    public function role() {
        return $this->hasOne(Role_model::class,'id','permiss_set_id');
    }
    public function permission() {
        return $this->hasOne(Permission_model::class,'id','permiss_page_id');
    }

}
