<?php

namespace App\modules\api\entities;


class Customer_model extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }

    protected $table = "customer";

    protected $visible = [

        "id",
        "customerCode",
        "memberCodeSST",
        "statusForm",
        "companyName",
        "companyNameEn",
        "companyBranch",
        "subdistrict",
        "district",
        "postalcode",
        "country",
        "taxNumber",
        "address",
        "province",
        "name", "lastname",
        "name_th", "lastname_th",
        'customerAddress', 'customerAddressCert'
    ];


    public function contacts()
    {
        return $this->hasMany(Contact_model::class, 'customer_id', 'id')->orderBy('id', 'DESC');
    }
    public function customerAddress()
    {
        return $this->hasOne(CustomerAddress_model::class, 'customer_id', 'id')->orderBy('id', 'DESC');
    }
    public function customerAddressCert()
    {
        return $this->hasOne(CustomerCert_model::class, 'customer_id', 'id')->orderBy('id', 'DESC');
    }
}
