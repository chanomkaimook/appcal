<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customer_model extends CI_Model
{

  public $filter_searchs = [];
  public $total_rows = 0;
  public $total_filtered = 0;
  
  public function __construct()
  {

    $this->load->database();
  }

  public function getList($limit, $start)
  {
    $this->_setFilter();  
    $this->db->limit($limit, $start);
    $data = $this->db->get("customer");
    $items = $data->result_array();
    $temp = [];
    if($items) {
      foreach($items as $item) {
        $temp[] =   $item ? array_change_key_case($item) : [];
      }
    }
    return $temp;
  }
  private function _setFilter() {

    $search = $this->filter_searchs;
    if(!empty($search['q'])) {
        $this->db->like("companyName", $search['q']);
        $this->db->like("companyNameEn", $search['q']);
    }
    if(!empty($search['id'])) {
        $this->db->where("id", $search['id']);
    }
}
  public function getRecordCount()
  {
    $this->_setFilter();  

    // $this->db->select('count(*) as countAll');
    $rs = $this->db->get('customer');
    $this->total_filtered = $rs->num_rows();
    // $result = $query->result_array();
    // $this->total_rows = $result[0]['countAll'];
    return  $this->total_rows = $this->total_filtered;
  }


  public function getById($id)
  {

    $this->db->where("id", $id);
    $q = $this->db->get("customer");

    $num = $q->num_rows();
    if($num){
      $result = array_change_key_case($q->row_array());
    }else{
      $result = [];
    }

    return $result;
  }

  public function getDeliveryAddresses($customerId)
  {
    $this->db->where("customer_id", $customerId);
    $data = $this->db->get("customer_address");
    return $data ? array_change_key_case($data->result_array()) : [];
  }

  public function getCertAddresses($customerId)
  {
    $this->db->where("customer_id", $customerId);
    $data = $this->db->get("customer_cert");
    return $data ? array_change_key_case($data->result_array()) : [];
  }
  public function getContacts($customerId)
  {
    $this->db->where("customer_id", $customerId);
    $data = $this->db->get("agent");
    return $data ? array_change_key_case($data->result_array()) : [];
  }
}
