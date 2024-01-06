<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Product extends API_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model(['staff_model']);
    $this->load->model(['product_model', 'lab_model', 'sublab_model']);
  }
  /**
   *   @OA\Get(
   *     path="/product",
   *     tags={"product"},
   *     summary="รายการเครื่องมือทั้งหมด",
   *   @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="คำค้นหา",
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
      // 'requireAuthorization' => true,
    ]);

    $id = $this->input->get('id');
      $this->product_model->filter_searchs = $this->input->get();
      $allcount = $this->product_model->getRecordCount();
      $page_params = page_params($allcount);
  
      $rows = $this->product_model->getList($page_params['per_page'], $page_params['start']);


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
   *     path="/product/{id}",
   *     tags={"product"},
   *     summary="ดูรายละเอียดเครื่องมือ",
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
    ]);

    if ($id) {
      $product = $this->product_model->getById($id);
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
   *     path="/product/code/{code}",
   *     tags={"product"},
   *     summary="ดูรายละเอียดเครื่องมือ",
   *   @OA\Parameter(name="code",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="string")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function view_code($code)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($code) {
      $product = $this->product_model->getByCode($code);
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
   *     path="/product/{id}/calibration",
   *     tags={"product"},
   *     summary="",
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
  public function view_calibrate($id)
  {
    $userData = $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);
    $search = $this->input->get();
    $data = [];
    if ($userData) {
      $user = $this->staff_model->getOne($userData['token_data']['id']);
      $user = array_change_key_case($user);

      if ($user) {
        $this->load->library(['permiss']);
        $myCalibration = $this->permiss->get_trackingCalibration($userData['token_data']['id']);
        // print_r($aa);exit;
        // $this->product_model->myCalibration = $myCalibration;
        // $this->product_model->myLabs =  [$user['lab_id']];
      }

      $allcount = $this->product_model->getRecordCount();
      $page_params = page_params($allcount);

      $bills = $this->product_model->getByIdCalibrate($page_params['per_page'], $page_params['start'], $search);

      $dataItems = [];
      if ($bills) {
        foreach ($bills as $bill) {
          $bill = (array) $bill;
          /* $items = $bill ? $this->bill_model->getItemsById($bill['id']) : [];
          $bill['items'] = $items; */

          $dataItems[] = $bill;
        }
      }
    }
    $data['total_rows'] = $this->product_model->total_rows;
    $data['page'] = $page_params['page'];
    $data['per_page'] = $page_params['per_page'];
    $data['total_pages'] = $page_params['total_pages'];
    $data['my_calibration'] = $this->product_model->myCalibration;
    $data['my_labs'] = $this->product_model->myLabs;
    $data['result'] = $dataItems;



    return $this->api_return($data, 200);
  }


  function array_change_key_case_recursive($arr)
  {
    return array_map(function ($item) {
      if (is_array($item))
        $item = array_change_key_case_recursive($item);
      return $item;
    }, array_change_key_case($arr));
  }

  /**
   * @OA\Get(
   *     path="/product/labs",
   *     tags={"product"},
   *     summary="รายชื่อห้องทดลอง (Lab && Sublab)",
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  public function list_lab()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    $id = $this->input->get('id');
    if ($id && $id > 0) {
      $list = $this->lab_model->getById($id);

      $data = array_merge(
        $list,
        ["items" => $this->lab_model->getChildrenById($id)],
      );
      return $this->api_return(array_change_key_case($data, CASE_LOWER), 200);
    } else {

      // $allcount = $this->lab_model->getRecordCount();
      // $page_params = page_params($allcount);
      // $items = $this->lab_model->getList($page_params['per_page'], $page_params['start']);

      $this->db->order_by('name_th', "ASC");
      $this->db->order_by('name', "ASC");
      $data = $this->db->get("lab");
      $items = $data->result();

      $dataLabs = [];
      if ($items) {
        foreach ($items as $item) {
          $row = array_change_key_case((array) $item, CASE_LOWER);
          $row['items'] = $this->lab_model->getChildrenById($row['id']);
          array_push($dataLabs, $row);
        }
      }

      // $data['result'] = $dataLabs;
      // $data['per_page'] = $page_params['per_page'];
      // $data['total_rows'] = $page_params['total_rows'];
      // $data['page'] = $page_params['page'];
      // $data['total_pages'] = $page_params['total_pages'];

      return $this->api_return($dataLabs, 200);
    }
  }
  /**
   *   @OA\Get(
   *     path="/product/lab/{lab_id}",
   *     tags={"product"},
   *     summary="รายการเครื่องมือตามประเภทห้องทดลอง (Lab)",
   *     description="ดูรายการเครื่องมือตาม Id",
   *   @OA\Parameter(name="lab_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  public function list_by_lab($lab_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($lab_id) {
      $lab = $this->lab_model->getById($lab_id);
      $rs = $this->db->from("product")
        ->select([
          'id',
          'code',
          'lab_id',
          'sublab_id',
          'name',
          'name_th',
          'is_master',
          'calpoint',
          'calprice',
          'calhour',
          'total_price',
          'range_value',
          'range_price',
          // 'point',
          'check_iso',
          'status'
        ])
        ->where("lab_id", $lab_id)->get();
      $product = $rs->result();
      $items = array_change_key_case($product, CASE_LOWER);
      $data = [
        'lab' => $lab['name_th'],
        'total' => count($items),
        'items' => $this->array_change_key_case_recursive($items),
      ];
      return $this->api_return($data, 200);
    }

    return $this->api_return([
      'status' => false,
      'message' => 'Not found'
    ], 404);
  }

  /**
   *   @OA\Get(
   *     path="/product/lab/{lab_id}/{sublab_id}",
   *     tags={"product"},
   *     summary="รายการเครื่องมือตาม ประเภทห้องทดลอง(Lab) และห้องทดลอง (Sub lab)",
   *   @OA\Parameter(name="lab_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *   @OA\Parameter(name="sublab_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */

  public function list_by_category($lab_id, $sublab_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($lab_id) {
      //$product = $this->product_model->getById($lab_id);
      $lab = $this->lab_model->getById($lab_id);
      $sublab = $this->sublab_model->getById($sublab_id);
      $rs = $this->db->from("product")
        ->select([
          'id',
          'code',
          'lab_id',
          'sublab_id',
          'name',
          'name_th',
          'is_master',
          'calpoint',
          'calprice',
          'calhour',
          'total_price',
          'range_value',
          'range_price',
          // 'point',
          'check_iso',
          'status'
        ])
        ->where("lab_id", $lab_id)
        ->where("sublab_id", $sublab_id)
        ->get();
      $product = $rs->result();
      $items = array_change_key_case($product, CASE_LOWER);
      $data = [
        'sublab' => $sublab['name_th'],
        'lab' => $lab['name_th'],
        'total' => count($items),
        'items' => $this->array_change_key_case_recursive($items),
      ];
      return $this->api_return($data, 200);
    }

    return $this->api_return([
      'status' => false,
      'message' => 'Not found'
    ], 404);
  }

  /**
   *   @OA\Get(
   *     path="/product/sublab/{sublab_id}",
   *     tags={"product"},
   *     summary="รายการเครื่องมือตามห้องทดลอง (Sub lab)",
   *   @OA\Parameter(name="sublab_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */

  public function list_by_sublub($sublab_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($sublab_id) {

      $sublab = $this->sublab_model->getById($sublab_id);
      $rs = $this->db->from("product")
        ->select([
          'id',
          'code',
          'lab_id',
          'sublab_id',
          'name',
          'name_th',
          'is_master',
          'calpoint',
          'calprice',
          'calhour',
          'total_price',
          'range_value',
          'range_price',
          // 'point',
          'check_iso',
          'status'
        ])
        ->where("sublab_id", $sublab_id)
        ->get();
      $product = $rs->result();
      $items = array_change_key_case($product, CASE_LOWER);
      $data = [
        'sublab' => $sublab ? $sublab['name_th'] : $sublab['name_th'],
        'total' => count($items),
        'items' => $this->array_change_key_case_recursive($items),
      ];
      if(empty($data)) {
        return $this->api_return([
          'message' => "ไม่พบข้อมูล"
        ], 404);
      }
      return $this->api_return($data, 200);
    }

    return $this->api_return([
      'status' => false,
      'message' => 'Not found'
    ], 404);
  }


}
