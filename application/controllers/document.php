<?php

defined('BASEPATH') or exit('No direct script access allowed');


class Document extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
  }
  public function v1()
  {

    $data['base_bn'] = base_url() . BASE_BN;
    $data['basepic'] = base_url() . BASE_PIC;
    $this->load->view('document/v1', $data);
  }
}
