<?php if (!defined('BASEPATH')) {
  exit('No direct script access allowed');
}

if (!function_exists('insert')) {
  function insert($table_name, $insert_data)
  {
    $CI = &get_instance();
    return $CI->db->insert($table_name, $insert_data);
  }
}

function page_params($total_rows = 0)
{
  $page = isset($_GET['page']) ? $_GET['page'] : 1;
  $per_page = isset($_GET['per_page']) ? $_GET['per_page'] : 50;
  $total_pages = ceil($total_rows / $per_page);
  if ($page < 1) {
    $page = 1;
  } elseif ($page > $total_pages) {
    $page = $total_pages;
  }

  $offset = $page;

  # for original pagination (page=1&per_page=10)
  if ($offset != 0) {
    $offset = ($offset - 1) * $per_page;
  }

  # for datatable (start=0&per_page=10)
  else if (isset($_GET['start']) && !isset($_GET['page'])) {
    $offset = $_GET['start'];
  }

  return [
    'per_page' => intval($per_page),
    'page' => intval($page),
    'start' => intval($offset),
    'total_rows' => intval($total_rows),
    'total_pages' => intval($total_pages),
  ];
}

function dt_page_params($total_rows = 0)
{
  $start = isset($_GET['start']) ? $_GET['start'] : 0;
  $length = isset($_GET['length']) ? $_GET['length'] : 9;
  $total_pages = ceil($total_rows / $length + 1);
  // if ($page < 1) {
  //   $page = 1;
  // } elseif ($page > $total_pages) {
  //   $page = $total_pages;
  // }

  // $offset = $page;

  // # for original pagination (page=1&per_page=10)
  // if ($offset != 0) {
  //   $offset = ($offset - 1) * $per_page;
  // }

  // # for datatable (start=0&per_page=10)
  // else if (isset($_GET['start']) && !isset($_GET['page'])) {
  //   $offset = $_GET['start'];
  // }

  return [
    'length' => intval($length),
    'start' => intval($start),
    'total_rows' => intval($total_rows),
    'total_pages' => intval($total_pages),
  ];
}
