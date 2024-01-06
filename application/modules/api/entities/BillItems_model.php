<?php

namespace App\modules\api\entities;


class BillItems_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "bill_items";

    // protected $with = ['lab'];

    protected $appends = ['labs'];

    public function getLabAttribute()
    {
        return Lab_model::where('id', '=', $this->lab_id)
            ->select('id', 'code', 'name', 'name_th')->first();
    }

    public function getSublabAttribute()
    {
        return Sublab_model::where('id', '=', $this->sublab_id)
            ->select('id', 'code', 'name', 'name_th')->first();
    }

    /**
     * labs ทั้งหมดที่เครืองมือในบิลนี้จะได้เข้า
     *
     * @return void
     */
    public function getLabsAttribute()
    {
        $sublabs = array();
        $labs = array();
        $result = [];
        $status = new StatusService_model();
        array_push($result, array_merge(
            json_decode(json_encode($this->lab), true),
            [
                'sublab' => array_merge(
                    json_decode(json_encode($this->sublab), true),
                    [
                     'tracking' => $status->trackingStatus,
                     'customer' => $status->trackingCustomerStatus,   
                    ],
                   
                ),
            ]
        ));
        return $result;
    }
}
