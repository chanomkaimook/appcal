<?php

namespace App\modules\api\entities;

class Bill_model extends BaseModel
{
  public function __construct()
  {
    parent::__construct();
  }

  protected $table = "bill";

  protected $with = ['customer', 'contact'];

  protected $appends = ['count_items', 'labs'];


  public function items()
  {
    return $this->hasMany(BillItems_model::class, 'bill_id', 'id');
  }
  public function customer()
  {
    return $this->hasMany(Customer_model::class, 'id', 'company_id');
  }
  public function contact()
  {
    return $this->hasMany(Contact_model::class, 'id', 'agent_id');
  }

  public function getCountItemsAttribute()
  {
    return BillItems_model::where('bill_id', '=', $this->id)->get()->count();
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
    $items = $this->items;
    foreach ($items as $key => $item) {
      $sublabs[$item->lab_id][] = $item->sublab;
      $labs[] = $item['lab'];
      $labs = array_unique($labs);
    }
    $result = [];
    if ($labs) {
      foreach ($labs as $v) {
        if ($v) {
          array_push(
            $result,
            array_merge([
              "id" => $v['id'],
              "name" => $v['name'],
              "name_th" => $v['name_th'],
            ], ["sublab" => $sublabs[$v['id']]])
          );
        }
      }
      ;
    }
    return $result;
  }
}
