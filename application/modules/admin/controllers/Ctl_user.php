<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ctl_user extends MY_Controller
{
    private $model;
    private $title;

    public function __construct()
    {
        parent::__construct();
        $modelname = 'mdl_user';

        $this->middleware();

        $this->load->model('mdl_user');
        $this->load->model('mdl_roles');
        $this->load->model('mdl_role_focus');
        // $this->load->model('mdl_register');
        // $this->load->model('mdl_staff');

        $this->middleware(
            array(
                'access'    => [
                    // 'index'     => ['bill','quotation'],
                    // 'view'      => ['bill.view','bill.insert']
                ],
                'need'       => ['administrator'],
                'except'    => [
                    'get_user'      => [],
                ]
            )
        );

        $this->load->library('Permit');

        // set language
        $this->lang->load('user', $this->langs);
        $this->lang->load('roles', $this->langs);

        // setting
        $this->model = $this->$modelname;
        $this->title = mb_ucfirst($this->lang->line('__menu_users'));
    }

    public function index()
    {
        $data['role'] = $this->mdl_roles->get_dataShow();

        // permit variable
        $this->load->library('roles');
        $array_permit = $this->roles->get_dataJS();
        $data['permit'] = $array_permit;

        $this->template->set_layout('lay_datatable');
        $this->template->title($this->title);
        $this->template->set_partial(
            'headlink',
            'partials/link/page',
            array(
                'data'  => array(
                    '<link href="' . base_url('') . 'asset/libs/treeview/style.css" rel="stylesheet" type="text/css" />',
                )
            )
        );
        $this->template->set_partial(
            'footerscript',
            'partials/script/page',
            array(
                'data'  => array(
                    '<script src="' . base_url('') . 'asset/libs/treeview/jstree.min.js"></script>',
                )
            )
        );
        $this->template->build('users/index', $data);
    }

    public function fetch_data()
    {



        if ($item_id = $this->input->get('id')) {
            $this->load->model('mdl_staff');
            $data[0] = $this->mdl_staff->get_data($item_id);
        } else {
            $data = $this->model->get_data_staff();
        }

        $icon_head = '<i class="mdi mdi-star text-warning mdi-18px" title="verified user"></i>';

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

                $dom_status = status_online($row->status);

                $sub_data = [];
                $date_start = toDateTimeString($row->date_starts, 'datetimehm');
                $date_update = textNull($row->date_update) ? toDateTimeString($row->date_update, 'datetimehm') : null;

                $sub_data['id'] = $row->id;
                $sub_data['name'] = textLang($row->name, $row->name_us, false);
                $sub_data['lastname'] = textLang($row->lastname, $row->lastname_us, false);
                $sub_data['username'] = $row->username;
                $sub_data['date_starts'] = array(
                    "display"   => $date_start,
                    "timestamp" => date('Y-m-d H:i:s', strtotime($row->date_starts))
                );

                $sub_data['date_active'] = array(
                    "display"   => $date_update,
                    "timestamp" => date('Y-m-d H:i:s', strtotime($row->date_update))
                );

                $sub_data['user_active'] = array(
                    "display"   => $user_active,
                    "data"   => array(
                        'id'    => $user_active_id,
                    ),
                );

                $sub_data['status'] = array(
                    "display"   => $dom_status,
                    "data"   => array(
                        'id'    => $row->status,
                    ),
                );

                $data_result[] = $sub_data;
            }
        }
        $result = array(
            'data' => $data_result
        );

        echo json_encode($result);
    }

    //  *
    //  * CRUD
    //  * read
    //  * 
    //  * get data for item id
    //  *
    public function get_user()
    {
        $this->load->library('roles');

        $user_login = $this->user_login;
        $request = $_REQUEST;

        if ($request['id']) {
            $user_login = $request['id'];
        }

        $array_permit = [];
        $array_permit_only = [];

        $data = $this->model->get_data_staff();
        $user_permit = $this->permit->get_dataPermitSet($user_login);
        // $data_role_focus = $this->mdl_role_focus->get_data();

        $item_id = $user_permit['roles_id_list'];
        $array_permit = $this->roles->get_dataRolesJS($item_id, null, "result_array");

        $array_roles_child = $this->roles->get_dataRolesGroup($item_id, null, "result_array");


        $permit_all = $array_permit;


        // permit id
        $array_permit_only = $this->roles->get_dataPermitOnly($user_login, null, "result_array");

        if ($array_permit_only) {
            foreach ($array_permit_only as $index => $column) {
                $key_name = $column['menus_code'];
                $permit_all[$key_name][] = $array_permit_only[$index];
            }
        }

        if($data){
            $data->permit = $permit_all;
            $data->permit_html = html_roles_jstree($permit_all);
            $data->roles = $array_roles_child;
            $data->permit_norole = $array_permit_only;
        }
        // echo "<pre>";
        // print_r($data);
        // echo "---------------------------";
        $result = $data;
        echo json_encode($result);
    }

    public function update_data()
    {
        $data = $this->model->update_data();
        $result = array(
            'data' => $data
        );

        echo json_encode($result);
    }

    public function delete_user()
    {
        $data = $this->model->delete_user();
        $result = array(
            'data' => $data
        );

        echo json_encode($result);
    }
}