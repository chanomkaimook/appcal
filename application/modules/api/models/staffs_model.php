<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Staffs_model extends CI_Model
{
    public $filter_searchs = [];
    public $total_rows = 0;
    public $total_filtered = 0;

    public function __construct()
    {
        $this->load->database();
    }

    /**
     * get data
     *
     * @param string $select = string column
     * @param array $optional = array[column=value]
     * @param integer|null $limit
     * @param integer|null $offset
     * @return void
     */
    public function fetch_data(string $select = null, array $optional = [], int $limit = null, int $offset = null)
    {
        $this->_setFilter();
        if (!$select) {
            $select = '*';
        }
        $sql = $this->db->select($select)
            ->from('staff');

        if ($optional && count($optional)) {
            foreach ($optional as $column => $value) {
                $sql->where($column, $value);
            }
        }

        if ($limit && $offset) {
            $sql->limit($limit, $offset);
        }

        $data = $sql->get();
        $_items = $data->result();
        $items = [];
        if ($_items) {
            foreach ($_items as $item) {
                $items[] = array_change_key_case((array) $item);
            }
        }
        return $items ? $items : [];
    }
    private function _setFilter()
    {
        $this->db->from("staff")
            ->select([
                "id",
                "code",
                "member_id",
                "franshine_id",
                "department_id",
                "position_id",
                "lab_id",
                "sublab_id",
                "name",
                "lastname",
                "name_th",
                "lastname_th",
                "nickname",
                "birthday",
                "phone",
                "username",
                "pic",
                "date_starts",
                "date_update",
                "status",
            ]);
        $search = $this->filter_searchs;
        if (isset($search['q'])) {
            $this->db->like("name_th", $search['q']);
            $this->db->like("name", $search['q']);
        }
        if (!empty($search['id'])) {
            $this->db->where("id", $search['id']);
        }
    }

    public function getRecordCount()
    {
        $this->_setFilter();

        $rs = $this->db->get();
        $this->total_filtered = $rs->num_rows();
        return  $this->total_rows = $this->total_filtered;
    }


    public function getById($id)
    {
        $this->db->where("id", $id)->select([
            "id",
            "code",
            "member_id",
            "franshine_id",
            "department_id",
            "position_id",
            "lab_id",
            "sublab_id",
            "name",
            "lastname",
            "name_th",
            "lastname_th",
            "nickname",
            "birthday",
            "phone",
            "username",
            "pic",
            "date_starts",
            "date_update",
            "status",
        ]);
        $data = $this->db->get("staff");
        $row = $data->row_array();
        return $row ? array_change_key_case($row) : [];
    }

    public function getByCode($code)
    {
        $this->db->where("code", $code)->select([
            "id",
            "code",
            "member_id",
            "franshine_id",
            "department_id",
            "position_id",
            "lab_id",
            "sublab_id",
            "name",
            "lastname",
            "name_th",
            "lastname_th",
            "nickname",
            "birthday",
            "phone",
            "username",
            "pic",
            "date_starts",
            "date_update",
            "status",
        ]);
        $data = $this->db->get("staff");
        $row = $data->row_array();
        return $row ? array_change_key_case($row) : [];
    }

    public function getList($limit, $start)
    {
        $this->_setFilter();
        $this->db->limit($limit, $start);
        $data = $this->db->get();
        return $data->result_array();
    }
    public function truncate()
    {
        // $this->db->truncate('member');
        // $this->db->truncate('staff');

        return true;
    }
}
