<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Sublab_model extends CI_Model
{
    public $filter_searchs = [];
    public $total_rows = 0;
    public $total_filtered = 0;
    public function __construct()
    {
        $this->load->database();
    }

    public function getList($limit, $start, $filter = [])
    {
        if(isset($filter['lab_id'])) {
            $this->db->where(["lab_id" => $filter['lab_id']]);
        }
        $this->sublab_model->filter_searchs = $this->input->get();
        $this->_setFilter();
        $this->db->limit($limit, $start);
        $data = $this->db->get();
        $_items = $data->result_array();
        $items = [];
        if ($_items) {
            foreach ($_items as $item) {
                $items[] = array_change_key_case((array) $item);
            }
        }
        return $items ? $items : [];
    }
    private function _setFilter()
    {
        $search = $this->filter_searchs;
        $this->db->from("sublab");
        if (!empty($search['q'])) {
            $this->db->like("name_th", $search['q']);
            $this->db->like("name", $search['q']);
        }
        if (!empty($search['id'])) {
            $this->db->where("id", $search['id']);
        }
    }

    public function getRecordCount()
    {
        $this->_setFilter();
        // $this->db->from('sublab');
        // $this->db->select('count(*) as countAll');
        // $query = $this->db->get();
        // $result = $query->result_array();
        // $this->total_rows = $result[0]['countAll'];
        $rs = $this->db->get();
        $this->total_filtered = $rs->num_rows();
        return  $this->total_rows = $this->total_filtered;
    }


    public function getById($id)
    {
        $this->db->where("id", $id);
        $data = $this->db->get("sublab");
        $row = $data->row_array();
        return $row ? array_change_key_case($row) : [];
    }
}
