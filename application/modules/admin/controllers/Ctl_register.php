<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ctl_register extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('mdl_register');

        $this->middleware();
    }

    public function index()
    {

        $this->template->set_layout('lay_datatable');
        $this->template->title(mb_ucfirst($this->lang->line('__menu_register')));
        $this->template->build('register');
    }

    public function fetch_data()
    {
        # clear data register less
        $this->mdl_register->del_user_less();


        $data = $this->mdl_register->get_data_staff();

        $data_result = [];

        if ($data) {
            foreach ($data as $row) {
                $sub_data = [];

                $sub_data['id'] = $row->id;
                $sub_data['role'] = $row->role;
                $sub_data['name'] = $row->name;
                $sub_data['lastname'] = $row->lastname;
                $sub_data['username'] = $row->username;
                $sub_data['date_start'] = $row->date_starts;
                $sub_data['date_start_text'] = toDateTimeString($row->date_start, 'datetimehm');
                $sub_data['verify'] = $row->verify;

                $data_result[] = $sub_data;
            }
        }

        $result = array(
            "recordsTotal" => count($data),
            "recordsFiltered" => count($data),
            "data" => $data_result
        );

        echo json_encode($result);
    }

    public function update_verify()
    {
        $error = 1;
        $message = 'ไม่พบรายการ';

        if ($this->input->post('id')) {

            #
            # check account already
            $sql = $this->db->from('staff')
                ->where('username', $this->input->post('username'))
                ->where('verify is not null', null, false)
                ->where('status', 1)
                ->get();
            $num_staff = $sql->num_rows();
            if ($num_staff) {
                $result = array(
                    'error' => $error,
                    'message' => 'username มีการใช้งานแล้ว',
                );
                echo json_encode($result);

                exit;
            }

            $result = array(
                'error' => 0,
                'message' => "ยืนยันสำเร็จ",
            );

            #
            # update staff verify
            $data_update = array(
                'verify' => $this->session->userdata('user_code')
            );
            $this->db->where('id', $this->input->post('id'));
            $this->db->update('staff', $data_update);

            // keep log
            log_data(array('verify', 'update', $this->db->last_query()));

            $error = 0;
            $message = 'ยืนยันตัวตนแล้ว ';
        }

        $result = array(
            'error' => $error,
            'message' => $message
        );
        echo json_encode($result);
    }

}
