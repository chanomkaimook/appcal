<?php

namespace App\modules\api\entities;

class Role_model extends BaseModel
{
  public function __construct()
  {
    parent::__construct();
  }

  protected $table = "permiss_set";

  protected $appends = ["permissions"];

  public function getPermissionsAttribute()
  {
    if ($this->permiss_page === 'all') {
      return Permission_model::pluck("name");
    } else {
      return Permission_model::whereIn('id', explode(",", $this->permiss_page))->pluck('name');
    }
  }
  public function getUserRolesAndPermissions($staffId)
  {
    $roles = PermissionUser_model::where('staff_id', "=", $staffId)->get();
    $s = [];
    if ($roles) {
      foreach ($roles as $key => $value) {
        if ($value->role) {
          array_push($s, $value->role->name);
          if ($value->role && count($value->role->permissions) > 0) {
            foreach ($value->role->permissions as $name) {
              if ($name)
                array_push($s, $name);
            }
          }
        }
        if ($value->permission) {
          if ($value->permission->name)
            array_push($s, $value->permission->name);
        }
      }
    }
    return $s;
  }
  public function getUserRoles($staffId)
  {
    $roles = PermissionUser_model::where('staff_id', "=", $staffId)->get();
    $s = [];
    if ($roles) {
      foreach ($roles as $key => $value) {
        if ($value->role) {
          array_push($s, $value->role->name);
        }
      }
    }
    return $s;
  }
  public function getUserPermissions($staffId)
  {
    $roles = PermissionUser_model::where('staff_id', "=", $staffId)->get();
    $s = [];
    if ($roles !== null) {
      foreach ($roles as $key => $value) {
        if ($value->role) {
          if ($value->role && count($value->role->permissions) > 0) {
            foreach ($value->role->permissions as $name) {
              array_push($s, $name);
            }
          }
        }
        if ($value->permission) {
          array_push($s, $value->permission->name);
        }
      }
    }
    return $s;
  }

  public function checkRoleUser($staffId, $roles)
  {
    $_roles = $this->getUserRolesAndPermissions($staffId);
    if (gettype($roles) === 'array') {
      return !!array_intersect($_roles, $roles);
    } else {
      return in_array($roles, $_roles);
    }
  }
}
