<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require APPPATH . '/libraries/API_Controller.php';

class Ctl_page extends MY_Controller
{

    private $model;
    private $title;

    public function __construct()
    {
        parent::__construct();
        $modelname = 'mdl_page';
        $this->load->model(array('mdl_page'));

        // $this->middleware(
        //     array(
        //         'access'    => [
        //             // 'index'     => ['bill','quotation'],
        //             // 'view'      => ['bill.view','bill.insert']
        //         ],
        //         // 'need'       => ['bill','quotation'],
        //         'except'    => [
        //             // 'index'      => ['workorder','bill.view','bill'],
        //             // 'view'      => [],
        //         ]
        //     )
        // );

        // set language
        $this->lang->load('user', $this->langs);
        $this->lang->load('roles', $this->langs);

        // setting
        $this->model = $this->$modelname;
        $this->title = mb_ucfirst($this->lang->line('__menu_profile'));
    }

    public function index()
    {
        // permit variable
        $this->load->library('roles');
        $array_permit = $this->roles->get_dataJS();
        $data['permit'] = $array_permit;

        $this->template->set_layout('lay_main');
        $this->template->title($this->title);
        /* $this->template->set_partial(
            'headlink',
            'partials/link/page',
            array(
                'data'  => array(
                    '<link href="' . base_url('') . 'asset/libs/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />',
                )
            )
        );
        $this->template->set_partial(
            'footerscript',
            'partials/script/page',
            array(
                'data'  => array(
                    '<script src="' . base_url('') . 'asset/js/pages/scrollbar.init.js"></script>',
                )
            )
        ); */
        $this->template->build('pages/index',$data);
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
        $this->load->helper('my_date');

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
                $sub_data['code'] = textShow($row->code);
                $sub_data['name'] = textLang($row->name,$row->name_us,false);

                $sub_data['workstatus'] = array(
                    "display"   => $dom_workstatus,
                    "data"      =>  array(
                        'id'    => $row->workstatus,
                    ),
                );

                $sub_data['status'] = array(
                    "display"   => $dom_status,
                    "data"   => array(
                        'id'    => $row->status_offview,
                    ),
                );

                $sub_data['user_active'] = array(
                    "display"   => $user_active,
                    "data"   => array(
                        'id'    => $user_active_id,
                    ),
                );

                $sub_data['date_active'] = array(
                    "display"   => toThaiDateTimeString($query_date, 'datetime'),
                    "timestamp" => date('Y-m-d H:i:s', strtotime($query_date))
                );

                $data_result[] = $sub_data;
            }
        }

        $result = array(
            "recordsTotal"      =>     count($data),
            "recordsFiltered"   =>     $count,
            "data"              =>     $data_result
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
