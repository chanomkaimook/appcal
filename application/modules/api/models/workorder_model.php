<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Workorder_model extends CI_Model
{
  public const PROGRESS_STATUS_COMPLETED = 15;
  public $total_rows_workorder = 0;
  public $total_filtered_workorder = 0;

  public $total_rows = 0;
  public $total_filtered = 0;
  public $search_filters = [];
  public $myCalibration = "";
  public $myLabs = [];

  public function __construct()
  {
    $this->load->database();
    $this->load->library('pagination');
    $this->load->model(['lab_model', 'sublab_model', 'product_model', 'staff_model']);
  }

  public function getRecordCount()
  {
    $this->_setFilter();
    $rs = $this->db->get();
    $this->total_filtered = $rs->num_rows();
    return $this->total_rows = $this->total_filtered;
  }


  public function getRecordCountWorkOrder()
  {
    $this->_setFilterWorkorder();
    $rs = $this->db->get();
    $this->total_filtered_workorder = $rs->num_rows();
    return $this->total_rows_workorder = $this->db->count_all("bill");
  }



  private function _setFilter()
  {
    $this->db->query("SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));");
    $search = $this->search_filters;
    $this->db->from("bill as b");
    // $this->db->select(
    //   "
    //   bi.item_id,
    //   bi.sorter,
    //   bi.item_code,
    //   bi.item_name,
    //   bi.product_id,
    //   bi.product_no,
    //   bi.product_name,
    //   bi.manufaturer_name,
    //   bi.model,
    //   bi.serialnumber,
    //   bi.id_no,
    //   bi.has_tracking,
    //   bi.barcode_no,
    //   bi.pickup_date,
    //   bi.lab_id,
    //   bi.sublab_id,
    //   b.document_date,
    //   DATE_ADD(b.document_date, INTERVAL 1 DAY) as comitment_date,
    //   bi.status,
    //   bi.status as bill_status_name,
    //   bi.hour,
    //   bi.point,
    //   bi.point_price
    //   "
    // )->join("bill as b", "b.id = bi.bill_id", "inner");

    if (!empty($search['q'])) {

      $q = trim($search['q']);
      $this->db->where("(
                b.code LIKE '%{$q}%'
                or b.agent_name LIKE '%{$q}%'
                or b.sender_name LIKE '%{$q}%'
                or b.id = {$q}
            )");
    }

    if (!empty($search['bill_status'])) {
      $this->db->where("b.bill_status", $search['bill_status']);
    }
    // if ($search && !empty($search['item_id'])) {
    //   $this->db->where("bi.item_id", $search['item_id']);
    // }

    // if ($search && !empty($search['item_code'])) {
    //   $this->db->where("bi.item_code", $search['item_code']);
    // }

    if ($search && !empty($search['user_start'])) {
      $this->db->where("b.user_start", $search['user_start']);
    }

    if ($search && !empty($search['date_from'])) {
      $d1 = $search['date_from'];
      $d2 = !empty($search['date_to']) && !empty($search['date_to']) ? $search['date_to'] : $search['date_from'];
      $where = " b.document_date BETWEEN '$d1' AND '$d2' ";
      $this->db->where($where);
    }


    if ($search && !empty($search['by'])) {
      $by = isset($search['by']) && !empty($search['by']) ? $search['by'] : [];

      if ($by) {
        switch ($by) {
          case 'date_asc':
            $this->db->order_by('b.document_date', 'ASC');
            break;
          case 'date_desc':
            $this->db->order_by('b.document_date', 'DESC');
            break;
          case 'customer_asc':
            $this->db->order_by('b.companyName', 'ASC');
            break;
          case 'customer_desc':
            $this->db->order_by('b.companyName', 'DESC');
            break;
          default:
            $this->db->order_by('b.document_date', 'DESC');
            break;
        }
      }
    } else {
      $this->db->order_by('b.document_date', 'DESC');
      // $this->db->order_by('bi.item_code', 'ASC');
    }
  }


  private function _setFilterWorkorder()
  {
    $search = $this->search_filters;
    $this->db->query("SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));");
    $this->db->select(
      "
      b.id,
      b.code,
      b.address_name as customer_name,
      b.status,
      b.approve_status,
      b.bill_status,
      b.document_date,
      "
    )
      ->from("bill as b")
      ->join("bill_items as bi", "bi.bill_id=b.id", "left");

    if (!empty($search['q'])) {

      $q = trim($search['q']);
      $this->db->where("(
                bi.code LIKE '%{$q}%'
          
            )");
    }

    if ($search && !empty($search['id'])) {
      $this->db->where("b.id", $search['id']);
    }

    if ($search && !empty($search['labs'])) {
      $this->db->where("bi.lab_id", $search['labs']);
    }

    if ($search && !empty($search['user_start'])) {
      $this->db->where("b.user_start", $search['user_start']);
    }

    if ($search && !empty($search['code'])) {
      $this->db->where("b.code", $search['code']);
    }
    if ($search && !empty($search['date_from'])) {
      $d1 = $search['date_from'];
      $d2 = isset($search['date_to']) && !empty($search['date_to']) ? $search['date_to'] : $search['date_from'];
      $where = " b.document_date BETWEEN '$d1' AND '$d2' ";
      $this->db->where($where);
    }


    if ($search && !empty($search['by'])) {
      $by = isset($search['by']) && !empty($search['by']) ? $search['by'] : [];

      if ($by) {
        switch ($by) {
          case 'date_asc':
            $this->db->order_by('b.document_date', 'ASC');
            break;
          case 'date_desc':
            $this->db->order_by('b.document_date', 'DESC');
            break;
          case 'product_asc':
            $this->db->order_by('bi.product_name', 'ASC');
            break;
          case 'product_desc':
            $this->db->order_by('bi.product_name', 'DESC');
            break;
          case 'customer_asc':
            $this->db->order_by('b.companyName', 'ASC');
            break;
          case 'customer_desc':
            $this->db->order_by('b.companyName', 'DESC');
            break;
          default:
            $this->db->order_by('b.document_date', 'DESC');
            break;
        }
      }
    } else {
      $this->db->order_by('b.document_date', 'DESC');
      $this->db->order_by('b.id', 'DESC');
    }
    $this->db->group_by("b.code");
  }

  public function getList($limit = 50, $start = 1, $search = [])
  {


    $this->_setFilter();
    $this->db->limit($limit, $start);
    $rs = $this->db->get();
    return $rs->result_array();
  }

  public function getListWorkOrder($limit, $start = 1, $search = [])
  {


    $this->_setFilterWorkorder();
    $c = $this->db->get();
    $this->total_filtered_workorder = $c->num_rows();
    $this->db->limit($limit, $start);
    $this->_setFilterWorkorder();
    $rs = $this->db->get();

    return $rs->result();
  }

  public function getWorkOrderById($id)
  {
    $this->_setFilterWorkorder();
    $this->db->where("id", $id);
    $rs = $this->db->get();
    return $rs->row_array();
  }

  public function getById($id)
  {
    $this->db->where("id", $id);
    $data = $this->db->get("bill");
    $row = $data->row_array();
    return !empty($row) ? array_change_key_case($row, CASE_LOWER) : [];
  }

  /**
   * ข้อมูลรายการเครื่องมือของบิลพร้อมข้อมูล labs
   *
   * @param [type] $id
   * @return void
   */
  public function getItemsById($id, string $type = '')
  {
    $this->db->select("bill_items.*, p.calhour");
    $this->db->where("bill_id", $id);
    $this->db->join("product p","bill_items.product_id = p.id","left");
    $data = $this->db->get("bill_items");
    $item = $data->result_array();
    $items = [];

    if (count($item) > 0) {
      foreach ($item as $data) {
        $row = array_change_key_case((array) $data);

        $items[] = [
          "item_id" => $row["item_id"],
          // "bill_id" => $row["bill_id"],
          "product_id" => $row["product_id"],
          "product_name" => $row["product_name"],
          "item_code" => $row["item_code"],
          "lab_id" => $row["lab_id"],
          "sublab_id" => $row["sublab_id"],
          //"duration" => floatVal($row["hour"]),
          "duration" => floatVal($row["calhour"]),
          "sorter" => floatVal($row["sorter"]),

        ];
      }
      return $items;
    } else {
      return [];
    }
  }
}