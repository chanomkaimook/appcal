<?php

use App\modules\api\entities\Role_model;
use App\modules\api\entities\Staff_model;


defined('BASEPATH') or exit('No direct script access allowed');


class Role extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  /**
   *   @OA\Get(
   *     path="/roles",
   *     tags={"role"},
   *     @OA\Parameter(name="q",
   *     in="query",
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
    $model = new Role_model();
    $condition = $model;
    $condition->where("name", "LIKE", "%{$q}%");

    // if (!empty($date)) {
    //   $condition->where("document_date", "=", $date);
    // }
    // if (!empty($status)) {
    //   $condition->where("status", "=", $status);
    // }
    // if (!empty($company)) {
    //   $condition->where("company_id", "=", $company);
    // }
    // if ($sorter) {
    //   $sort = explode("_", $sorter);
    //   $sorts = ($sort);
    //   $condition->orderBy($sorts[0], $sorts[1]);
    // } else {
    //   $condition->orderBy('id', 'DESC');
    // }
    $items = $condition->all();
    return $this->api_return($items, 200);
  }

  /**
   *   @OA\Get(
   *     path="/roles/{id}",
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
    $model = Role_model::findOrFail($id);
    return $this->api_return($model, 200);
  }

  /**
   *   @OA\Get(
   *     path="/roles/{id}/permissions",
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

  public function permissions($id)
  {
    $model = Role_model::findOrFail($id);
    return $this->api_return($model->permissions, 200);
  }


  /**
   *   @OA\Get(
   *     path="/roles/user/{user_id}",
   *     tags={"role"},
   *     @OA\Parameter(name="user_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *    ),
   *     @OA\Parameter(name="can",
   *     in="query",
   *     required=false,
   *     description="profilepage_view,profilepage_edit,default",
   *     @OA\Schema(type="string")
   *    ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function user_permissions($user_id)
  {
    $can = $this->input->get('can');
    $allows = ['permiss'];
    if ($can) {
      $allows = array_map('trim', explode(',', $can));
    }
    $model = new Role_model();
    $rols = $model->getUserRoles($user_id);
    if ($rols) {
      $rs = [
        'user' => Staff_model::select('id', 'code', 'name', 'lastname', 'name_th', 'lastname_th')->find($user_id),
        'roles' => $rols,
        'permissions' => $model->getUserPermissions($user_id),
        '_can' => $allows,
        '_can_result' => $model->checkRoleUser($user_id, $allows),
        'roles_and_permissions' => $model->getUserRolesAndPermissions($user_id),
      ];
      return $this->api_return($rs, 200);
    }
    return $this->api_return(['message' => "ไม่พบข้อมูล"], 404);

  }
}
