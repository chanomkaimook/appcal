<?php
namespace App\modules\api\entities;


class Quotation_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "quotation";

    protected $with = ['customer','contact'];

    // protected $visible = ['id','parent_id','code','document_date','agent_name',
    // 'sender_name','sender_department',

    // 'quotation_type',
    // 'sender_tel',
    // 'note_customers',
    // 'address_name',
    // 'status',
    // 'statusservice_id',
    // 'revise_code',
    // 'statusservice_id',
    // ];
    public function items()
    {
        return $this->hasMany(QuotationItems_model::class, 'quotation_id', 'id');
    }
    public function customer()
    {
        return $this->hasMany(Customer_model::class, 'id', 'company_id');
    }
    public function contact()
    {
        return $this->hasMany(Contact_model::class, 'id', 'agent_id');
    }
    public function revisions()
    {
        return $this->hasMany(Quotation_model::class, 'code', 'code')
        ->orderBy("revise_seq","DESC");
    }

    public function getNoomAttibute()
    {
        return 5;
    }
}
