<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Staff extends API_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model(['staffs_model']);
    }

    public function fetch()
    {
        $this->_apiConfig([
            'methods' => ['GET'],
            'requireAuthorization' => false,
        ]);

        $primary = $this->input->get('primary');

        $array = [];
        if ($primary) {
            $array = array('ID' => $primary);
        }

        $item = $this->staffs_model->fetch_data('id', $array);

        return  $this->api_return($item, 200);
    }
  /**
   *   @OA\Get(
   *     path="/staff",
   *     tags={"staff"},
   *     summary="รายชื่อพนักงาน",
   *   @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="คำค้นหา",
   *   ),
   *   @OA\Parameter(name="code",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="รหัสพนักงาน",
   *   ),
   *   @OA\Parameter(name="page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เลขที่หน้า",
   *   ),
   *   @OA\Parameter(name="per_page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="แสดงรายการต่อหน้า",
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function list()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
      'roles' => ['staffpage_view']
    ]);

    $id = $this->input->get('id');


      $this->staffs_model->filter_searchs = $this->input->get();
      $allcount = $this->staffs_model->getRecordCount();
      $page_params = page_params($allcount);
  
      $rows = $this->staffs_model->getList($page_params['per_page'], $page_params['start']);


      $dataProducts = [];
      if ($rows) {
        foreach ($rows as $p) {
          array_push($dataProducts, array_change_key_case((array) $p, CASE_LOWER));
        }
      }
  
      $data['per_page'] = $page_params['per_page'];
      $data['total_rows'] = $page_params['total_rows'];
      $data['page'] = $page_params['page'];
      $data['total_pages'] = $page_params['total_pages'];

      $data['result'] = $dataProducts;

      return $this->api_return($data, 200);

    }
  /**
   *   @OA\Get(
   *     path="/staff/{id}",
   *     tags={"staff"},
   *     summary="ดูรายละเอียดพนักงานด้วย ID",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function view($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
      'roles' => ['staffpage','staffpage_view']
    ]);

    if ($id) {
      $product = $this->staffs_model->getById($id);
      return $this->api_return(array_change_key_case($product, CASE_LOWER), 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found'
      ], 404);
    }
  }
  /**
   *   @OA\Get(
   *     path="/staff/code/{code}",
   *     tags={"staff"},
   *     summary="ดูรายละเอียดพนักงานโดย code",
   *   @OA\Parameter(name="code",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function viewByCode($code)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      // 'requireAuthorization' => true,
      // 'roles' => ['staffpage','staffpage_view']
    ]);

    if ($code) {
      $data = $this->staffs_model->getByCode($code);
      return $this->api_return(array_change_key_case($data, CASE_LOWER), 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found'
      ], 404);
    }
  }
    // public function truncate()
    // {
    //     $this->_apiConfig([
    //         'methods' => ['GET'],
    //         'requireAuthorization' => false,
    //     ]);

    //     $item = $this->staffs_model->truncate();

    //     return  $this->api_return($item, 200);
    // }
}
