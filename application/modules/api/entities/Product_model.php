<?php 
namespace App\modules\api\entities;


class Product_model extends BaseModel {
    public function __construct() {
        parent::__construct();
    }

    protected $table = "product";

    //protected $appends = ['lab','sublab'];

    public function lab() {
        return $this->hasOne(Lab_model::class,'id','lab_id');
    }
    public function sublab() {
        return $this->hasOne(Sublab_model::class,'id','sublab_id');
    }
}
?>