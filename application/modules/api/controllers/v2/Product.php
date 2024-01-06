<?php

use App\modules\api\entities\Product_model;


defined('BASEPATH') or exit('No direct script access allowed');

class Product extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  /**
   *   @OA\Get(
   *     path="/products",
   *     tags={"product"},
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
   *  รายการสินค้า
   */
  public function index()
  {
    // $token = $this->_apiConfig([
    //   'methods' => ['GET'],
    //   'requireAuthorization' => true,
    //   'roles' => ['master_admin']
    // ]);

    $limit = $this->input->get('limit');
    $date = $this->input->get('date');
    $company = $this->input->get('company');
    $status = $this->input->get('status');
    $sorter = $this->input->get('sorter', 'id_desc');
    $q = $this->input->get('q');
    $model = new Product_model();
    $condition = $model->with('sublab', 'lab');
    $condition->select(
      'id',
      'name',
      'name_th',
      'code',
      'is_master',
      'total_price',
      'lab_id',
      'sublab_id',
      'status',

    );
    $condition->where("name", "LIKE", "%{$q}%");

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
   *     path="/products/{id}",
   *     tags={"product"},
   *     @OA\Parameter(name="id",
   *     in="patch",
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
    $model = Product_model::with('lab', 'sublab')->find($id)->toArray();
    return $this->api_return(array_change_key_case($model), 200);
  }

}
