<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Workorder extends API_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model(['api/workorder_model','api/bill_model']);
  }
  /**
   *   @OA\Get(
   *     path="/workorder",
   *     tags={"workorder"},
   *     description="รายการใบสั่งาน",
   *     summary="รายการใบสั่งาน",
   *   @OA\Parameter(name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="code, workorder_id, customer name, contact name",
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
   *   @OA\Parameter(name="by",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="เรียงลำดับ เช่น date_asc,  date_desc, customer_asc, customer_desc",
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
  public function index()
  {
    $this->_apiConfig([
      'methods' => ['GET'],

    ]);
    $search = $this->input->get();
    $search['has_tracking'] = !empty($search['has_tracking']) ? $search['has_tracking'] : 'no';
    $this->workorder_model->search_filters = $search;
    $allcount = $this->workorder_model->getRecordCount();
    $page_params = page_params($allcount);
    $rows = $this->workorder_model->getList($page_params['per_page'], $page_params['start']);


    $items = [];
    foreach ($rows as $key => $row) {
      $commitmentDate = (new \DateTime($row['document_date']))->modify("+3 day")->format("Y-m-d");
      $item = [
        "workorder_id" => $row['id'],
        "code" => $row['code'],
        "document_date" => $row['document_date'],
        "commitment_date" => $commitmentDate,
        "receive_date" => "",
        "priority" => "medium",
        // "bill_status" => $row["bill_status"]
      ];

      $bill_items = $this->workorder_model->getItemsById($row["id"]);
      $item['items'] = $bill_items;
      // $item['items'] = [
      //   [
      //     'item_id' => '',
      //     'lab_id' => $row['lab_id'],
      //     'sublab_id' => $row['sublab_id'],
      //     'num_of_machines' =>  1,
      //     'duration' => floatVal($row['hour'])
      //   ]
      // ];

      $items[] = $item;
    }

    $data['per_page'] = $page_params['per_page'];
    $data['total_rows'] = $page_params['total_rows'];
    $data['page'] = $page_params['page'];
    $data['total_pages'] = $page_params['total_pages'];
    $data['result'] = $items;


    return $this->api_return($data, 200);
  }

  /**
   *   @OA\Get(
   *     path="/workorder/{id}",
   *     tags={"workorder"},
   *     description="job detail for workorder",
   *     summary="รายละเอียดใบสั่งาน เตรียมส่งข้อมูลไปหาระบบ Kanban",
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
  public function view_task($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $this->db->where("id", $id);
      $data = $this->db->get("bill");
      $bill = $data->row_array();
      $commitmentDate = $bill['document_date'] ? (new \DateTime($bill['document_date']))->modify("+3 day")->format("Y-m-d") : "";
      $items = [];
      $items = $this->workorder_model->getItemsById($id);

      $result = [
        "workorder_id" => $bill['id'],
        "code" => $bill['code'],
        "document_date" => $bill['document_date'],
        "commitment_date" => $commitmentDate,
        "receive_date" => "",
        "priority" => "medium",
        // "bill_status" => $bill["bill_status"],
        'items' => $items,
      ];
      return $this->api_return($result, 200);
    } else {
      return $this->api_return([
        'status' => false,
      ], 404);
    }
  }


  /**
   *
   * @return void
   */
  public function fetch_dt()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);
    $search = $this->input->get();
    $this->workorder_model->search_filters = $this->input->get();
    $allcount = $this->workorder_model->getRecordCountWorkOrder();

    $page_params = dt_page_params($allcount);
    $id = $this->input->get();

    $bills = $this->workorder_model->getListWorkOrder($page_params['length'], $page_params['start']);

    return $this->api_return([
      "q" => isset($this->input->get("search")['value']) ? $this->input->get("search")['value'] : '',
      "lab_id" => $this->input->get("labs"),
      "draw" => intval($this->input->get("draw")),
      'recordsTotal' => $allcount,
      'recordsFiltered' => $this->workorder_model->total_filtered_workorder,
      'data' => $bills,
      'page_params' => $page_params,
      'found' => $this->workorder_model->total_filtered_workorder,
    ], 200);
  }

  // /**
  //  *   @OA\Get(
  //  *     path="/workorder/{id}",
  //  *     tags={"workorder"},
  //  *     description="Work Order",
  //  *     summary="Work Order",
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
  public function view($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $items = $this->workorder_model->getWorkOrderById($id);
      return $this->api_return($items, 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found',
      ], 404);
    }
  }

  /**
   *
   **/
  public function set_tracking_status()
  {
    $this->load->helper('permit');
    if (chkPage("workorder/workorder/workorder_add_track")) {
      return $this->api_return([
        'success' => false,
        'message' => 'ไม่พบสิทธิ์การเข้าถึง',
      ], 403);
    }

    $user_data = $this->_apiConfig([
      'methods' => ['POST'],
      'requireAuthorization' => false,
    ]);

    $user = isset($user_data['token_data']) ? $user_data['token_data'] : [];
    if (!$user) {
      $user = [
        'id' => $this->session->userdata('useradminid'),
        'name' => $this->session->userdata('useradminname'),
      ];
    }

    #data from tracking server
    $item_id = $this->input->post("item_id");
    $status = $this->input->post("status");
    $sublab_id = $this->input->post("sublab_id");
    $sublab_name = "";
    $remark = $this->input->post("remark");

    if ($sublab_id) {
      $sublabList = $this->sublab_model->getById($sublab_id);
      if ($sublabList) {
        $sublab_name = $sublabList['name_th'];
      }
    }

    $billItem = $this->workorder_model->getItemById($item_id);

    if ($billItem && $status) {
      $this->db->where("id", $status);
      $rs = $this->db->get("statusservice");
      $row = $rs->row_array();

      if ($row) {
        $options = [
          'sublab_id' => $sublab_id,
          'sublab_name' => $sublab_name ? $sublab_name : null,
          'status_name' => $row['name'] ? $row['name'] : null,
          'created_by' => isset($user['id']) ? $user['id'] : 0,
          'created_name' => isset($user['name']) ? $user['name'] : '',
          'remark' => $remark,
        ];

        $bill_items = $this->workorder_model->setTrackingStatus($item_id, $status, $sublab_id, $billItem, $options);
        // return $this->api_return($bill_items, 200);

        if ($bill_items) {
          return $this->api_return([
            'success' => true,
            'message' => "เปลี่ยนสถานะเป็น : " . $row['name'] . " เรียบร้อยแล้ว",
            'data' => $bill_items,
            'tracking_status' => [
              'id' => $row['id'],
              'name' => $row['name'],
              'status_code' => $row['status_code'],
            ],
          ], 200);
        } else {
          return $this->api_return([
            'success' => false,
            'message' => "เพิ่มสถานะไม่สำเร็จ",
            'data' => $bill_items,
            'tracking_status' => [
              'id' => $row['id'],
              'name' => $row['name'],
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

  /**
   *   @OA\Post(
   *     path="/workorder/{id}/receive_date",
   *     tags={"workorder"},
   *     description="อัพเดท receive_date จากที่ได้จากระบบ kanban ประมวลผลส่งกลับมา",
   *     summary="อัพเดท receive_date ที่ได้จากระบบ kanban ประมวลผลส่งกลับมา",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *   @OA\RequestBody(
   *      required=true,
   *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
   *       @OA\Schema(
   *          @OA\Property(property="workorder_id",description="ID",type="number"),
   *          @OA\Property(property="receive_date",description="commitment_date",type="number")
   *        ),
   *       ),
   *      ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */


  public function update_receive_date($id)
  {
    $this->_apiConfig([
      'methods' => ['POST'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $items = $this->workorder_model->getWorkOrderById($id);
      $data = [
        "message" => "บันทึกสำเร็จ",
        "data" => [
          "workorder_id" => $id,
          "receive_date" => $this->input->post("receive_date")
        ]
      ];
      return $this->api_return($data, 200);
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found',
      ], 404);
    }
  }

  /**
   *   @OA\Get(
   *     path="/certificate",
   *     tags={"certificate"},
   *     description="ประกาศนียบัตร",
   *     summary="ประกาศนียบัตร",
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   * )
   */

  public function certificate()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);
    $workders1 = $this->workorder_model->getItemsById(7527);
    $workders2 = $this->workorder_model->getItemsById(7526);
    $workders3 = $this->workorder_model->getItemsById(7525);
    $workders4 = $this->workorder_model->getItemsById(7524);
    $workders5 = $this->workorder_model->getItemsById(7523);

    $bill1 = $this->workorder_model->getById(7527);
    $bill2 = $this->workorder_model->getById(7526);
    $bill3 = $this->workorder_model->getById(7525);
    $bill4 = $this->workorder_model->getById(7524);
    $bill5 = $this->workorder_model->getById(7523);

    $billItems1 = $this->bill_model->getItemsById(7527);
    $billItems2 = $this->bill_model->getItemsById(7526);
    $billItems3 = $this->bill_model->getItemsById(7525);
    $billItems4 = $this->bill_model->getItemsById(7524);
    $billItems5 = $this->bill_model->getItemsById(7523);

    $cer_procedure = [
      [
        "id" => "cp01",
        "description" => "ช่วยเพิ่มประสทธิ ิภาพในการผลติ",
      ],
      [
        "id" => "cp02",
        "description" => "ช่วยเพิ่มประสทธิ ิภาพในการผลติ",
      ],
    ];
    $cer_condition = [
      "สูตร 1,2 พิจารณาจากมูลค่าต้นทุนสินค้า MiT จะต้องได้เท่ากับหรือมากกว่า 40%",
      "สูตร 3 พิจารณาจาก HS Code",
      "สูตร 4 พิจารณาตามเงื่อนไขการผลิต Substantial Transformation (ST)",
      "สินค้าได้รับความน่าเชื่อถือมากขึ้นจากคู่ค้า / ผู้บริโภค",
    ];
    $i1 = [];
    $i2 = [];
    $i3 = [];
    $i4 = [];
    $i5 = [];
    foreach ($billItems1 as $key => $value) {
     $i1[] = ["product_no" => $value['product_no'], "product_name" => $value['product_name']];
    }
    foreach ($billItems2 as $key => $value) {
     $i2[] = ["product_no" => $value['product_no'], "product_name" => $value['product_name']];
    }
    foreach ($billItems3 as $key => $value) {
     $i3[] = ["product_no" => $value['product_no'], "product_name" => $value['product_name']];
    }
    foreach ($billItems4 as $key => $value) {
     $i4[] = ["product_no" => $value['product_no'], "product_name" => $value['product_name']];
    }
    foreach ($billItems5 as $key => $value) {
     $i5[] = ["product_no" => $value['product_no'], "product_name" => $value['product_name']];
    }

    $data = [
      [
        "bill_code" => $bill1['code'],
        "items" => $workders1,
        "constandard" => $i1,
        "cer_procedure " => $cer_procedure,
        "cer_condition " => $cer_condition,
      ],
      [
        "bill_code" => $bill2['code'],
        "items" => $workders2,
        "con_standard" => $i2,
        "cer_procedure " => $cer_procedure,
        "cer_condition " => $cer_condition,
      ],
      [
        "bill_code" => $bill3['code'],
        "items" => $workders3,
        "con_standard" => $i3,
        "cer_procedure " => $cer_procedure,
        "cer_condition " => $cer_condition,
      ],
      [
        "bill_code" => $bill4['code'],
        "items" => $workders4,
        "con_standard" => $i4,
        "cer_procedure " => $cer_procedure,
        "cer_condition " => $cer_condition,
      ],
      [
        "bill_code" => $bill5['code'],
        "items" => $workders5,
        "con_standard" => $i5,
        "cer_procedure " => $cer_procedure,
        "cer_condition " => $cer_condition,
      ],
    ];
    return $this->api_return($data, 200);
  }
}
