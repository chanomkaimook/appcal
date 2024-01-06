 <?php
  defined('BASEPATH') or exit('No direct script access allowed');


  class Promotion extends API_Controller
  {

    function __construct()
    {
      parent::__construct();
      $this->load->model('promotion/promotion_model');
      $this->load->helper('promotion');
    }

    public function index()
    {
      $this->_apiConfig([
        'methods' => ['GET'],
        'requireAuthorization' => false,
      ]);

      $id = $this->input->get('id');
      if ($id && $id > 0) {
        $product = $this->promotion_model->getById($id);
        return $this->api_return($product, 200);
      } else {

        $allcount = $this->promotion_model->getRecordCount();
        $page_params = page_params($allcount);
        $config['base_url'] = base_url() . 'api/v1/promotion';
        $config['use_page_numbers'] = TRUE;
        $config['total_rows'] = $allcount;
        $config['per_page'] = $page_params['per_page'];
        $rows = $this->promotion_model->getList($page_params['per_page'], $page_params['start']);


        // Initialize
        $this->pagination->initialize($config);

        $data['result'] = $rows;
        $data['per_page'] = $page_params['per_page'];
        $data['total_rows'] = $page_params['total_rows'];
        $data['page'] = $page_params['page'];
        $data['total_pages'] = $page_params['total_pages'];

        return $this->api_return($data, 200);
      }
    }

    public function all_active()
    {
      $this->_apiConfig([
        'methods' => ['GET'],
        'requireAuthorization' => false,
      ]);

      $data = $this->promotion_model->getAllActive();
      return $this->api_return($data, 200);
    }
    public function all_inactive()
    {
      $this->_apiConfig([
        'methods' => ['GET'],
        'requireAuthorization' => false,
      ]);

      $data = $this->promotion_model->getAllInactive();
      return $this->api_return($data, 200);
    }


    /**
     * List promotion for datatable
     *
     * @return void
     */
    public function fetch_dt()
    {
      $this->_apiConfig([
        'methods' => ['GET'],
        'requireAuthorization' => false,
      ]);

      $id = $this->input->get('id');
      $search = $this->input->get('search');

      if ($id && $id > 0) {
        $product = $this->promotion_model->getById($id);
        return $this->api_return($product, 200);
      } else {


        $allcount = $this->promotion_model->getRecordCount();
        $countFilered = $this->promotion_model->getFilteredCount();

        $products = $this->promotion_model->getList();

        //$page_params = page_params($allcount);

        $data['result'] = $products;
        // $data['per_page'] = $page_params['per_page'];
        // $data['total_rows'] = $this->promotion_model->total_rows;
        // $data['page'] = $page_params['page'];
        // $data['total_pages'] = $page_params['total_pages'];

        return $this->api_return([
          "q" => $this->input->get("search")['value'],
          "draw" => intval($this->input->get("draw")),
          'recordsTotal' => $allcount,
          'recordsFiltered' => $countFilered,
          'data' => $data['result'],
        ], 200);
      }
    }

    public function view($id)
    {
      $this->_apiConfig([
        'methods' => ['GET'],
        'requireAuthorization' => false,
      ]);

      if ($id) {
        $model = $this->promotion_model->getById($id);
        if ($model) {
          $this->api_return($model, 200);
        } else {
          return $this->api_return([
            'status' => false,
            'message' => 'Not found'
          ], 404);
        }
      } else {
        return $this->api_return([
          'status' => false,
          'message' => 'Not found'
        ], 404);
      }
    }

    /**
     * เพิ่มโปรโมชั่น
     *
     * @return void
     */
    public function save()
    {
      $this->load->library('form_validation');

      $this->_apiConfig([
        'methods' => ['POST'],
        'requireAuthorization' => false,
      ]);

      if ($_POST) {

        $this->form_validation->set_rules(
          'promotion_type',
          'ประเภท',
          'required',
          [
            'required' => 'โปรดระบุ ประเภท',
          ]
        );
        $this->form_validation->set_rules(
          'name',
          'ชื่อโปรโมชั่น',
          'required',
          [
            'required' => 'โปรดระบุ ชื่อโปรโมชั่น',
          ]
        );
        $this->form_validation->set_rules(
          'discount_type',
          'รูปแบบส่วนลด',
          'required',
          [
            'required' => 'โปรดระบุ รูปแบบ',
          ]
        );
        $this->form_validation->set_rules(
          'discount_value',
          'มูลค่าส่วนลด',
          'required',
          [
            'required' => 'โปรดระบุ มูลค่าส่วนลด',
          ]
        );
        $this->form_validation->set_rules(
          'description',
          'description',
          'required',
          [
            'required' => 'โปรดระบุ description',
          ]
        );

        if ($this->form_validation->run() == true) {
          $data = array(
            'promotion_type' => $this->input->post('promotion_type'),
            'name' => trim($this->input->post('name')),
            'description'  => $this->input->post('description', 'ไม่ได้ระบุ'),
            'discount_type'  => $this->input->post('discount_type'),
            'discount_value'  => $this->input->post('discount_value'),
            'start_date'  => $this->input->post('start_date'),
            'end_date'  => $this->input->post('end_date'),
            'active'  => $this->input->post('active') | 'yes',
          );
          if ($data['promotion_type'] == 'voucher') {
            $data['voucher_code'] = promotion_generateVoucher(8);
          }
          $this->db->set('created_at', 'NOW()', FALSE);
          if ($this->db->insert('promotion', $data)) {
            $this->api_return($this->promotion_model->getById($this->db->insert_id()), 200);
          } else {
            return $this->api_return([
              'status' => false,
              'message' => 'Not found'
            ], 404);
          }
        } else {
          $errors = ($this->form_validation->error_string());
          return $this->api_return([
            'message' => $errors,
            'errors' => $errors,
          ], 400);
        }
      } else {
        return $this->api_return([
          'status' => false,
          'message' => 'Not found'
        ], 404);
      }
    }

    /**
     * แก้ไข
     *
     * @param [type] $id
     * @return void
     */
    public function update($id)
    {
      $this->load->library('form_validation');

      $this->_apiConfig([
        'methods' => ['PUT', 'POST'],
        'requireAuthorization' => false,
      ]);
      // return $this->api_return($this->input->input_stream(), 200);

      if ($this->input->input_stream()) {
        $this->form_validation->set_data($this->input->input_stream());

        $this->form_validation->set_rules(
          'promotion_type',
          'ประเภท',
          'required',
          [
            'required' => 'โปรดระบุ ประเภท',
          ]
        );
        $this->form_validation->set_rules(
          'name',
          'ชื่อโปรโมชั่น',
          'required',
          [
            'required' => 'โปรดระบุ ชื่อโปรโมชั่น',
          ]
        );
        $this->form_validation->set_rules(
          'discount_type',
          'รูปแบบส่วนลด',
          'required',
          [
            'required' => 'โปรดระบุ รูปแบบ',
          ]
        );
        $this->form_validation->set_rules(
          'discount_value',
          'มูลค่าส่วนลด',
          'required',
          [
            'required' => 'โปรดระบุ มูลค่าส่วนลด',
          ]
        );
        // $this->form_validation->set_rules(
        //   'description',
        //   'description',
        //   'required',
        //   [
        //     'required' => 'โปรดระบุ description',
        //   ]
        // );
        $this->form_validation->set_rules(
          'active',
          'Active',
          'required',
          [
            'required' => 'โปรดระบุ สถานะการใช้งาน',
          ]
        );

        if ($this->form_validation->run() == true) {
          $data = array(
            'promotion_type' => $this->input->input_stream('promotion_type'),
            'name' => trim($this->input->input_stream('name')),
            'description'  => $this->input->input_stream('description'),
            'discount_type'  => $this->input->input_stream('discount_type'),
            'discount_value'  => $this->input->input_stream('discount_value'),
            'start_date'  => $this->input->input_stream('start_date'),
            'end_date'  => $this->input->input_stream('end_date'),
            'active'  => $this->input->input_stream('active'),
            'voucher_code'  => $this->input->input_stream('voucher_code'),
          );


          if ($data['promotion_type'] == 'voucher' && strlen($data['voucher_code']) < 1) {
            $data['voucher_code'] = promotion_generateVoucher(8);
          }

          $this->db->where('id', $id);
          if ($this->db->update('promotion', $data)) {
            $model = $this->promotion_model->getById($id);
            $this->api_return([
              'message' => 'แก้ไขข้อมูลเรียบร้อยแล้ว',
              'data' => $model,
            ], 200);
          } else {
            return $this->api_return([
              'status' => false,
              'message' => 'Not found'
            ], 404);
          }
        } else {
          $errors = ($this->form_validation->error_string());
          return $this->api_return([
            'message' => $errors,
          ], 400);
        }
      } else {
        $errors = ($this->form_validation->error_string());
        return $this->api_return([
          'status' => false,
          'errors' => $errors,
          'message' => 'Not found'
        ], 404);
      }
    }

    /**
     * ปิดใช้งาน
     *
     * @return void
     */
    public function disable($id)
    {
      $this->_apiConfig([
        'methods' => ['DELETE', 'POST'],
        'requireAuthorization' => false,
      ]);
      if ($id) {
        $this->db->set('active', 'no');
        $this->db->where('id', $id);
        if ($this->db->update('promotion')) {
          $model = $this->promotion_model->getById($id);
          return $this->api_return([
            'message' => 'รับใช้งาน [' . $model['name'] . '] เรียบร้อยแล้ว'
          ], 200);
        }
      } else {
        return $this->api_return(['message' => 'ไม่พบข้อมูล'], 404);
      }
    }

    public function validateVoucher()
    {
      $this->load->library('form_validation');
      $this->form_validation->set_data($this->input->input_stream());
      $this->form_validation->set_rules(
        'code',
        'Code',
        'required',
        [
          'required' => 'โปรดระบุ Code ส่วนลด',
        ]
      );
      $this->form_validation->set_rules(
        'price',
        'Price',
        'required',
        [
          'required' => 'โปรดระบุ มูลค่าสินค้า',
        ]
      );

      if ($this->form_validation->run() == true) {
        $code = $this->input->post('code');
        $price = $this->input->post('price');
        $data = $this->promotion_model->validateVoucher($code, $price);
        return $this->api_return($data, 200);
      } else {
        $errors = ($this->form_validation->error_string());
        return $this->api_return([
          'status' => false,
          'errors' => $errors,
          'message' => $errors
        ], 400);
      }
    }
  }
