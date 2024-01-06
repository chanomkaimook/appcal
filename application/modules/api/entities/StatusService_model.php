<?php

namespace App\modules\api\entities;

class StatusService_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "statusservice";

    public function getTrackingStatusAttribute()
    {
        return StatusService_model::where('document_alias', '=', 'quotation')->orderBy('sort', 'ASC')->get();
    }
    public function getTrackingCustomerStatusAttribute()
    {
        return StatusService_model::where('document_alias', '=', 'tracking_cus_status')->orderBy('sort', 'ASC')->get();
    }
}
