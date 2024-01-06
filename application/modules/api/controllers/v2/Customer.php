<?php

use App\modules\api\entities\Customer_model;
use App\modules\api\entities\StatusService_model;

defined('BASEPATH') or exit('No direct script access allowed');



class Customer extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  
    /**
   *   @OA\Get(
   *     path="/customers",
   *     tags={"customer"},
   *     @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string")
   *    ),
   *     @OA\Parameter(name="limit",
   *     in="query",
   *     required=false,
   *     description="จำนวนรายการต่อหน้า",
   *     @OA\Schema(type="number")
   *    ),
   *     @OA\Parameter(name="page",
   *     in="query",
   *     required=false,
   *     description="หน้า",
   *     @OA\Schema(type="number")
   *    ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function index()
  {
    $limit = $this->input->get('limit');
    $date = $this->input->get('date');
    $company = $this->input->get('company');
    $status = $this->input->get('status');
    $sorter = $this->input->get('sorter', 'id_desc');
    $q = $this->input->get('q');
    $model = new Customer_model();
    //$condition = $model->with('customerAddress','customerAddressCert');
    $condition = $model->where("companyName", "LIKE", "%{$q}%");

    if (!empty($date)) {
      $condition->where("document_date", "=", $date);
    }
    if (!empty($status)) {
      $condition->where("status", "=", $status);
    }
    if (!empty($company)) {
      $condition->where("company_id", "=", $company);
    }
    if ($sorter) {
      $sort = explode("_", $sorter);
      $sorts = ($sort);
      $condition->orderBy($sorts[0], $sorts[1]);
    } else {
      $condition->orderBy('id', 'DESC');
    }
    $items = $condition->paginate($limit);
    return $this->api_return($items, 200);
  }
  /**
   *   @OA\Get(
   *     path="/customers/{id}",
   *     tags={"customer"},
   *     @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *    ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function view($id)
  {
    $model = Customer_model::with('customerAddress', 'customerAddressCert')->findOrFail($id);
    return $this->api_return(array_merge(json_decode($model, true), [
      //'contacts' => $model->contacts,
      'customerAddress' => array_change_key_case(json_decode($model->customerAddress, true), CASE_LOWER),
      'customerAddressCert' => (array_change_key_case(json_decode($model->customerAddressCert, true), CASE_LOWER)),
    ]), 200);
  }

  /**
   *   @OA\Get(
   *     path="/customers/{id}/contacts",
   *     tags={"customer"},
   *     @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *    ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function contacts($id)
  {
    $model = Customer_model::with('contacts')->findOrFail($id);
    return $this->api_return($model->contacts, 200);
  }
}
