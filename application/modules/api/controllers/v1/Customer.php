<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Customer extends API_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model(['customer_model']);
  }
  /**
   *   @OA\Get(
   *     path="/customer",
   *     tags={"customer"},
   *     summary="รายชื่อลูกค้า/บริษัท",
   *   @OA\Parameter(
   *     name="q",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="string"),
   *     description="keyword",
   *   ),
   *   @OA\Parameter(
   *     name="id",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="ID ลูกค้า",
   *   ),
   *   @OA\Parameter(name="page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="เลขที่หน้า",
   *   ),
   *   @OA\Parameter(name="per_page",
   *     in="query",
   *     required=false,
   *     @OA\Schema(type="number"),
   *     description="แสดงรายการต่อหน้า",
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   * )
   */
  public function list()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      // 'requireAuthorization' => true,
    ]);

    $id = $this->input->get('id');
    $this->customer_model->filter_searchs = $this->input->get();
    $allcount = $this->customer_model->getRecordCount();



    
    $page_params = page_params($allcount);

    $items = $this->customer_model->getList($page_params['per_page'], $page_params['start']);


    $data['per_page'] = $page_params['per_page'];
    $data['total_rows'] = $page_params['total_rows'];
    $data['page'] = $page_params['page'];
    $data['total_pages'] = $page_params['total_pages'];
    $data['result'] = $items;

    return $this->api_return($data, 200);
  }

  /**
   *   @OA\Get(
   *     path="/customer/{id}",
   *     tags={"customer"},
   *     summary="รายละเอียดลูกค้า/บริษัท",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   *   )
   */
  public function view($id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($id) {
      $product = $this->customer_model->getById($id);
      if ($product) {
        return $this->api_return($product, 200);
      } else {
        return $this->api_return([
          'message' => 'not found'
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
   *   @OA\Get(
   *     path="/customer/{id}/delivery-addresses",
   *     tags={"customer"},
   *     summary="ที่อยู่ในการจัดส่งเครื่องมือ",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   *   )
   */
  public function delivery_addresses($customer_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($customer_id) {
      $list = $this->customer_model->getDeliveryAddresses($customer_id);
      if ($list) {
        return $this->api_return($list, 200);
      } else {
        return $this->api_return([
          'message' => 'not found'
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
   *   @OA\Get(
   *     path="/customer/{id}/cert-addresses",
   *     tags={"customer"},
   *     summary="ที่อยู่ในการจัดส่งใบรับรอง",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   *   )
   */
  public function cert_addresses($customer_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($customer_id) {
      $list = $this->customer_model->getCertAddresses($customer_id);
      if ($list) {
        return $this->api_return($list, 200);
      } else {
        return $this->api_return([
          'message' => 'not found'
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
   *   @OA\Get(
   *     path="/customer/{id}/contacts",
   *     tags={"customer"},
   *     summary="รายชื่อผู้ติดต่อ Contacts",
   *   @OA\Parameter(name="id",
   *     in="path",
   *     required=true,
   *     @OA\Schema(type="number")
   *   ),
   *    @OA\Response(response="200", description="Success"),
   *    @OA\Response(response="401", description="Unauthorized"),
   *    @OA\Response(response="404", description="Not Found"),
   *    security={{"api_key": {} }}
   *   )
   */
  public function contacts($customer_id)
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => true,
    ]);

    if ($customer_id) {
      $list = $this->customer_model->getContacts($customer_id);
      if ($list) {
        return $this->api_return($list, 200);
      } else {
        return $this->api_return([
          'message' => 'not found'
        ], 404);
      }
    } else {
      return $this->api_return([
        'status' => false,
        'message' => 'Not found'
      ], 404);
    }
  }

  public function fetch()
  {
    $this->_apiConfig([
      'methods' => ['GET'],
      'requireAuthorization' => false,
    ]);

    $primary = $this->input->get('primary');

    $array = [];
    if ($primary) {
      $array = array('ID' => $primary);
    }

    $item = $this->customer_model->getById($primary);

    return  $this->api_return($item, 200);
  }
}
