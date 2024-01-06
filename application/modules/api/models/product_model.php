<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {

    public $myCalibration = "";
    public $myLabs = [];

    public $filter_searchs = [];
    public $total_rows = 0;
    public $total_filtered = 0;

    public function __construct(){

        $this->load->database();

    }

    public function getList($limit, $start){
        $this->_setFilter();
        $this->db->limit($limit, $start);
        $data = $this->db->get("product");
        return $data->result_array();

    }
    private function _setFilter() {
        $search = $this->filter_searchs;
        if(isset($search['q'])) {
            $this->db->like("name_th", $search['q']);
            $this->db->or_like("name", $search['q']);
        }
        if(!empty($search['id'])) {
            $this->db->where("id", $search['id']);

        }
    }
    public function getRecordCount() {
        $this->_setFilter();  
        $rs = $this->db->get('product');
        // $this->db->select('count(*) as countAll');
        // $query = $this->db->get();
        // $result = $query->result_array();
        // $this->total_rows = $result[0]['countAll'];
        $this->total_filtered = $rs->num_rows();
        return  $this->total_rows = $this->total_filtered;
    }


    public function getById($id){

        $this->db->where("id", $id);
        $data = $this->db->get("product");
        return $data->row_array();

    }

    /**
     * แสดงข้อมูลเครื่องมือร่วมกับใบขอรับบริการของเครื่องมือนั้น
     *
     * @param [type] $limit
     * @param integer $start
     * @param array $search
     * @return void
     */
    public function getByIdCalibrate($limit, $start = 1, $search = [])
    {
        $this->search_filters = $search;
        $this->_setFilter();
        $this->db->limit($limit, $start);
        $this->db->join('statusservice as pgs', 'bill.progress_status = pgs.id', 'left');
        $this->db->join('statusservice as bt', 'bill.bill_status = bt.id', 'left');
        $this->db->select(
            "
         bill.*,
         pgs.name as progress_status_name,
         bt.name as bill_status_name
         "
        );
        // echo $this->db->get_compiled_select(null, FALSE);
        // exit;
        $data = $this->db->get("bill");
        $this->total_filtered = $data->num_rows();
        $items = $data->result();
        $this->getRecordCount();
        return $items;
    }

}
