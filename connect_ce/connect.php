<?php
class Connectdb
{
  // Properties
  public $servername = "localhost";
  public $username = "root";
  public $password = "";
  public $dbname = "ce";
  public $conn;

  function __construct()
  {
    try {
      $this->conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password);
      // set the PDO error mode to exception
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch (PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
    }
  
  }

  function db() {
    return $this->conn;
  }
}

