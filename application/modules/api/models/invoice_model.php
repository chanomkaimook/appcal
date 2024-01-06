<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Invoice_model extends CI_Model
{
    private $prefix = "SVC";
    private $table = "invoice";
    private $tabledetail = "invoice_items";
    private $document_alias = "invoice";

    private $where = [];
    private $select;

    
    public $filter_searchs = [];
    public $total_rows = 0;
    public $total_filtered = 0;
    
    public function __construct()
    {
        $this->load->database();
    }

    function query(int $id = null, array $optional = [])
    {

        if (isset($optional['select'])) {
            $sql = $this->db->select($optional['select']);
        } else {
            $sql = $this->db->select($this->select ? $this->select : '*');
        }

        $sql->from($this->table)
            ->join($this->tabledetail, $this->table . '.id=' . $this->tabledetail . '.invoice_id', 'left')
            ->join('statusservice','statusservice.id='.$this->table.'.invoice_status_id','left')
            ->where($this->table . '.status', 1)
            ->where($this->tabledetail . '.status', 1);

        if (isset($optional['where']) && count($optional['where'])) {
            foreach ($optional['where'] as $key => $condition) {
                $sql->where($key, $condition);
            }
        }

        if ($id) {
            $sql->where($this->table . '.id', $id);
        }

        if (isset($optional['group_by'])) {
            foreach ($optional['group_by'] as $column) {
                $sql->group_by($column);
            }
        }

        return $sql;
    }

    function get_dataWork(int $id = null, array $optional = [])
    {

        $sql = $this->query($id, $optional);
        $q = $sql->get();

        if ($id) {
            return $q->row();
        } else {
            return $q->result();
        }
    }

    function get_dataCount(int $id = null, array $optional = [])
    {
        $optional['select'] = $this->table . ".id";
        $sql = $this->query($id, $optional);
        $num = $sql->count_all_results(null,false);
        $q = $sql->get();

        $result = $num ? $num : 0;

        return $result;
    }

    function generate(string $billcode = null)
    {
        if ($billcode) {
            $explode = explode("-", $billcode);
            $sec1 = $explode[0];
            $sec2 = substr($explode[1], 0, 4);

            $sqlcount = $this->db->count_all_results($this->table);
            $count = $sqlcount + 1;
            $number = str_pad($count, 2, '0', STR_PAD_LEFT);

            $prefix = $this->prefix;
            $body = $number . "M/";
            $endfix = $sec1 . $sec2;
            $code = $prefix . $body . $endfix;

            $result = $code;
        }

        return $result ? $result : false;
    }

    function insert_item()
    {
        if (count($this->input->post())) {

            $code = "";
            $invoice_id = "";
            $bill_id = "";
            $bill_code = "";

            $totalprice = 0;
            $totaldiscount = 0;

            foreach ($this->input->post() as $key => $value) {

                $sql = $this->db->select('
                    bill.id,
                    bill.code,
                    bill_items.item_code,
                    bill_items.sorter,
                    bill_items.product_id,
                    bill_items.product_no,
                    bill_items.product_name,
                    bill_items.barcode_no,
                    bill_items.manufaturer_name,
                    bill_items.model,
                    bill_items.serialnumber,
                    bill_items.id_no,
                    bill_items.test_point,
                    bill_items.price,
                    bill_items.discount,
                    ')
                    ->from('bill')
                    ->join('bill_items', 'bill.id=bill_items.bill_id', 'left')
                    ->where('bill_items.item_id', $key)
                    ->get();

                $num = $sql->num_rows();
                if ($num) {
                    $row = $sql->row();

                    $bill_id = $row->id;
                    $bill_code = $row->code;
                    $bill_items_id = $key;
                    $bill_items_code = $row->item_code;
                    $bill_items_sorter = $row->sorter;
                    $product_id = $row->product_id;
                    $product_no = $row->product_no;
                    $product_name = $row->product_name;
                    $barcode_no = $row->barcode_no;
                    $manufaturer_name = $row->manufaturer_name;
                    $model = $row->model;
                    $serialnumber = $row->serialnumber;
                    $id_no = $row->id_no;
                    $test_point = $row->test_point;

                    if (!$code) {
                        $code = $this->generate($bill_items_code);

                        $sql_inv = $this->db->from('statusservice')
                        ->where('document_alias',$this->document_alias)
                        ->where('status_code','pending');
                        $q_inv = $sql_inv->get();
                        $num_inv = $q_inv->num_rows();
                        if($num_inv){
                            $row_inv = $q_inv->row();
                            $invoice_status_id = $row_inv->id;
                            $invoice_status_code = $row_inv->status_code;
                        }

                        //
                        // start create invoice
                        $data_insert_bill = array(
                            'code'          =>  $code,
                            'document_alias'=>  $this->document_alias,
                            'bill_id'       =>  $bill_id,
                            'bill_code'     =>  $bill_code,

                            'invoice_status_id'     =>  $invoice_status_id,
                            'invoice_status_code'   =>  $invoice_status_code,

                            'user_starts'   =>  $this->session->userdata('useradminid'),
                        );

                        $this->db->insert($this->table, $data_insert_bill);
                        $invoice_id = $this->db->insert_id();
                    }
                    //  end create invoice
                    //

                    $obj = json_decode($value);

                    // 
                    // create item detail
                    $price = (float) $obj->item_price;
                    $discount = (float) $obj->item_discount;
                    $net = $price - $discount;

                    $data_insert_billdetail = array(
                        'invoice_id'        =>  $invoice_id,
                        'invoice_code'      =>  $code,
                        'bill_id'           =>  $bill_id,
                        'bill_code'         =>  $bill_code,

                        'bill_items_id'      =>  $bill_items_id,
                        'bill_items_code'    =>  $bill_items_code,
                        'bill_items_sorter'  =>  $bill_items_sorter,

                        'product_id'            =>  $product_id,
                        'product_no'            =>  $product_no,
                        'product_name'          =>  $product_name,
                        'barcode_no'            =>  $barcode_no,
                        'manufaturer_name'      =>  $manufaturer_name,
                        'model'                 =>  $model,
                        'serialnumber'          =>  $serialnumber,
                        'id_no'                 =>  $id_no,
                        'test_point'            =>  $test_point,
                        'price'                 =>  $price,
                        'discount'              =>  $discount,
                        'net'                   =>  number_format($net, 2),

                        'user_starts'   =>  $this->session->userdata('useradminid'),
                    );
                    $this->db->insert($this->tabledetail, $data_insert_billdetail);

                    // end create item detail
                    // 

                    $totalprice = $totalprice + $price;
                    $totaldiscount = $totaldiscount + $discount;
                }
            }
            // end foreach
            // 

            // 
            // # Create invoice sucess
            // 
            // update price invoice
            if ($code) {
                $temp_totalnet = $totalprice - $totaldiscount;
                $totalvat = $temp_totalnet * 0.07;
                $totalnet = $temp_totalnet + $totalvat;

                //
                // start create invoice
                $data_update_bill = array(
                    'totalprice'    =>  $totalprice,
                    'totaldiscount' =>  $totaldiscount,
                    'totalvat'      =>  $totalvat,
                    'totalnet'      =>  $totalnet,
                );

                $this->db->update($this->table, $data_update_bill, array('code' => $code));
            }
        }
    }
}
