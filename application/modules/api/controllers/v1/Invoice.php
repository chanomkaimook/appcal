<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Invoice extends API_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('workorder/workorder_model');
    $this->load->model(array('api/bill_model', 'api/invoice_model'));
    $this->load->helper('promotion');
  }

  public function index()
  {

    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    $id = $this->input->get('id');
    if ($id && $id > 0) {
      $product = $this->bill_model->getById($id);
      return $this->api_return($product, 200);
    } else {

      $allcount                   = $this->bill_model->getRecordCount();
      $page_params                = page_params($allcount);
      $config['base_url']         = base_url() . 'api/v1/invoice';
      $config['use_page_numbers'] = true;
      $config['total_rows']       = $allcount;
      $config['per_page']         = $page_params['per_page'];
      $rows                       = $this->bill_model->getList($page_params['per_page'], $page_params['start']);

      // Initialize
      $this->pagination->initialize($config);

      $data['result']      = $rows;
      $data['per_page']    = $page_params['per_page'];
      $data['total_rows']  = $page_params['total_rows'];
      $data['page']        = $page_params['page'];
      $data['total_pages'] = $page_params['total_pages'];

      return $this->api_return($data, 200);
    }
  }

  public function all_active()
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    $data = $this->promotion_model->getAllActive();
    return $this->api_return($data, 200);
  }
  public function all_inactive()
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    $data = $this->promotion_model->getAllInactive();
    return $this->api_return($data, 200);
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
    $allcount    = $this->bill_model->getRecordCountWorkOrder();
    $search      = $this->input->get();
    $page_params = dt_page_params($allcount);
    $id          = $this->input->get();

    $bills = $this->bill_model->getListWorkOrder($page_params['length'], $page_params['start'], $search);

    $dataItems = [];
    if ($bills) {
      $index = 0;

      foreach ($bills as $row) {
        $optional = [];
        $optional['where'] = array('invoice.bill_id' => $row->id);
        $optional['group_by'] = array('invoice.bill_id');
        $counttotal = $this->invoice_model->get_dataCount(null, $optional);

        $bills[$index]->count_invoice = $counttotal;

        $index++;
      }
    }

    return $this->api_return([
      "q"               => $this->input->get("search")['value'],
      "lab_id"          => $this->input->get("lab_id"),
      "draw"            => intval($this->input->get("draw")),
      'recordsTotal'    => $allcount,
      'recordsFiltered' => $this->bill_model->total_rows_workorder,
      'data'            => $bills,
      'parme' => $page_params,
      'found' => $this->bill_model->total_filtered_workorder,
    ], 200);
  }

  public function list($id)
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {

      $optional['select'] = 'invoice.id as ID,
      invoice.code as CODE,
      invoice.paid as PAID,
      ';
      $optional['where'] = array(
        'invoice.bill_id' => $id,
      );
      $optional['group_by'] = array('invoice.bill_id');
      $invoice_data = $this->invoice_model->get_dataWork(null, $optional);

      return $this->api_return($invoice_data, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }
  public function view($id)
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {

      $optional['where'] = array(
        'invoice_items.bill_id' => $id,
      );
      $invoice_data = $this->invoice_model->get_dataWork(null, $optional);

      return $this->api_return($invoice_data, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }

  public function get_workOrder($id)
  {
    $this->_apiConfig([
      'methods'              => ['GET'],
      'requireAuthorization' => false,
    ]);

    if ($id) {
      $items = $this->bill_model->getById($id);

      $index = 0;
      foreach ($items['items'] as $key => $row) {
        // print_r($row)."--------";
        $optional = [];
        $optional['where'] = array(
          'invoice.bill_id' => $row['bill_id'],
          'invoice_items.bill_items_id' => $row['item_id'],
        );
        $invoice_data = $this->invoice_model->get_dataWork(null, $optional);

        $items['items'][$index]['invoice'] = $invoice_data ? $invoice_data[0]->CODE : "";
        $items['items'][$index]['invoice_paid'] = $invoice_data ? $invoice_data[0]->PAID : "";

        $index++;
      }

      

      return $this->api_return($items, 200);
    } else {
      return $this->api_return([
        'status'  => false,
        'message' => 'Not found',
      ], 404);
    }
  }

  public function insert_item()
  {
    $this->_apiConfig([
      'methods'              => ['POST'],
      'requireAuthorization' => false,
    ]);

    if (count($this->input->post())) {
      $items = $this->invoice_model->insert_item();

      $result_success = true;
      $result_message = "สร้างใบแจ้งหนี้สำเร็จ";
    } else {
      $result_success = false;
      $result_message = "ไม่มีข้อมูล";
    }

    // print_r($this->input->post());

    return $this->api_return([
      'success'         => $result_success,
      'message'         => $result_message,
    ], 200);
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
      ], 401);
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

    $billItem = $this->bill_model->getItemById($item_id);

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

        $bill_items = $this->bill_model->setTrackingStatus($item_id, $status, $sublab_id, $billItem, $options);
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
