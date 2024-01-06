<?php
defined('BASEPATH') or exit('No direct script access allowed');
 
class Staff_model extends CI_Model
{
    public $table_name = 'staff';

    public function getAll()
    {
        $this->db->from($this->table_name)
        ->where(['status' => 1])
        ->order_by('name', 'ASC');
        $rs = $this->db->get();
        return $rs->result();
    }


    public function getOne($id)
    {
        $this->db->from($this->table_name)
        ->where(['id' => $id]);
        $rs = $this->db->get();
        return $rs->row_array();
    }

    public function getClientd($id)
    {
        $this->db->from($this->table_name)
        ->where(['id' => $id]);
        $rs = $this->db->get();
        return $rs->row_array();
    }

    public function login() {
        return $this->login_model->checkLogin();
    }
}
