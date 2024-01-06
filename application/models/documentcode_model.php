<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Documentcode_model extends CI_Model
{

  const DOCUMENT_QUOTATATION = 'quotation';
  const DOCUMENT_REQUEST_SEVICE = 'request_service';
  const DOCUMENT_REQUEST_QUOTATATION = 'request_quotation';


  public $tableName = 'document_code';

  private $_options = [];
  private $_found = false;

  public $alias;
  public $document;
  public $record = [];
  public $lastCode;
  public $complete = false;

  public function runCode($document, $options = [])
  {
    $this->_options = $options;
    $this->document = $document;
    $this->alias = $options['alias'];
    $this->__find($document, $this->_options);
    return $this;
  }

  public function build()
  {
    if (!$this->_found) {
      $this->db->set('document_code', $this->document);
      $this->db->set('alias', $this->_options['alias']);
      if (!empty($this->_options['prefix'])) {
        $this->db->set('prefix', $this->_options['prefix']);
      }
      if (!empty($this->_options['subfix'])) {
        $this->db->set('subfix', $this->_options['subfix']);
      }
      $this->db->set('year',  date('Y'));
      $this->db->set('month',  date('m'));
      $this->db->set('count', 1);
      $this->db->insert($this->tableName);
      $insert_id = $this->db->insert_id();

      $query = $this->db->from($this->tableName)->where(['id' => $insert_id])->get();
      $this->record = $query->row_array();
      if ($query)
        $this->complete = true;

      return $this;
    } else {
      $this->db->set('count', 'count+1', FALSE);
      $this->db->set('year', date('Y'), FALSE);
      $this->db->set('month', date('m'), FALSE);
      $this->db->where('id', $this->record['id']);
      $this->db->update($this->tableName);

      $query = $this->db->from($this->tableName)->where(['id' => $this->record['id']])->get();
      $this->record = $query->row_array();
      if ($query)
        $this->complete = true;

      return $this;
    }
  }

  private function __find($document, $options)
  {
    $rs = $this->db
      ->from($this->tableName)
      ->where([
        'document_code' => $document,
        'alias' => $options['alias']
      ])->get();
    if ($rs->num_rows()) {
      $this->_found = true;
    }
    $this->record = $rs->row_array();
    return  $this;
  }

  public function updateLastCode($pattern)
  {
    $this->db->where(['id' => $this->record['id']]);
    $data = [
      'last_code' => $pattern
    ];
    $this->db->update($this->tableName, $data);
  }
}
