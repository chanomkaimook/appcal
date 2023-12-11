<?php
require_once "connect.php";

// $conn = new Connectdb();
class User extends Connectdb
{
    private $user = "appuser";
    private $emp = "employee";
    /**
     * fetch data
     *
     * @param [type] $conn
     * @return void
     */
    function get_data()
    {
        # code...
        $sql = $this->conn->prepare("
        SELECT * FROM appuser
        ");
        $sql->execute();

        $data = $sql->fetchAll();

        return $data;
    }
}
