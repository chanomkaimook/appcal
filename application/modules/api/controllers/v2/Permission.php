<?php

use App\modules\api\entities\Permission_model;
use App\modules\api\entities\Role_model;



defined('BASEPATH') or exit('No direct script access allowed');



class Permission extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
  }
    /**
   *   @OA\Get(
   *     path="/permissions",
   *     tags={"role"},
   *     @OA\Parameter(name="q",
   *     in="path",
   *     required=false,
   *     @OA\Schema(type="string")
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
    $model = new Permission_model();
    $condition = $model;
    $condition->where("name", "LIKE", "%{$q}%");

    $items = $condition->all();
    return $this->api_return($items, 200);
  }

    /**
   *   @OA\Get(
   *     path="/permissions/{id}",
   *     tags={"role"},
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
    $model = Permission_model::findOrFail($id);
    return $this->api_return($model, 200);
  }


}
