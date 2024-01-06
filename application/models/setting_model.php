<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Setting_model extends CI_Model
{


  public $tableName = 'settings';


  public function save($data = [])
  {
    $rs =  false;
    $result = [];
    //return $data;
    if (!empty($data)) {
      foreach ($data as $key => $value) {

        $row = $this->db->where([
          "name" => $key
        ])->get($this->tableName)->row_array();

        if ($row) {
          switch ($row['name']) {
            case 'quotation_remark_default':
              # code...
              break;

            default:
              # code...
              break;
          }

          $rs = $this->db->where(["name" => $row['name']])
            ->update($this->tableName, [
              "value" => trim($value)
            ]);
          array_push($result, $rs);
        }
      }
    }
    return $result;
  }

  public function getByKey($name)
  {
    $this->db->where(["name" => $name]);
    $rs = $this->db->get($this->tableName);
    return $rs->row_array();
  }
  public function getAll($options = array())
  {
    if(isset($options['group'])) {
      $this->db->where(['group' => $options['group']]);
    }
    $rs = $this->db->get($this->tableName)->result_array();
    // return ['NOOM'];
    $data = [];
    if ($rs) {
      foreach ($rs as $item) {
        # code...
        unset($item['id']);
        array_push($data, $item);
      }
    }
    return $data;
  }
}
