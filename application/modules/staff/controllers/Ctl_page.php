<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ctl_page extends MY_Controller
{

    private $model;
    private $title;

    public function __construct()
    {
        parent::__construct();
        $modelname = 'mdl_employee';
        $this->load->model(array('mdl_employee'));

        $this->middleware();

        // setting
        $this->model = $this->$modelname;
        $this->title = mb_ucfirst($this->lang->line('__menu_employee'));
    }

    public function index()
    {
        $this->template->set_layout('lay_datatable');
        $this->template->title($this->title);
        $this->template->build('pages/index');
    }

    /**
     *
     * get data to datatable
     * non-severside (load all data before display)
     *
     * # whois() = my_sql_helper
     * # textShow() = my_text_helper
     * # workstatus() = my_html_helper
     * # status_offview() = my_html_helper
     * # toThaiDateTimeString() = my_date_helper
     * 
     * @return void
     */
    public function get_dataTable()
    {

        $request = $_REQUEST;

        $data = $this->model->get_dataShow();
        $count = $this->model->get_data_all();

        $data_result = [];

        if ($data) {
            foreach ($data as $row) {

                $user_active_id = $row->user_starts ? $row->user_starts : $row->user_update;
                $user_active = whois($user_active_id);

                if ($row->date_update) {
                    $query_date = $row->date_update;
                    $user_active = $this->lang->line('_text_edit') . " " . $user_active;
                } else {
                    $query_date = $row->date_starts;
                }

                $dom_workstatus = workstatus($row->workstatus, 'status');
                $dom_status = status_offview($row->status_offview);

                $sub_data = [];

                $sub_data['id'] = $row->id;
                $sub_data['employee'] = array(
                    "display" => textShow($row->employee_name),
                    "data" => array(
                        'id' => $row->id,
                        'name' => textShow($row->name),
                        'lastname' => textShow($row->lastname),
                        'email' => textShow($row->email),
                        'tel' => textShow($row->tel),
                        'worktype' => textShow($row->worktype_id),
                    )
                );

                $sub_data['status'] = array(
                    "display" => $dom_status,
                    "data" => array(
                        'id' => $row->status,
                    ),
                );

                $sub_data['user_active'] = array(
                    "display" => $user_active,
                    "data" => array(
                        'id' => $user_active_id,
                    ),
                );

                $sub_data['date_active'] = array(
                    "display" => toDateTimeString($query_date, 'datetimehm'),
                    "timestamp" => date('Y-m-d H:i:s', strtotime($query_date))
                );

                $data_result[] = $sub_data;
            }
        }

        $result = array(
            "recordsTotal" => count($data),
            "recordsFiltered" => $count,
            "data" => $data_result
        );

        echo json_encode($result);
    }

    //  *
    //  * CRUD
    //  * read
    //  * 
    //  * get data for item id
    //  *
    public function get_data()
    {
        $request = $_REQUEST;
        $item_id = $request['id'];
        $data = $this->model->get_data($item_id);

        $result = $data;
        echo json_encode($result);
    }

    //  *
    //  * CRUD
    //  * insert
    //  * 
    //  * insert data
    //  *
    public function insert_data()
    {
        # code...
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $returns = $this->model->insert_data();
            echo json_encode($returns);
        }
    }

    //  *
    //  * CRUD
    //  * update
    //  * 
    //  * update data
    //  *
    public function update_data()
    {
        # code...
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $returns = $this->model->update_data();
            echo json_encode($returns);
        }
    }


    //  *
    //  * CRUD
    //  * delete
    //  * 
    //  * delete data
    //  *
    public function delete_data()
    {
        # code...
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $returns = $this->model->delete_data();
            echo json_encode($returns);
        }
    }
}
