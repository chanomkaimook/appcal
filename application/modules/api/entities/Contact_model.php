<?php 
namespace App\modules\api\entities;

class Contact_model extends BaseModel {
    public function __construct() {
        parent::__construct();
    }

    protected $table = "agent";
}
?>