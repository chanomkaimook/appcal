<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Bill_model extends CI_Model
{
  const PROGRESS_STATUS_COMPLETED  = 15;
  public $total_rows_workorder     = 0;
  public $total_filtered_workorder = 0;

  public $total_rows     = 0;
  public $total_filtered = 0;
  public $search_filters = [];
  public $myCalibration  = "";
  public $myLabs         = [];

  public function __construct()
  {
    $this->load->database();
    $this->load->model(['lab_model', 'sublab_model', 'product_model', 'staff_model']);
  }

  public function getRecordCount()
  {
    // $this->total_rows = $this->db->count_all("bill");
    $this->_setFilter();
    $rs = $this->db->get();
    $this->total_rows = $rs->num_rows();
    $this->total_filtered = $this->total_rows;
    return $this->total_filtered;
  }



  private function _setFilter()
  {
    $userId = 0;
    $search = $this->search_filters;
    $this->db->select(
      "
      bill.id,
      bill.code,
      bill.address_name as customer_name,
      bill.agent_name,
      bill.agent_id,
      bill.company_id as customer_id,
      bill.company_id as company_id,
      bill.bill_status,
      bill.document_date,
      bill.approve_status,
      bill.status,
      bill.progress_status,
      bill.bill_status,
      bill.approve_user,
      bill.has_tracking,
      (SELECT GROUP_CONCAT(bii.lab_id) from bill_items bii where bii.bill_id=bill.id) AS list_lab,
      (SELECT pgs.name FROM statusservice AS pgs WHERE pgs.id=bill.progress_status LIMIT 1 ) as progress_status_name,
      (SELECT bt.name FROM statusservice AS bt WHERE bt.id=bill.bill_status LIMIT 1) as bill_status_name,
      (SELECT count(bi.bill_id) FROM bill_items bi where bill.id = bi.bill_id) count_items
      "
    );
    $this->db->from("bill");
    if (!empty($search['q'])) {

      $q = trim($search['q']);
      $this->db->where("(
                bill.code LIKE '%{$q}%'
                or bill.agent_name LIKE '%{$q}%'
                or bill.sender_name LIKE '%{$q}%'
                or bill.address_name LIKE '%{$q}%'
            )");
    }

    if ($search && !empty($search['id'])) {
      $this->db->where("bill.id", $search['id']);
    }

    if ($search && !empty($search['user_start'])) {
      $this->db->where("bill.user_start", $search['user_start']);
    }

    if ($search && !empty($search['code'])) {
      $this->db->where("bill.code", $search['code']);
    }

    if ($search && !empty($search['date_from'])) {
      $d1    = $search['date_from'];
      $d2    = isset($search['date_to']) && !empty($search['date_to']) ? $search['date_to'] : $search['date_from'];
      $where = " bill.document_date BETWEEN '$d1' AND '$d2' ";
      $this->db->where($where);
    }

    if (!empty($search['labs']) && $search['labs']) {
      if ($search && isset($search['labs'])) {
        $labs = $search['labs'];

        if ($labs) {
          #
          # ถ้าค้นหา lab ที่ตนเองมีสิทธิ์เข้าถึง ให้แสดงรายการที่ค้นหา
          #
          $mylabs = implode(",", $this->myLabs);
          if ($mylabs) {
            if ($labs == $mylabs) {
              $where = "labs IN($labs)";
              $this->db->having($where);
            } else {
              $where = " labs  IN(0)";
              $this->db->having($where);
            }
          } else {
          //   $where = "exists (SELECT
          // bb.*
          // FROM
          //   bill_items bb
          // WHERE
          //   bb.bill_id = bill.id
          // AND bb.lab_id IN($labs))";
          //   $this->db->where($where);
          }
        }
      }
    } else {
      # check role
      # ตัวแปร myCalibration ได้จากเส้น mylabs
      $roles = $this->myCalibration;
      if ($roles) {
        #
        # ถ้า roles เป็น all ให้แสดงทั้งหมด
        # ถ้า roles ไม่ใช่ all ให้ตรวจสอบจาก lab ที่มี
        #
        if ($this->myLabs) {
          $this->db->join("bill_items","bill.id=bill_items.bill_id","left");
          $this->check_myLabs($this->myLabs, $roles);
        }
      }
    }

    if ($search && isset($search['by'])) {
      $by = isset($search['by']) && !empty($search['by']) ? $search['by'] : [];

      if ($by) {
        switch ($by) {
          case 'date_asc':
            $this->db->order_by('bill.document_date', 'ASC');
            break;
          case 'date_desc':
            $this->db->order_by('bill.document_date', 'DESC');
            break;
            // case 'product_asc':
            //   $this->db->order_by('bill_items.product_name', 'ASC');
            //   break;
            // case 'product_desc':
            //   $this->db->order_by('bill_items.product_name', 'DESC');
            //   break;
          case 'customer_asc':
            $this->db->order_by('customer.companyName', 'ASC');
            break;
          case 'customer_desc':
            $this->db->order_by('customer.companyName', 'DESC');
            break;
          default:
            $this->db->order_by('bill.document_date', 'DESC');
            break;
        }
      }
    } else {
      $this->db->order_by('bill.document_date', 'DESC');
      $this->db->order_by('bill.id', 'DESC');
    }

    //$this->db->group_by("bill.id");
  }

  public function getList($limit, $start = 1)
  {
    $this->_setFilter();
    $this->db->limit($limit, $start);
    $data                 = $this->db->get();
    return $data->result();
  }



  public function getRecordCountWorkOrder()
  {
    $this->_setFilterWorkOrder();
    $t = $this->db->get();
    $this->total_rows_workorder = $t->num_rows();
    return $this->total_rows_workorder;
  }

  /**
   * Undocumented function
   *
   * @return void
   */
  private function _setFilterWorkOrder()
  {
    $userId = 0;
    $search = $this->search_filters;
    $find   = isset($search['search']['value']) ? $search['search']['value'] : '';

    $this->db->select(
      "
        bill.id,
        bill.code,
        bill.address_name as customer_name,
        bill.agent_name,
        bill.company_id as customer_id,
        bill.bill_status,
        bill.document_date,
        bill.approve_status,
        bill.status,
        bill.has_tracking
      "
    );
    $this->db->from("bill");
    if (!empty($find)) {

      $this->db->where("(
                bill.code LIKE '%{$find}%'
                or bill.agent_name LIKE '%{$find}%'
                or bill.sender_name LIKE '%{$find}%'
                or bill.address_name LIKE '%{$find}%'
            )");
    }

    if (isset($search['labs']) && $search['labs']) {
      if ($search && isset($search['labs'])) {
        $this->db->join('bill_items', 'bill.id = bill_items.bill_id', 'inner');
        $labs = $search['labs'];
        if ($labs) {
          #
          # ถ้าค้นหา lab ที่ตนเองมีสิทธิ์เข้าถึง ให้แสดงรายการที่ค้นหา
          #
          $mylabs = implode(",", $this->myLabs);
          if ($mylabs) {
            if ($labs == $mylabs) {
              $where = " bill_items.lab_id IN($labs)";
              $this->db->where($where);
            } else {
              $where = " bill_items.lab_id IN(0)";
              $this->db->where($where);
            }
          } else {
            $where = " bill_items.lab_id IN($labs)";
            $this->db->where($where);
          }
        }
      }
    } else {
      $roles = $this->myCalibration;
      if ($roles) {
        if ($this->myLabs) {
          $this->check_myLabs($this->myLabs, $roles);
        }
      }
    }

    if ($search && isset($search['by'])) {
      $by = isset($search['by']) && !empty($search['by']) ? $search['by'] : [];

      if ($by) {
        switch ($by) {
          case 'date_asc':
            $this->db->order_by('bill.document_date', 'ASC');
            break;
          case 'date_desc':
            $this->db->order_by('bill.document_date', 'DESC');
            break;
          case 'product_asc':
            $this->db->order_by('bill_items.product_name', 'ASC');
            break;
          case 'product_desc':
            $this->db->order_by('bill_items.product_name', 'DESC');
            break;
          case 'customer_asc':
            $this->db->order_by('bill.address_name', 'ASC');
            break;
          case 'customer_desc':
            $this->db->order_by('bill.address_name', 'DESC');
            break;
          default:
            $this->db->order_by('bill.document_date', 'DESC');
            break;
        }
      }
    } else {
      $this->db->order_by('bill.document_date', 'DESC');
      $this->db->order_by('bill.id', 'DESC');
    }

    // $this->db->group_by("bill.code");
  }

  /**
   * รายการ workd order list
   * */
  /**
   *        pgs.name as progress_status_name,
   * bt.name as bill_status_name
   * */
  public function getListWorkOrder($length = 10, $start = 0, $search = [])
  {
 
    $this->_setFilterWorkOrder();

    $this->db->limit($length, $start);
    // $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
    // $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
    $rs = $this->db->get();
    $this->total_filtered_workorder = $rs->num_rows();
    return $rs->result();
  }



  /**
   * check sublab on  tracking
   *
   * @param array|null $array
   * @param integer $code = หากเป็น 1 จะมีการ else เพื่อไม่คืนค่า ส่งกลับ
   * @return void
   */
  public function check_myLabs(array $array = null, string $roles = null, int $code = 0)
  {
    # code...
    if ($array) {
      $labs = implode(",", $array);
      if ($labs) {
        $where = " bill_items.lab_id IN($labs)";
        $this->db->where($where);
      }
    } else {
      if ($code == 1 || $roles == 'not') {
        $where = " bill_items.lab_id IN(0)";
        $this->db->where($where);
      }
    }
  }


  /**
   * แสดงใบขอรับบริการเฉพาะที่ตัวเองรับผิดชอบหรือมี lab ของตัวเอง
   *
   * @param [type] $limit
   * @param integer $start
   * @param array $search
   * @return void
   */
  public function getMyList($limit, $start = 1, $search = [])
  {
    $this->bill_model->search_filters = $this->input->get();
    $this->_setFilter();
    $this->db->limit($limit, $start);
    // $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
    // $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
    // $this->db->select(
    //   "
    //     customer.companyName as customer_name,
    //     customer.id as customer_id,
    //      bill.*,
    //      pgs.name as progress_status_name,
    //      bt.name as bill_status_name
    //      "
    // );
    // echo $this->db->get_compiled_select(null, FALSE);
    // exit;
    $data                 = $this->db->get();
    $items                = $data->result();
    return $items;
  }

  /**
   * รายละเอียดใบขอรับบริการ
   *
   * @param [type] $id
   * @return void
   */
  public function getById($id)
  {
    $this->db->where("bill.id", $id);
    $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
    $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
    // $this->db->join('customer as c', 'bill.company_id = c.id', 'left');
    $this->db->select(
      "
         bill.*,
         bill.address_name as customer_name,
         pgs.name as progress_status_name,
         bt.name as bill_status_name
         "
    );
    $data  = $this->db->get("bill");
    $item  = ($data->row_array());
    $_item = $item ? array_change_key_case($item) : [];
    $items = $this->getItemsById($id, 'tracking');
    return $item ? array_merge($_item, [
      'items' => $items,
    ]) : [];
  }
  /**
   * รายละเอียด Workorder
   *
   * @param [type] $id
   * @return void
   */
  public function getWorkorderById($id)
  {
    $this->db->where("bill.id", $id);
    $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
    $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
    $this->db->join('customer as c', 'bill.company_id = c.id', 'left');
    $this->db->select(
      "
         bill.*,
         c.companyName as customer_name,
         pgs.name as progress_status_name,
         bt.name as bill_status_name
         "
    );
    $data  = $this->db->get("bill");
    $item  = ($data->row_array());
    $_item = $item ? array_change_key_case($item) : [];
    $items = $this->getItemsById($id);
    return $item ? array_merge($_item, [
      'items' => $items,
    ]) : [];
  }
  /**
   * รายละเอียดใบขอรับบริการ
   *
   * @param [type] $code
   * @return void
   */
  public function getByCode($code)
  {
    $this->db->where("code", $code);
    $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
    $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
    $this->db->select(
      "
         bill.*,
         pgs.name as progress_status_name,
         bt.name as bill_status_name
         "
    );
    $data  = $this->db->get("bill");
    $item  = ($data->row_array());
    // $labs  = $this->lab_model->getChildrenById(15); testing
    $_item = $item ? array_change_key_case($item) : [];
    return $item ? array_merge($_item, [
      'items' => $this->getItemsById($item['id'], 'tracking'),
    ]) : [];
  }

  /**
   *  รายละเอียดรายการบิล
   *
   * @param [type] $id
   * @return void
   */
  public function getItemById($item_id)
  {
    $this->db->where("bill_items.item_id", $item_id);
    $this->db->where("bill_items.status", 1);
    $this->db->select(
      "
         bill_items.*,
         "
    );
    $data  = $this->db->get("bill_items");
    $item  = ($data->row_array());
    $_item = $item ? array_change_key_case($item) : [];
    return $item ? array_merge($_item, []) : [];
  }

  /**
   * ข้อมูลรายการเครื่องมือของบิลพร้อมข้อมูล labs
   *
   * @param [type] $id
   * @return void
   */
  public function getItemsById($id, string $type = '')
  {
    $this->db->where("bill_id", $id);
    $data  = $this->db->get("bill_items");
    $item  = $data->result_array();
    $items = [];

    if (count($item) > 0) {
      foreach ($item as $data) {
        $data = (array) $data;

        $options['bill_item_id'] = $data['item_id'];

        if ($type && $type == 'tracking') {

          //$options['tracking_status'] = $this->bill_model->getListTrackingStatus();

          $resultFindLab = $this->findLabOfBillFull($id, $data['product_id'], $options);
        } else {
          $resultFindLab = $this->findLabOfBill($id, $data['product_id'], $options);
        }

        $data['labs'] = $resultFindLab;
        //$data['tracking_status'] = $options['tracking_status'] ? $options['tracking_status'] : []; ยังไม่ได้เอาใช้
        $row     = array_change_key_case($data);
        $items[] = $row;
      }
      return $items;
    } else {
      return [];
    }
  }

  /**
   * ค้นหาห้องทดสอบทั้งหมด ของใบขอรับบริการ
   *
   * @param [type] $billId
   * @return void
   */
  public function findLabOfBill($billId = "", $productId = "", $options = [])
  {
    $mainLabs = $this->bill_model->_listMainLab($billId, $productId);

    $items                 = [];
    $options['product_id'] = $productId;
    $options['bill_id']    = $billId;
    if ($mainLabs) {
      foreach ($mainLabs as $lab) {

        $options['item_id'] = $lab['lab_id'];

        $sublabs = $this->bill_model->_listSubLabOnly($lab['lab_id'], $billId, $productId, $options);
        $data    = [
          'id'              => $lab['lab_id'],
          'code'            => $lab['lab_code'],
          'name_th'         => $lab['lab_name_th'],
          'name_en'         => $lab['lab_name_en'],
          // 'product_id'      => $lab['product_id'],
          // 'product_code'    => $lab['product_code'],
          // 'product_name_th' => $lab['product_name_th'],
          // 'product_name_en' => $lab['product_name_en'],
          // 'options' => $options,
        ];
        array_push($items, array_merge($data, [
          'sublab' => $sublabs,
        ]));
      }
    }
    return $items;
  }

  public function findLabOfBillFull($billId = "", $productId = "", $options = [])
  {
    $mainLabs = $this->bill_model->_listMainLab($billId, $productId);

    $items                 = [];
    $options['product_id'] = $productId;
    $options['bill_id']    = $billId;
    if ($mainLabs) {
      foreach ($mainLabs as $lab) {

        $options['item_id'] = $lab['lab_id'];

        $sublabs = $this->bill_model->_listSubLab($lab['lab_id'], $billId, $productId, $options);
        $data    = [
          'id'              => $lab['lab_id'],
          'code'            => $lab['lab_code'],
          'name_th'         => $lab['lab_name_th'],
          'name_en'         => $lab['lab_name_en'],
          // 'product_id'      => $lab['product_id'],
          // 'product_code'    => $lab['product_code'],
          // 'product_name_th' => $lab['product_name_th'],
          // 'product_name_en' => $lab['product_name_en'],
          // 'options' => $options,
        ];
        array_push($items, array_merge($data, [
          'sublab' => $sublabs,
        ]));
      }
    }
    return $items;
  }

  /**
   * ค้นหาห้องทดสอบหลัก
   *
   * @param string $billId
   * @return void
   */
  public function _listMainLab($billId = "", $productId = "")
  {
    $conditionBill    = $billId ? " AND bi.bill_id = {$billId} " : "";
    $conditionProduct = $productId ? " AND bi.product_id = {$productId} " : "";
    $sql              = "SELECT
        bi.item_id AS bill_item_id,
        bi.bill_id AS bill_id,
        bi.serialnumber,
        bi.model,
        bi.manufaturer_name,
        p.code AS product_code,
        p.name AS product_name_th,
        p.name AS product_name_en,
        lab.name_th AS lab_name_th,
        lab.name AS lab_name_en,
        lab.code AS lab_code,
        bi.product_id,
        bi.lab_id
    FROM
        bill_items AS bi
        LEFT JOIN product AS p ON bi.product_id = p.id
        LEFT JOIN lab ON bi.lab_id = lab.ID
        LEFT JOIN sublab ON bi.sublab_id = sublab.ID
        WHERE 1 {$conditionBill} {$conditionProduct}
        GROUP BY bi.lab_id
        ORDER BY bi.item_id ASC
        ";
    $db    = $this->db->query($sql);
    $items = array_change_key_case($db->result_array());
    return $items;
  }

  /**
   * ค้นหาห้องทดสอบรองของใบขอรับบริการ
   *
   * @param [type] $mainLabId
   * @param string $billId
   * @return void
   */
  public function _listSubLab($mainLabId, $billId = "", $productId = "", $options = [])
  {
    $conditionBill    = $billId ? " AND bi.bill_id = {$billId} " : "";
    $conditionProduct = $productId ? " AND bi.product_id = {$productId} " : "";
    $conditionItem    = $productId ? " AND bi.item_id = {$options['bill_item_id']} " : "";
    $sql              = "SELECT
        sublab.id AS id,
        sublab.code AS code,
        sublab.name_th AS name_th,
        sublab.name AS name_en,
        -- p.id AS product_id,
        -- p.code AS product_code,
        -- p.name AS product_name_th,
        -- p.name AS product_name_en,
        bi.item_id AS bill_item_id,
        -- tt.id AS current_tracking_id,
        -- tt.status_id AS current_tracking_status_id,
        -- ss.name AS current_tracking_status_name,
        -- tt.remark AS current_tracking_status_remark,
        FROM_UNIXTIME( tt.created_at, '%d-%m-%Y %H:%i' ) currrent_tracking_time

        -- (SELECT id FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_tracking_id,

        -- (SELECT status_id FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_tracking_status_id,

        -- (SELECT status_name FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_tracking_status_name,

        -- (SELECT remark FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_tracking_status_remark,

        -- (SELECT cust_id FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_customer_status_id,

        -- (SELECT cust_name FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS current_customer_status_name,

        -- (SELECT FROM_UNIXTIME(created_at,'%d-%m-%Y %H:%i') FROM bill_tracking_data WHERE bill_tracking_data.item_id = bi.item_id
        -- AND bill_tracking_data.sublab_id=sublab.id ORDER BY bill_tracking_data.id DESC
        -- LIMIT 1) AS currrent_tracking_time

    FROM
        bill_items AS bi
        LEFT JOIN product AS p ON bi.product_id = p.id
        -- LEFT JOIN bill_tracking_data as tt ON bi.sublab_id = tt.sublab_id
        LEFT JOIN bill_tracking_data as tt ON bi.item_id = tt.item_id
        LEFT JOIN statusservice AS ss ON tt.status_id = ss.id
        LEFT JOIN sublab ON bi.sublab_id = sublab.ID
        WHERE bi.lab_id = {$mainLabId} {$conditionBill} {$conditionProduct} {$conditionItem}
        GROUP BY bi.sublab_id
        ORDER BY bi.item_id ASC

        ";
    // echo $sql;
    $db   = $this->db->query($sql);
    $data = array_change_key_case($db->result_array());
    $ss   = [];
    foreach ($data as $d) {
      $st = [];
      if (isset($options['tracking_status'])) {
        foreach ($options['tracking_status'] as $tt) {
          array_push($st, [
            'sort'        => $tt['sort'],
            'status_id'   => $tt['id'],
            'status_name' => $tt['name'],
            'data'        => $this->getDataTrackingByStatus($d['bill_item_id'], $tt['id'], $d['id']),
          ]);
        }

        $cus              = [];
        $track_cus_status = $this->bill_model->getListTrackingStatus_cus($billId, $options['bill_item_id']);
        if ($track_cus_status) {
          foreach ($track_cus_status as $cc) {
            array_push($cus, [
              'sort'        => $cc['sort'],
              'status_id'   => $cc['id'],
              'status_name' => $cc['name'],
              'data'        => $this->getDataCustomerByStatus($d['bill_item_id'], $cc['id'], $d['id']),
            ]);
          }
        }
      }
      $d['tracking'] = isset($st) ? $st : [];
      $d['customer'] = isset($cus) ? $cus : [];

      array_push($ss, $d);
    }
    return $ss;
  }

  public function _listSubLabOnly($mainLabId, $billId = "", $productId = "", $options = [])
  {
    $conditionBill    = $billId ? " AND bi.bill_id = {$billId} " : "";
    $conditionProduct = $productId ? " AND bi.product_id = {$productId} " : "";
    $conditionItem    = $productId ? " AND bi.item_id = {$options['bill_item_id']} " : "";
    $sql              = "SELECT
        sublab.id AS id,
        sublab.code AS code,
        sublab.name_th AS name_th,
        sublab.name AS name_en
    FROM
        bill_items AS bi
        LEFT JOIN product AS p ON bi.product_id = p.id
        -- LEFT JOIN bill_tracking_data as tt ON bi.sublab_id = tt.sublab_id
        LEFT JOIN bill_tracking_data as tt ON bi.item_id = tt.item_id
        LEFT JOIN statusservice AS ss ON tt.status_id = ss.id
        LEFT JOIN sublab ON bi.sublab_id = sublab.ID
        WHERE bi.lab_id = {$mainLabId} {$conditionBill} {$conditionProduct} {$conditionItem}
        GROUP BY bi.sublab_id
        ORDER BY bi.item_id ASC

        ";
    // echo $sql;
    $db   = $this->db->query($sql);
    $data = array_change_key_case($db->result_array());
    $ss   = [];
    foreach ($data as $d) {
      array_push($ss, $d);
    }
    return $ss;
  }

  /**
   * รายชื่อสถานะความคืบหน้าที่เลือกได้
   *
   * @return void
   */
  public function getListProgressStatus()
  {
    $sql = "SELECT id,status_code,name,nameEn from statusservice WHERE status = 1 and document_alias = 'request_service_progress' ";
    $db  = $this->db->query($sql);
    return $db->result_array();
  }

  /**
   * รายชื่อสถานะเครื่องมือที่จะแสดงให้ลูกค้าเห็น
   *
   * @param [int] $trackingstatus_id
   * @return void
   */
  public function getCustomerStatus($trackingstatus_id = null)
  {
    if ($trackingstatus_id) {

      # ตรวจสอบสถานะ tracking เพื่อกำหนดสถานะเครื่องมือสำหรับลูกค้า
      # tracking id = customer id
      # [17] = 27-รับเครื่องมือเข้าระบบ
      # [18,19,20,26] = 28-ระหว่างการสอบเทียบ
      # [21,22,23] = 29-ระหว่างออกใบรับรองผลและใบแจ้งหนี้
      # [24] = 30-ส่งใบแจ้งหนี้ให้ลูกค้า
      # [25] = 31-ส่งมอบเครื่องมือลูกค้าสำเร็จ
      switch ($trackingstatus_id) {
        case 17:
          $cust_id = 27;
          break;

        case 18:
          $cust_id = 28;
          break;
        case 19:
          $cust_id = 28;
          break;
        case 20:
          $cust_id = 28;
          break;
        case 26:
          $cust_id = 28;
          break;

        case 21:
          $cust_id = 29;
          break;
        case 22:
          $cust_id = 29;
          break;
        case 23:
          $cust_id = 29;
          break;

        case 24:
          $cust_id = 30;
          break;

        case 25:
          $cust_id = 31;
          break;

        default:
          $cust_id = 28;
      }
    }
    $sql = "SELECT id,status_code,name,nameEn from statusservice WHERE id = $cust_id ";
    $db  = $this->db->query($sql);
    return $db->row_array();
  }

  /**
   *เปลี่ยนสถานะความคืบหน้าตามที่ระบุมา
   *
   * @param [type] $id
   * @param [type] $status
   * @return void
   */
  public function setProgressStatus($id, $status)
  {
    $sql = "UPDATE  bill SET progress_status = {$status}  WHERE id = $id";
    $db  = $this->db->query($sql);
    return $db;
  }

  /**
   * เปลี่ยนสถานะความคืบหน้าเป็นเสร็จ Completed
   *
   * @param [type] $id
   * @return void
   */
  public function setProgressToComplete($id)
  {
    $sql = "UPDATE  bill SET progress_status = 16  WHERE id = $id";
    $db  = $this->db->query($sql);
    return $db;
  }

  /**
   * รายชื่อสถานะความคืบหน้า เครื่องมือ
   *
   * @return void
   */
  public function getListTrackingStatus()
  {
    $sql = "SELECT id,status_code,name,nameEn, sort from statusservice WHERE status = 1 and document_alias = 'tracking_status'   ORDER BY sort ASC";
    $db  = $this->db->query($sql);
    return $db->result_array();
  }

  /**
   * รายชื่อสถานะความคืบหน้า เครื่องมือ
   *
   * @return void
   */
  public function getListTrackingStatus_cus()
  {
    $sql = "SELECT id,status_code,name,nameEn, sort from statusservice WHERE status = 1 and document_alias = 'tracking_cus_status'   ORDER BY sort ASC";
    $db  = $this->db->query($sql);
    return $db->result_array();
  }

  /**
   *เปลี่ยนสถานะความคืบหน้าตามที่ระบุมา
   *
   * @param [type] $id
   * @param [type] $status
   * @return void
   */
  public function setTrackingStatus($item_id, $status, $sublab_id, $billItem, $options = [])
  {
    $time       = time();
    $statusName = $options['status_name'] ? "'" . $options['status_name'] . "'" : "NULL";
    $statusId   = $status;
    $billId     = $billItem['bill_id'] ? $billItem['bill_id'] : '';
    $productId  = $billItem['product_id'] ? $billItem['product_id'] : '';
    $sublabName = $options['sublab_name'] ? "'" . $options['sublab_name'] . "'" : "NULL";

    $remark = $options['remark'] ? "'" . $options['remark'] . "'" : "NULL";

    $billItem = $this->getItemById($item_id);

    $qryCustomerStatus = $this->getCustomerStatus($statusId); // return row query
    if (!$qryCustomerStatus) {
      return [];
    }
    $custId   = $qryCustomerStatus['id'];
    $custName = $qryCustomerStatus['name'] ? "'" . $qryCustomerStatus['name'] . "'" : "NULL";

    $sql = "INSERT INTO
        bill_tracking_data  (product_id,item_id, sublab_id, sublab_name, bill_id, status_id, status_name, cust_id, cust_name, created_at, created_by, created_name, remark)
        VALUES ('$productId','$item_id', '$sublab_id',$sublabName,'$billId','$statusId',$statusName,'$custId',$custName, '$time','$options[created_by]','$options[created_name]', $remark)";

    $db = $this->db->query($sql);
    if ($db) {
      $this->db->where("item_id", $item_id);
      $this->db->where("sublab_id", $sublab_id);
      $this->db->where("status_id", $status);
      $rs = $this->db->get("bill_tracking_data");

      $row = $rs->result_array();

      // update has_tracking bill_items
      $this->db->update("bill_items", [
        "has_tracking" => 'yes',
      ], ['item_id' => $item_id]);

      // update has_tracking bill
      $this->db->update("bill", [
        "has_tracking" => 'yes',
      ], ['id' => $billItem['bill_id']]);

      return $row;
    }

    /**
     * หากต้องการ check ค่า duplicate ให้เปิดใช้งาน
     */

    // $this->db->where("item_id", $item_id);
    // $this->db->where("sublab_id", $sublab_id);
    // $this->db->where("status_id", $status);
    // $bt = $this->db->get("bill_tracking_data");
    // $find =  $bt->result_array();

    // if (!$find) {
    //     $sql ="INSERT INTO
    //     bill_tracking_data  (product_id,item_id, sublab_id, bill_id, status_id, status_name, created_at)
    //     VALUES ('$productId','$item_id', '$sublab_id','$billId','$statusId','$statusName', '$time')";
    //     $db = $this->db->query($sql);
    //     if ($db) {
    //         $this->db->where("item_id", $item_id);
    //         $this->db->where("sublab_id", $sublab_id);
    //         $this->db->where("status_id", $status);
    //         $rs = $this->db->get("bill_tracking_data");
    //         $row = $rs->result_array();
    //         return $row;
    //     }
    // }
    return [];
  }

  /**
   * เปลี่ยนสถานะความคืบหน้าเป็นเสร็จ Completed
   *
   * @param [type] $id
   * @return void
   */
  /* public function setTrackingToComplete($id)
  {
    $time       = time();
    $statusName = "";
    $statusId   = 23;
    $billId     = $billItem['bill_id'] ? $billItem['bill_id'] : '';
    $productId  = $billItem['product_id'] ? $billItem['product_id'] : '';
    $this->db->where("item_id", $item_id);
    $this->db->where("sublab_id", $sublab_id);
    $this->db->where("status_id", $status);
    $bt   = $this->db->get("bill_tracking_data");
    $find = $bt->result_array();
    $sql  = "INSERT INTO
        bill_tracking_data  (product_id,item_id, sublab_id, bill_id, status_id, status_name, created_at)
        VALUES ('$productId','$item_id', '$sublab_id','$billId','$statusId','$statusName', '$time')";
    $db = $this->db->query($sql);
    if ($db) {
      $this->db->where("item_id", $item_id);
      $this->db->where("sublab_id", $sublab_id);
      $this->db->where("status_id", $status);
      $rs  = $this->db->get("bill_tracking_data");
      $row = $rs->result_array();
      return $row;
    }
  } */

  /**
   * แสดงข้อมูล Tractking ของเครื่องมือ
   *
   * @param [type] $itemId
   * @return void
   */
  public function getTrackingDataByItemId($item_id, $sublab_id = "")
  {
    $this->db->from("bill_tracking_data as t");
    $this->db->where("t.item_id", $item_id);
    if ($sublab_id) {
      $this->db->where("t.sublab_id", $sublab_id);
    }
    $this->db->join('statusservice as s', 's.id = t.status_id', 'left');
    $this->db->join('bill_items as bt', 't.item_id = bt.item_id', 'inner');
    $this->db->order_By("t.created_at", "asc");
    $this->db->select("
          t.id,
          t.item_id,
          t.sublab_id,
          s.id status_id,
          s.name status_name,
          t.created_by,
          t.created_name,
          t.remark,
          FROM_UNIXTIME( t.created_at, '%d-%m-%Y %H:%i' ) tracking_time,
          bt.item_code,
          t.product_id,
          bt.product_name,
          t.bill_id
        ");
    $bt   = $this->db->get();
    $data = $bt->result_array();
    return $data;
  }

  public function getDataTrackingByStatus($item_id, $status_id, $sublab_id)
  {
    $this->db->where("t.item_id", intval($item_id));
    $this->db->where("t.status_id", intval($status_id));
    $this->db->where("t.sublab_id", intval($sublab_id));
    $this->db->from("bill_tracking_data AS t");
    $this->db->join('statusservice as s', 's.id = t.status_id', 'left');
    $this->db->order_By("t.created_at", "desc");
    $this->db->select("
          t.id as tracking_id,
          FROM_UNIXTIME( t.created_at, '%d-%m-%Y %H:%i' ) tracking_time,
          t.remark,
          t.created_by,
          t.created_name
        ");
    $bt   = $this->db->get();
    $data = $bt->row_array();
    return $data;
  }
  public function getDataCustomerByStatus($item_id, $cust_id, $sublab_id)
  {
    $this->db->where("t.item_id", intval($item_id));
    $this->db->where("t.cust_id", intval($cust_id));
    $this->db->where("t.sublab_id", intval($sublab_id));
    $this->db->from("bill_tracking_data AS t");
    $this->db->join('statusservice as s', 's.id = t.cust_id', 'left');
    $this->db->order_By("t.created_at", "desc");
    $this->db->select("
          t.id as tracking_id,
          FROM_UNIXTIME( t.created_at, '%d-%m-%Y %H:%i' ) tracking_time,
          t.created_by,
          t.created_name
        ");
    $bt   = $this->db->get();
    $data = $bt->row_array();
    return $data;
  }
}
