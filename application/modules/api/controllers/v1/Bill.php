<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Bill extends API_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model(['bill_model']);
    $this->load->model(['lab_model']);
  }

  public function list_labs()
  {
    $data     = [];
    $mainLabs = $this->db->get("lab")->result_array();

    $items = [];
    if ($mainLabs) {
      foreach ($mainLabs as $lab) {
        $sublabs = $this->lab_model->getChildrenById($lab['ID']);

        $lab =
          array_push(
            $items,
            array_merge(
              [
                'id'      => $lab['ID'],
                'name_th' => $lab['NAME_TH'],
                'name'    => $lab['NAME'],
              ],
              ["labs" => $sublabs]
            )
          );
      }
    }

    // $data = $this->bill_model->findLabOfBill();
    return $this->api_return($items, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bill/",
   *     tags={"bill"},
   *     description="ใบขอรับการ",
   *     summary="ใบขอรับการ",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=false,
   *     @OA\Schema(type="number")
   *   ),
   *   @OA\Parameter(name="code",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เลขที่ใบขอรับบริการ",
   *   ),
   *   @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="คำค้นหา  [เลขที่ใบขอรับบริการ, ชื่อลูกค้า/บริษัท, ชื่อเครื่องมือในใบขอรับบริการ]",
   *   ),
   *   @OA\Parameter(name="date_from",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="ตั้งแต่วันที่",
   *   ),
   *   @OA\Parameter(name="date_to",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="ถึงวันที่",
   *   ),
   *   @OA\Parameter(name="labs",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="รหัสห้อง Lab  เช่น  1 หรือ 1,2,3",
   *   ),
   *   @OA\Parameter(name="by",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เรียงลำดับ เช่น date_asc,  date_desc, product_asc, product_desc, customer_asc, customer_desc",
   *   ),
   *   @OA\Parameter(name="page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="เลขที่หน้า",
   *   ),
   *   @OA\Parameter(name="per_page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="แสดงรายการต่อหน้า",
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */
  function list()
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);
    $search      = $this->input->get();
    $this->bill_model->search_filters = $search;

    $allcount    = $this->bill_model->getRecordCount();

    $page_params = page_params($allcount);
    $id          = $this->input->get();

    $items = $this->bill_model->getList($page_params['per_page'], $page_params['start']);

    $data['total_rows']  = $page_params['total_rows'];
    $data['page']        = $page_params['page'];
    $data['per_page']    = $page_params['per_page'];
    $data['total_pages'] = $page_params['total_pages'];
    //$data['page_params'] = $page_params;
    $data['result']      = $items;

    return $this->api_return($data, 200);
  }


  function search()
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      // 'requireAuthorization' => true,
    ]);
    $search      = $this->input->get();
    $this->bill_model->search_filters = $search;
    $total    = $this->bill_model->getRecordCount();
    $page_params = page_params($total);
    $id          = $this->input->get();

    $bills = $this->bill_model->getList($page_params['per_page'], $page_params['start'], $search);

    $dataItems = [];
    if ($bills) {
      foreach ($bills as $bill) {
        $bill = (array) $bill;
        $items = $bill ? $this->bill_model->getItemsById($bill['id'], 'tracking') : [];
        $bill['items'] = $items;
        $dataItems[]   = $bill;
        // $sql = "update bill set count_items = {$total} where id = {$bill['id']}";
        // $this->db->query($sql);
      }
    }

    $data['total_rows']  = $total;
    $data['page']        = $page_params['page'];
    $data['per_page']    = $page_params['per_page'];
    $data['total_pages'] = $page_params['total_pages'];
    $data['result']      = $dataItems;

    return $this->api_return($data, 200);
  }

  /**
   *   @OA\Get(
   *     path="/bill/mylabs",
   *     tags={"bill"},
   *     summary="รายการใบขอรับการ เฉพาะห้องทดลองที่รับผิดชอบเท่านั้น",
   *     description="ใบขอรับการที่มีเครื่องใน Lab ที่รับผิดชอบ ",
   *   @OA\Parameter(name="id",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number")
   *   ),
   *   @OA\Parameter(name="code",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เลขที่ใบขอรับบริการ",
   *   ),
   *   @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="คำค้นหา  [เลขที่ใบขอรับบริการ, ชื่อลูกค้า/บริษัท, ชื่อเครื่องมือในใบขอรับบริการ]",
   *   ),
   *   @OA\Parameter(name="date_from",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="ตั้งแต่วันที่",
   *   ),
   *   @OA\Parameter(name="date_to",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="ถึงวันที่",
   *   ),
   *   @OA\Parameter(name="labs",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="รหัสห้อง Lab  เช่น  1 หรือ 1,2,3",
   *   ),
   *   @OA\Parameter(name="by",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เรียงลำดับ เช่น date_asc,  date_desc, product_asc, product_desc, customer_asc, customer_desc",
   *   ),
   *   @OA\Parameter(name="page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="เลขที่หน้า",
   *   ),
   *   @OA\Parameter(name="per_page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="แสดงรายการต่อหน้า",
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function mylabs()
  {
    $userData = $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => true,
    ]);
    $search = $this->input->get();
    $data   = [];

    if ($userData) {
      $user = $this->staff_model->getOne($userData['token_data']['id']);
      $user = array_change_key_case($user);

      if ($user) {
        $this->load->library(['permiss']);
        $myCalibration = $this->permiss->get_trackingCalibration($userData['token_data']['id']);
        // print_r($aa);exit;
        $this->bill_model->myCalibration = $myCalibration;
        $this->bill_model->myLabs        = [$user['lab_id']];
      }

      $array_default_page = array(
        'page'          => null,
        'per_page'      => null,
        'total_pages'   => null,
      );
      $this->bill_model->filter_searchs = $search;
      $allcount          = $this->bill_model->getRecordCount();
      $search['user_id'] = isset($userData['token_data']['id']) ? $userData['token_data']['id'] : "";
      $page_params       = page_params($allcount);
      $id                = $this->input->get();

      $bills = $this->bill_model->getMyList($page_params['per_page'], $page_params['start'], $search);

      $dataItems = [];
      if ($bills) {
        foreach ($bills as $bill) {
          $bill  = (array) $bill;
          $items = $bill ? $this->bill_model->getItemsById($bill['id']) : [];
          // $labs_example = $this->lab_model->getChildrenById(15);
          $bill['items'] = $items;
          $dataItems[]   = $bill;
        }
      }
    }
    $data['total_rows']     = $this->bill_model->total_rows;
    $data['page']           = $page_params['page'];
    $data['per_page']       = $page_params['per_page'];
    $data['total_pages']    = $page_params['total_pages'];
    $data['my_calibration'] = $this->bill_model->myCalibration;
    $data['my_labs']        = $this->bill_model->myLabs;
    $data['result']         = $dataItems;

    return $this->api_return($data, 200);
  }
  /**
   *   @OA\Get(
   *     path="/bill/{id}",
   *     tags={"bill"},
   *     summary="รายละเอียดใบขอรับการ",
   *     description="รายละเอียดใบขอรับการ โดย ID",
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
      'methods'              => ['GET'],
      //'requireAuthorization' => true,
    ]);

    if ($id) {
      $items = $this->bill_model->getById($id);
      return $this->api_return($items, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }
  /**
   *   @OA\Get(
   *     path="/bill/code/{code}",
   *     tags={"bill"},
   *     summary="รายละเอียดใบขอรับการ",
   *     description="รายละเอียดใบขอรับการ โดย Code",
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
  public function code($code)
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($code) {
      $items = $this->bill_model->getByCode($code);
      // $items = $this->bill_model->getItemsById($bill['id']);
      // $data = array_merge(
      //   $bill,
      //   ["items" => $items]
      // );
      return $this->api_return($items, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }
  /**
   *   @OA\Get(
   *     path="/api/bill/{id}/items",
   *     tags={"bill"},
   *      description="รายการเครื่องมือในใบขอรับบริการ",
   *      description="รายการเครื่องมือทั้งหมดของใบขอรับบริการ",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   *
   */
  public function items($id)
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($id) {
      $product = $this->bill_model->getItemsById($id);
      return $this->api_return($product, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }

  /**
   *   @OA\Get(
   *     path="/bill/{id}/labs",
   *     tags={"bill"},
   *     summary="สรุปห้องรายชื่อห้อง LAB ของใบขอรับการ",
   *     description="สรุปห้องรายชื่อห้อง LAB ของใบขอรับการ",
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
  public function labs($id)
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => true,
    ]);
    $data = $this->bill_model->findLabOfBill($id);
    return $this->api_return($data, 200);
  }

  // /**
  //  *   @OA\Get(
  //  *     path="/bill/progress-status",
  //  *     tags={"bill"},
  //  *     summary="สถานะความคืบหน้าทั้งหมด",
  //  *    @OA\Response(response="200", description="Success"),
  //  *    @OA\Response(response="401", description="Unauthorized"),
  //  *    @OA\Response(response="404", description="Not Found")
  //  * )
  //  */
  /**
   * สถานะความคืบหน้าทั้งหมด
   *
   * @return void
   */
  public function progress_status()
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['GET'],
    ]);
    $data = $this->bill_model->getListProgressStatus();
    return $this->api_return($data, 200);
  }

  // /**
  //  *   @OA\Post(
  //  *     path="/bill/{id}/progress-status",
  //  *     tags={"bill"},
  //  *     summary="เปลี่ยนสถานะความคืบหน้า ตามสถานะที่ระบุมา",
  //  *   @OA\Parameter(name="id",
  //  *     in="path",
  //  *     required=true,
  //  *     @OA\Schema(type="number")
  //  *   ),
  //  *    @OA\RequestBody(
  //  *      required=true,
  //  *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
  //  *       @OA\Schema(
  //  *          @OA\Property(
  //  *           property="status",
  //  *           description="progress  status ID รหัสสถานะ",
  //  *           type="number"),
  //  *        ),
  //  *       ),
  //  *      ),
  //  *    @OA\Response(response="200", description="Success"),
  //  *    @OA\Response(response="401", description="Unauthorized"),
  //  *    @OA\Response(response="404", description="Not Found"),
  //  *    security={{"api_key": {} }}
  //  * )
  //  */

  public function set_progress_status($id)
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['POST'],
      'requireAuthorization' => true,
    ]);
    $status = $this->input->post("status");
    $bill   = $this->bill_model->getById($id);
    if ($bill && $status) {
      $this->db->where("id", $status);
      $rs    = $this->db->get("statusservice");
      $model = $rs->row();
      if ($model) {
        $this->bill_model->setProgressStatus($id, $status);
        return $this->api_return([
          'success' => true,
          'message' => "เปลี่ยนสถานะเป็น : " . $model->name . " เรียบร้อยแล้ว",
          'data'    => [
            'id'          => $model->id,
            'name'        => $model->name,
            'status_code' => $model->status_code,
          ],
        ], 400);
      } else {
        return $this->api_return(null, 400);
      }
    } else {
      return $this->api_return([
        'success' => false,
        'message' => 'ไม่พบข้อมูล',
      ], 404);
    }
  }
  // /**
  //  *   @OA\Post(
  //  *     path="/bill/{id}/progress-complete",
  //  *     tags={"bill"},
  //  *     summary="เปลี่ยนสถานะความคืบหน้าเป็น เสร็จแล้ว",
  //  *   @OA\Parameter(name="id",
  //  *     in="path",
  //  *     required=true,
  //  *     @OA\Schema(type="number")
  //  *   ),
  //  *    @OA\Response(response="200", description="Success"),
  //  *    @OA\Response(response="401", description="Unauthorized"),
  //  *    @OA\Response(response="404", description="Not Found"),
  //  *    security={{"api_key": {} }}
  //  * )
  //  */

  public function set_progress_complete($id)
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['POST'],
      'requireAuthorization' => true,
    ]);
    if ($id) {
      $bill = $this->bill_model->getById($id);
      if ($bill) {
        $this->bill_model->setProgressToComplete($id);
        $this->db->where("id", 16);
        $rs    = $this->db->get("statusservice");
        $model = $rs->row();
        return $this->api_return([
          'success' => true,
          'message' => "เปลี่ยนสถานะเป็น : " . $model->name . " เรียบร้อยแล้ว",
          'data'    => [
            'id'          => $model->id,
            'name'        => $model->name,
            'status_code' => $model->status_code,
          ],
        ], 400);
      } else {
        return $this->api_return([
          'success' => false,
          'message' => 'ไม่พบข้อมูล',
        ], 404);
      }
    } else {
      return $this->api_return([
        'success' => false,
        'message' => 'ไม่พบข้อมูล',
      ], 404);
    }
  }


  /**
   *   @OA\Get(
   *     path="/bill/item/tracking-status",
   *     tags={"bill"},
   *     summary="สถานะความคืบหน้าเครื่องมือ (Tracking System)",
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */

  public function tracking_status()
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);
    $data = $this->bill_model->getListTrackingStatus();
    return $this->api_return($data, 200);
  }

  /**
   *   @OA\Post(
   *     path="/bill/item/{item_id}/tracking-status",
   *     tags={"bill"},
   *     summary="เพิ่มสถานะความคืบหน้า ตามที่ระบุ ลงใบขอรับบริการ (Tracking System)",
   *   @OA\Parameter(name="item_id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\RequestBody(
   *      required=true,
   *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
   *       @OA\Schema(
   *          @OA\Property(property="sublab_id",description="เลขที่ sublab",type="number"),
   *          @OA\Property(property="status",description="tracking status ID รหัสสถานะ",type="number"),
   *          @OA\Property(property="remark",description="หมายเหตุ/รายละเอียด",type="string"),
   *        ),
   *       ),
   *      ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */

  public function set_tracking_status($item_id)
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['POST'],
      'requireAuthorization' => true,
    ]);

    if ($user_data) {
      $user = isset($user_data['token_data']) ? $user_data['token_data'] : [];

      #data from tracking server
      $status      = $this->input->post("status");
      $sublab_id   = $this->input->post("sublab_id");
      $sublab_name = "";
      $remark      = $this->input->post("remark");

      if ($sublab_id) {
        $sublabList = $this->sublab_model->getById($sublab_id);
        if ($sublabList) {
          $sublab_name = $sublabList['name_th'];
        }
      }

      $billItem = $this->bill_model->getItemById($item_id);
      if ($billItem && $status) {
        $this->db->where("id", $status);
        $rs  = $this->db->get("statusservice");
        $row = $rs->row_array();
        if ($row) {
          $options = [
            'sublab_name'  => $sublab_name ? $sublab_name : null,
            'status_name'  => $row['name'] ? $row['name'] : null,

            'created_by'   => $user['id'] ? $user['id'] : 0,
            'created_name' => $user['name'] ? $user['name'] : '',
            'remark'       => $remark,
          ];
          $bill_items = $this->bill_model->setTrackingStatus($item_id, $status, $sublab_id, $billItem, $options);
          if ($bill_items) {
            return $this->api_return([
              'success'         => true,
              'message'         => "เปลี่ยนสถานะเป็น : " . $row['name'] . " เรียบร้อยแล้ว",
              'data'            => $bill_items,
              'tracking_status' => [
                'id'          => $row['id'],
                'name'        => $row['name'],
                'status_code' => $row['status_code'],
              ],
            ], 200);
          } else {
            return $this->api_return([
              'success'         => false,
              'message'         => "เปลี่ยนสถานะไม่สำเร็จ เนื่องจากมีการบันทึกข้อมูล Lab นี้ไปแล้ว",
              'data'            => $bill_items,
              'tracking_status' => [
                'id'          => $row['id'],
                'name'        => $row['name'],
                'status_code' => $row['status_code'],
              ],
            ], 400);
          }
        } else {
          return $this->api_return(null, 400);
        }
      } else {
        return $this->api_return([
          'success' => false,
          'message' => 'ไม่พบข้อมูล',
        ], 404);
      }
    }
  }
  /**
   *   @OA\Post(
   *     path="/bill/item/{item_id}/tracking-complete",
   *     tags={"bill"},
   *     summary="เพิ่มสถานะความคืบหน้า เสร็จแล้ว (Tracking System)",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *   @OA\RequestBody(
   *      required=true,
   *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
   *       @OA\Schema(
   *          @OA\Property(property="sublab_id",description="เลขที่ sublab",type="number"),
   *        ),
   *       ),
   *      ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */

  public function set_tracking_complete($item_id)
  {
    $user_data = $this->_apiConfig([
      'methods'              => ['POST'],
      'requireAuthorization' => true,
    ]);

    if ($item_id) {
      $status    = 20; // สอบเทียบเสร็จ
      $sublab_id = $this->input->post("sublab_id");

      $billItem = $this->bill_model->getItemById($item_id);
      if ($billItem && $sublab_id) {
        $this->bill_model->setTrackingStatus($item_id, $status, $sublab_id, $billItem);
        $this->db->where("id", $status);
        $rs    = $this->db->get("statusservice");
        $model = $rs->row();
        return $this->api_return([
          'success' => true,
          'message' => "เปลี่ยนสถานะเป็น : " . $model->name . " เรียบร้อยแล้ว",
          'data'    => [
            'id'          => $model->id,
            'name'        => $model->name,
            'status_code' => $model->status_code,
          ],
        ], 200);
      } else {
        return $this->api_return([
          'success' => false,
          'message' => 'ไม่พบข้อมูล',
        ], 404);
      }
    } else {
      return $this->api_return([
        'success' => false,
        'message' => 'ไม่พบข้อมูล',
      ], 404);
    }
  }
}
