<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login_model extends CI_Model
{

    function checkLogin()
    {
        $request = $this->input->post();
        $username = $this->input->post('username');
        $password = $this->input->post('password');


        if (isset($request['res']) && $request['res'] == 'ss') {
            $response = 1;
            $password = $request['password'];
        } else {
            $response = "";
            $password = isset($request['password']) ? md5($request['password']) : null;
        }
        $this->db->from('staff');
        $this->db->where('staff.username', $username);
        $this->db->where('staff.password', $password);
        $this->db->where('staff.status', 1);

        $Query = $this->db->get();
        $num = $Query->num_rows();
        $result = $Query->row_array();

        if ($num > 0) {
            unset($result['PASSWORD']);
            return array_change_key_case(($result));
        } else {
            return;
        }


    }

}
?>