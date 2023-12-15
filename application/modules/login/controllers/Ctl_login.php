<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ctl_login extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url', 'form');
        $this->load->model('mdl_login');
    }

    public function index()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $result = $this->mdl_login->check_login();

            if ($result['error'] == 0) {
                if ($result['data']) {
                    $session = array(
                        'user_code' => $result['data']->ID,
                        'user_emp' => $result['data']->EMPLOYEE_ID,
                        'user_name' => $result['data']->NAME . " " . $result['data']->LASTNAME,
                        'department' => $result['data']->DEPARTMENT,
                        'department_id' => $result['data']->DEPARTMENT_ID,
                        'section' => $result['data']->SECTION,
                        'section_id' => $result['data']->SECTION_ID,

                        'authorization' => $result['token'],
                    );
                    $this->session->set_userdata($session);

                    // keep log
                    log_data(array('login', '', ''));
                    return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(200)
                    ->set_output(json_encode([
                        'data' => $result['data'],
                        'result' => $result['token'],
                        'error' => $result['error']

                    ]));
                }
            } else {
                return $this->output
                ->set_content_type('application/json')
                ->set_status_header(400)
                ->set_output(json_encode([
                    'text' => $result['text'],
                    'type' => 'danger',
                    'result' => $result,
                    'error' => $result['error']
                ]));
            }

        } 
   
        
        if ($this->session->userdata('user_code')) {
            //User is logged in.  Do something.
            //redirect(site_url('dashboard/ctl_dashboard'));
        }

        $sql = $this->db->get('project');
        $data['project'] = $sql->row();

        $this->load->view('login', $data);
    }

    public function test()
    {
        var_dump($this->caching->get('foo'));
        echo 'Show cache! =' . $this->caching->get('foo');
    }

    public function test_update()
    {
        $this->load->driver('cache', array('adapter' => 'apc', 'backup' => 'file'));
        if (!$foo = $this->cache->get('foo')) {
            echo 'Create cache!<br />';

            $foo = "i'have create cache";
            // Save into the cache for 5 minutes
            $this->cache->save('foo', $foo, 10);
        } else {
            echo 'update cache! from ' . $foo;

            $foo = "i'have been change the cache!!!!!";
            $this->cache->save('foo', $foo, 10);
        }

        echo "<br> result cache = " . $foo;
    }

    /**
     * 
     * * 
     * login staff
     * 
     */

    public function check_login()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $result = $this->mdl_login->check_login();

            if ($result['error'] == 0) {
                if ($result['data']) {
                    $session = array(
                        'user_code' => $result['data']->ID,
                        'user_emp' => $result['data']->EMPLOYEE_ID,
                        'user_name' => $result['data']->NAME . " " . $result['data']->LASTNAME,
                        'department' => $result['data']->DEPARTMENT,
                        'department_id' => $result['data']->DEPARTMENT_ID,
                        'section' => $result['data']->SECTION,
                        'section_id' => $result['data']->SECTION_ID,

                        'authorization' => $result['token'],
                    );
                    $this->session->set_userdata($session);

                    // keep log
                    log_data(array('login', '', ''));
                }
            }
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(200)
                ->set_output(json_encode($result));
        } 
        else {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(405)
                ->set_output(json_encode([
                    'text' => 'การร้องขอไม่ถูกต้อง',
                    'type' => 'danger'
                ]));
        }


    }

    function gen_jwt()
    {
        $data = $this->input->post();
        $token = $this->authorization_token->generateToken($data);

        if (!empty($token)) {
            echo $token;
        } else {
            echo "401";
        }
    }

    function working()
    {
        $result = $this->authorization_token->validateToken();
        print_r($result);
    }
}
