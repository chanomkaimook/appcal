<?php

use App\modules\api\entities\Quotation_model;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/API_Controller.php';


class Quotation extends API_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $perPage = $this->input->get('per_page');
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
        $items = $condition->paginate($perPage);
        return $this->api_return($items, 200);
    }
    public function view($id)
    {
        $model = Quotation_model::with('items', 'contact', 'customer','revisions')->findOrFail($id);
        return $this->api_return($model, 200);
    }
}
