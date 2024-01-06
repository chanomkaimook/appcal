<?php 
namespace App\modules\api\entities;


class BillTackingData_model extends BaseModel {
    public function __construct() {
        parent::__construct();
    }

    protected $table = "bill_tracking_data";
}
?>