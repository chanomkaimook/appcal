<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mdl_register extends CI_Model

{

    public function __construct()
    {
        parent::__construct();
    }

    public function get_data_staff()
    {
        $query = $this->db->select('
            employee.name as name,
            employee.lastname as lastname,
            employee.email as email,
            employee.position as position,
            employee.department as department,
            employee.section as section,
            staff.id as id,
            staff.username as username,
            staff.verify as verify,
            staff.date_starts as date_starts,
        ')
            ->join('employee', 'staff.employee_id = employee.id', 'left')
            ->where('staff.verify is null')
            ->where('staff.status', 1)
            ->get('staff');

        return $query->result();
    }

    public function del_user_less()
    {
        # code...
        $sql = $this->db->select('id,employee_id')
            ->from('staff')
            ->where('DATEDIFF(NOW(), date_starts) > 0', null, false)
            ->where('verify is null', null, false)
            ->get();
        $number = $sql->num_rows();
        if ($number) {

            #
            # delete employee
            foreach ($sql->result() as $row) {
                $this->db->where('id', $row->ID);
                $this->db->delete('employee');
            }

            #
            # delete staff
            $this->db->query("DELETE FROM staff WHERE DATEDIFF(NOW(), DATE_STARTS) > 0 and verify is null");
        }

        return true;
    }

    public function update_verify()
    {
        $result = '';
        if ($this->input->post('id')) {

            $result = array(
                'error' => 0,
                'text' =>  "ยืนยันสำเร็จ",
            );

            $data_update = array(
                'verify' => $this->session->userdata('user_code')
            );
            $this->db->where('id', $this->input->post('id'));
            $this->db->update('staff', $data_update);

            // keep log
            log_data(array('update', 'update', $this->db->last_query()));

            // insert permit_control
            $this->load->model('mdl_permit');
            $this->mdl_permit->insert_data($this->input->post('id'));
        }
        return $result;
    }
}
