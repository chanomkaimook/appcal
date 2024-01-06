<?php

use App\modules\api\entities\Quotation_model;


defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . '/libraries/API_Controller.php';
class Quotation extends API_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library(['form_validation']);
    }



    /**
     *   @OA\Get(
     *     path="/quotations",
     *     tags={"quotation"},
     *     @OA\Parameter(name="q",
     *     in="query",
     *     required=false,
     *     @OA\Schema(type="string")
     *    ),
     *     @OA\Parameter(name="limit",
     *     in="query",
     *     required=false,
     *     description="จำนวนรายการต่อหน้า",
     *     @OA\Schema(type="number")
     *    ),
     *     @OA\Parameter(name="page",
     *     in="query",
     *     required=false,
     *     description="หน้า",
     *     @OA\Schema(type="number")
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function index()
    {
        $limit = $this->input->get('limit');
        $date = $this->input->get('date');
        $company = $this->input->get('company');
        $status = $this->input->get('status');
        $code = $this->input->get('code');
        $model = new Quotation_model();
        $condition = $model->where("code", "LIKE", "%{$code}%");

        if (!empty($date)) {
            $condition->where("document_date", "=", $date);
        }
        if (!empty($status)) {
            $condition->where("status", "=", $status);
        }
        if (!empty($company)) {
            $condition->where("company_id", "=", $company);
        }
        $items = $condition->paginate($limit);
        return $this->api_return($items, 200);
    }

    /**
     *   @OA\Get(
     *     path="/quotations/{id}",
     *     tags={"quotation"},
     *     @OA\Parameter(name="id",
     *     in="path",
     *     required=true,
     *     @OA\Schema(type="number")
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function view($id)
    {
        $model = Quotation_model::with('items', 'contact', 'customer', 'revisions')
            ->find($id);
        return $this->api_return($model, 200);
    }
    /**
     *   @OA\Get(
     *     path="/quotations/code/{code}",
     *     tags={"quotation"},
     *     @OA\Parameter(name="code",
     *     in="path",
     *     required=true,
     *     @OA\Schema(type="string")
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function view_code($code)
    {
        $model = Quotation_model::with('items', 'contact', 'customer', 'revisions')
            ->where('code', '=', $code)
            ->orderBy('revise_seq', 'DESC')
            ->firstOrFail();
        return $this->api_return($model, 200);
    }
    /**
     *   @OA\Get(
     *     path="/quotations/{id}/revisions",
     *     description="ประวัติการแก้ไข",
     *     tags={"quotation"},
     *     @OA\Parameter(name="id",
     *     in="path",
     *     required=true,
     *     @OA\Schema(type="number")
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function revisions($id)
    {
        $model = Quotation_model::with('revisions')->findOrFail($id);
        return $this->api_return($model->revisions, 200);
    }
    /**
     *   @OA\Get(
     *     path="/quotations/{id}/delivery_addresses",
     *     description="ทึ่อยู่ในการจัดส่งใบรับรอง",
     *     tags={"quotation"},
     *     @OA\Parameter(name="id",
     *     in="path",
     *     required=true,
     *     @OA\Schema(type="number")
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function delivery_addresses($id)
    {
        $model = Quotation_model::with('delivery_addresses')->findOrFail($id);
        return $this->api_return($model->delivery_addresses, 200);
    }

    /**
     *   @OA\Post(
     *     path="/quotations",
     *     description="สร้างใบเสนอราคาใหม่",
     *     tags={"quotation"},
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function create()
    {
        $data = $this->input->post();

        $this->form_validation->set_data($this->input->post());

        $this->form_validation->set_rules('document_date', 'วันที่เอกสาร', 'trim|required');
        $this->form_validation->set_rules('company_id', 'บริษัท', 'trim|required');
        $this->form_validation->set_rules('agent_id', 'รหัสผู้ติดต่อ', 'trim|required');
        $this->form_validation->set_rules('agent_name', 'ผู้ติดต่อ', 'trim|required');
        $this->form_validation->set_rules('sender_name', 'ผู้ส่ง', 'trim|required');
        $this->form_validation->set_rules('sender_tel', 'เบอร์โทรผู้ส่ง', 'trim|required');
        $this->form_validation->set_rules('cert_address_name', 'cert_address_name', 'trim|required');
        $this->form_validation->set_rules('cert_address_detail', 'cert_address_name', 'trim|required');
        $this->form_validation->set_rules('address_name', 'address_name', 'trim|required');
        $this->form_validation->set_rules('address_detail', 'address_detail', 'trim|required');

        $valid = $this->form_validation->run();
        if ($valid === true) {
            $data = $this->form_validation->validation_data;
            return $this->api_return($data, 200);
        } else {
            return $this->api_return([
                'success' => false,
                'message' => $this->form_validation->error_string(),
                'errors' => $this->form_validation->error_array(),
            ], 422);
        }
    }
    /**
     *   @OA\Post(
     *     path="/quotations/{id}",
     *     description="แก้ไขใบเสนอราคา",
     *     tags={"quotation"},
     *     @OA\Parameter(name="id",
     *     in="path",
     *     required=true,
     *     @OA\Schema(type="number")
     *    ),
     *    @OA\RequestBody(
     *      required=true,
     *      @OA\MediaType(mediaType="application/json",
     *       @OA\Schema(
     *          @OA\Property(property="document_date",description="วันที่เอกสาร",type="date"),
     *          @OA\Property(property="company_id",description="บริษัท",type="integer"),
     *          @OA\Property(property="agent_id",description="ผู้ติดต่อ",type="integer"),
     *          @OA\Property(property="sender_tel",description="เบอร์โทรผู้ส่ง",type="string"),
     *          @OA\Property(property="items",description="รายการเครื่องมือ",type="object"),
     *        ),
     *      ),
     *    ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function update($id)
    {
        $data = $this->input->post();
        $model = Quotation_model::find($id);

        if ($model) {
            $this->form_validation->set_data($data);
            $this->form_validation->set_rules('document_date', 'วันที่เอกสาร', 'trim|required');
            $this->form_validation->set_rules('company_id', 'บริษัท', 'trim|required');
            $this->form_validation->set_rules('sender_tel', 'เบอร์โทรผู้ส่ง', 'trim|required');
            $this->form_validation->set_rules('items', 'รายการเครื่องมือ', 'required');

            $valid = $this->form_validation->run();
            if ($valid === true) {
                $data = $this->form_validation->validation_data;
                $result = ['id' => $id, 'data', $model];
                return $this->api_return($result, 200);
            } else {
                return $this->api_return([
                    'success' => false,
                    'message' => $this->form_validation->error_string(),
                    'errors' => $this->form_validation->error_array(),
                ], 422);
            }
        } else {
            return $this->api_return([], 404);
        }
    }
}
