<?php

use App\modules\api\entities\Bill_model;
use App\modules\api\entities\StatusService_model;
use Illuminate\Routing\Controller;
use Illuminate\Database\Capsule\Manager as Capsule;

defined('BASEPATH') or exit('No direct script access allowed');


class Bill extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  /**
   *   @OA\Get(
   *     path="/bills",
   *     tags={"bill"},
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
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    $limit = $this->input->get('limit');
    $date = $this->input->get('date');
    $company = $this->input->get('company');
    $status = $this->input->get('status');
    $code = $this->input->get('code');
    $model = new Bill_model();
    $condition = $model->where("code", "LIKE", "%{$code}%");

    if (!empty($date)) {
      $condition->where("document_date", "=", $date);
    }
    if (!empty($status)) {
      $condition->where("status", "=", $status);
    }
    if (!empty($company)) {
      $condition->where("company_id", "=", $company);
    }
    $items = $condition->paginate($limit);
    return $this->api_return($items, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bills/{id}",
   *     tags={"bill"},
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
    $model = Bill_model::with('items', 'contact', 'customer')->findOrFail($id);
    return $this->api_return($model, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bills/{id}/labs",
   *     tags={"bill"},
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
  public function labs($id)
  {
    $model = Bill_model::with('items', 'contact', 'customer')->findOrFail($id);
    return $this->api_return($model->labs, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bills/status/tracking",
   *     tags={"bill"},
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function list_tracking_status()
  {
    $token = $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
      'roles' => ['super_admin', 'admin']
    ]);

    $model = new StatusService_model();
    return $this->api_return($model->trackingStatus, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bills/status/tracking-customer",
   *     tags={"bill"},
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function list_tracking_customer_status()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      //'requireAuthorization' => true,
    ]);
    $model = new StatusService_model();
    return $this->api_return($model->trackingCustomerStatus, 200);
  }
}
