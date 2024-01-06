<?php 
namespace App\modules\api\entities;


class QuotationItems_model extends BaseModel {
    public function __construct() {
        parent::__construct();
    }

    protected $table = "quotation_items";
}
?>