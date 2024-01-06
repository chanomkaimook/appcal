 <?php
  defined('BASEPATH') or exit('No direct script access allowed');


  class Workorder extends API_Controller
  {

    public function __construct()
    {
      parent::__construct();
      $this->load->model('api/workorder_model');
    }
    /**
     *   @OA\Get(
     *     path="/task/",
     *     tags={"task"},
     *     description="list of new tasks",
     *     summary="รายการงาน",
     *   @OA\Parameter(name="has_tracking",
     *     in="query",
     *     required=false,
     *     @OA\Schema(type="string"),
     *     description="เมื่อมีการเริ่มงานจะเป็น yes (no|yes) ค่าเริ่มต้นเป็น no",
     *   ),
     *   @OA\Parameter(name="item_id",
     *     in="query",
     *     required=false,
     *     @OA\Schema(type="number")
     *   ),
     *   @OA\Parameter(name="item_code",
     *     in="query",
     *     required=false,
     *     @OA\Schema(type="string"),
     *     description="รหัสงาน",
     *   ),
     *   @OA\Parameter(name="q",
     *     in="query",
     *     required=false,
     *     @OA\Schema(type="string"),
     *     description="ชื่อเครื่องมือ]",
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
    public function index()
    {
      $this->_apiConfig([
        'methods'              => ['GET'],

      ]);
      $search = $this->input->get();
      $search['has_tracking'] = !empty($search['has_tracking']) ?  $search['has_tracking'] : 'no';
      $this->workorder_model->search_filters = $search;
      $allcount                   = $this->workorder_model->getRecordCount();
      $page_params                = page_params($allcount);
      $rows                       = $this->workorder_model->getList($page_params['per_page'], $page_params['start']);


      $items = [];
      foreach ($rows as $key => $row) {

        $row['tasks'] = [
          [
            'lab_id' => $row['lab_id'],
            'sublab_id' => $row['sublab_id'],
          ]
        ];
        $items[] = $row;
      }
      $data['per_page']    = $page_params['per_page'];
      $data['total_rows']  = $page_params['total_rows'];
      $data['page']        = $page_params['page'];
      $data['total_pages'] = $page_params['total_pages'];
      $data['result']      = $items;


      return $this->api_return($data, 200);
    }

    /**
     *   @OA\Get(
     *     path="/task/{item_id}",
     *     tags={"task"},
     *     description="detail of task",
     *     summary="รายละเอียดงาน",
     *   @OA\Parameter(name="item_id",
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
        'methods'              => ['GET'],
        'requireAuthorization' => false,
      ]);

      if ($id) {
        $items = $this->workorder_model->getOne($id);
        $items['tasks'] = [
          [
            'lab_id' => $items['lab_id'],
            'sublab_id' => $items['sublab_id'],
          ]
        ];
        return $this->api_return($items, 200);
      } else {
        return $this->api_return([
          'status'  => false,
          'message' => 'Not found',
        ], 404);
      }
    }


    /**
     * List promotion for datatable
     *
     * @return void
     */
    public function fetch_dt()
    {
      $this->_apiConfig([
        'methods'              => ['GET'],
        'requireAuthorization' => false,
      ]);
      $search      = $this->input->get();
      $this->workorder_model->search_filters = $this->input->get();
      $allcount    = $this->workorder_model->getRecordCountWorkOrder();

      $page_params = dt_page_params($allcount);
      $id          = $this->input->get();

      $bills = $this->workorder_model->getListWorkOrder($page_params['length'], $page_params['start']);

      return $this->api_return([
        "q"               => isset($this->input->get("search")['value']) ?  $this->input->get("search")['value'] : '',
        "lab_id"          => $this->input->get("labs"),
        "draw"            => intval($this->input->get("draw")),
        'recordsTotal'    => $allcount,
        'recordsFiltered' => $this->workorder_model->total_filtered_workorder,
        'data'            => $bills,
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
        'methods'              => ['GET'],
        'requireAuthorization' => false,
      ]);

      if ($id) {
        $items = $this->workorder_model->getWorkOrderById($id);
        return $this->api_return($items, 200);
      } else {
        return $this->api_return([
          'status'  => false,
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
        'methods'              => ['POST'],
        'requireAuthorization' => false,
      ]);

      $user = isset($user_data['token_data']) ? $user_data['token_data'] : [];
      if (!$user) {
        $user = [
          'id'   => $this->session->userdata('useradminid'),
          'name' => $this->session->userdata('useradminname'),
        ];
      }

      #data from tracking server
      $item_id     = $this->input->post("item_id");
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

      $billItem = $this->workorder_model->getItemById($item_id);

      if ($billItem && $status) {
        $this->db->where("id", $status);
        $rs  = $this->db->get("statusservice");
        $row = $rs->row_array();

        if ($row) {
          $options = [
            'sublab_id'    => $sublab_id,
            'sublab_name'  => $sublab_name ? $sublab_name : null,
            'status_name'  => $row['name'] ? $row['name'] : null,
            'created_by'   => isset($user['id']) ? $user['id'] : 0,
            'created_name' => isset($user['name']) ? $user['name'] : '',
            'remark'       => $remark,
          ];

          $bill_items = $this->workorder_model->setTrackingStatus($item_id, $status, $sublab_id, $billItem, $options);
          // return $this->api_return($bill_items, 200);

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
              'message'         => "เพิ่มสถานะไม่สำเร็จ",
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
