<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lab_model extends CI_Model
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
        $this->db->order_by('name_th', "ASC");
        $this->db->order_by('name', "ASC");
        $data = $this->db->get("lab");
        return $data->result();
    }
    private function _setFilter() {
        $search = $this->filter_searchs;
        if(!empty($search['q'])) {
            $this->db->like("name_th", $search['q']);
            $this->db->like("name", $search['q']);
        }
        if(!empty($search['id'])) {
            $this->db->where("id", $search['id']);
      
        }
    }
    public function getRecordCount()
    {
        $this->_setFilter();  
   
        // $this->db->select('count(*) as countAll');
        $rs = $this->db->get("lab");
        $this->total_rows = $rs->num_rows();
        // $result = $query->result_array();
        // $this->total_rows = $result[0]['countAll'];
        return  $this->total_filtered = $this->total_rows;
    }


    public function getById($id)
    {
        $this->db->where("id", $id);
        $data = $this->db->get("lab");
        $row = $data->row_array();
        return  !empty($row) ? array_change_key_case($row, CASE_LOWER) : [];
    }


    public function getChildrenById($id)
    {
        $data = [];
        $this->db->where("lab_id", $id);
        $data = $this->db->get("sublab");
        $items = $data->result_array();
        $temp = [];
        foreach ($items as $item) {
            $temp[] = array_change_key_case((array) $item);
        }
        return $temp;
    }
}
