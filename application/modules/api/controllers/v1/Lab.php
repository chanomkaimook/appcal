<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lab extends API_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model(['lab_model']);
    $this->load->model(['sublab_model']);
  }


  /**
   * @OA\Get(
   *     path="/lab",
   *     tags={"lab"},
   *     summary="รายชื่อประเภทห้องทดลอง (Lab)",
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
    $this->lab_model->filter_searchs = $this->input->get();

  
      $allcount = $this->lab_model->getRecordCount();

      $page_params = page_params($allcount);

      $config['total_rows'] = $this->lab_model->total_rows;
      $config['per_page'] = $page_params['per_page'];

      $items = $this->lab_model->getList($page_params['per_page'], $page_params['start']);

      $dataLabs = [];
      if ($items) {
        foreach ($items as $item) {
          $row = array_change_key_case((array) $item, CASE_LOWER);
          $row['items'] = $this->lab_model->getChildrenById($row['id']);
          array_push($dataLabs, $row);
        }
      }
     
      $data['per_page'] = $page_params['per_page'];
      $data['total_rows'] = $page_params['total_rows'];
      $data['page'] = $page_params['page'];
      $data['total_pages'] = $page_params['total_pages'];
      $data['result'] = $dataLabs;

      return $this->api_return($data, 200);
    
  }


  /**
   *   @OA\Get(
   *     path="/lab/lab/{id}",
   *     tags={"lab"},
   *     summary="รายละเอียดประเภทห้องทดลอง (Lab)",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  public function view_lab($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $data = $this->lab_model->getById($id);
      $item = array_change_key_case((array) $data, CASE_LOWER);
      $result = array_merge(
        $item,
        ["items" => $this->lab_model->getChildrenById($id)]
      );
      return $this->api_return($result, 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found'
      ], 404);
    }
  }

  /**
   *   @OA\Get(
   *     path="/lab/{id}/sublab",
   *     tags={"lab"},
   *     summary="รายชื่อห้องทดลอง(Sub Lab) ตามหมวดหมู่(Lab)",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  public function list_sublab_by_lab($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);
    $this->sublab_model->filter_searchs = $this->input->get();
    $allcount = $this->sublab_model->getRecordCount();

    $page_params = page_params($allcount);
    $filter['lab_id'] = $id;
    $items = $this->sublab_model->getList($page_params['per_page'], $page_params['start'], $filter);


    $data['per_page'] = $page_params['per_page'];
    $data['total_rows'] = $page_params['total_rows'];
    $data['page'] = $page_params['page'];
    $data['total_pages'] = $page_params['total_pages'];
    $data['result'] = $items;
    return $this->api_return($data, 200);

  }
  /**
   *   @OA\Get(
   *     path="/lab/sublab",
   *     tags={"lab"},
   *     summary="รายชื่อห้องทดลอง (Sub Lab)",
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  public function list_sublab()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    $id = $this->input->get('id');
     $this->sublab_model->filter_searchs = $this->input->get();
      $allcount = $this->sublab_model->getRecordCount();

      $page_params = page_params($allcount);

      $items = $this->sublab_model->getList($page_params['per_page'], $page_params['start']);

     
      $data['per_page'] = $page_params['per_page'];
      $data['total_rows'] = $page_params['total_rows'];
      $data['page'] = $page_params['page'];
      $data['total_pages'] = $page_params['total_pages'];
      $data['params'] = $page_params;
      $data['result'] = $items;

      return $this->api_return($data, 200);
    
  }
  /**
   *   @OA\Get(
   *     path="/lab/sublab/{id}",
   *     tags={"lab"},
   *     summary="รายละเอียดห้องทดลอง (Sub Lab)",
   *     @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *    ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),

   * )
   */
  public function view_sublab($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $product = $this->sublab_model->getById($id);
      return $this->api_return($product, 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found'
      ], 404);
    }
  }
}
