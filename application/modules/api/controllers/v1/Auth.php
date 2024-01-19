<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/API_Controller.php';


class Auth extends API_Controller
{
    public function __construct()
    {
        parent::__construct();
        header("Access-Control-Allow-Origin: *");
        $this->load->model(['login_model', 'staff_model']);
    }



    public function index()
    {
        // API Configuration
        $this->_apiConfig([
            'methods' => ['GET'],
            // Request Execute Only POST and GET Method
            'requireAuthorization' => false,
            // 'roles' => ['master_admin', 'admin']
        ]);

        // Data
        $data = array(
            'status' => true,
            'data' => [
                'message' => 'Hello World',
            ]
        );
        $this->api_return($data, 200);
    }

    /**
     * @OA\Post(
     *     path="/auth/login",
     *     tags={"auth"},
     *     summary="เข้าสู่ระบบ",
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    @OA\RequestBody(
     *      required=true,
     *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
     *       @OA\Schema(
     *          @OA\Property(property="username",description="ชื่อผู้ใช้งาน",type="string"),
     *          @OA\Property(property="password",description="รหัสผ่าน",type="string"),
     *        ),
     *       ),
     *      ),
     * )
     */
    public function login()
    {
        header("Access-Control-Allow-Origin: *");

        $this->_apiConfig([
            'methods' => ['POST'],
            'requireAuthorization' => false,
        ]);

        $login = $this->login_model->checkLogin();


        if ($login) {
            $payload = [
                'id' => $login['id'],
                'username' => $login['username'],
                'code' => $login['code'],
            ];
            $token = "";
            $this->load->library('Authorization_Token');

            $token = $this->authorization_token->generateToken($payload);

            $this->api_return(
                [
                    'status' => true,
                    "message" => "เข้าสู่ระบบสำเร็จ",
                    "result" => [
                        'token' => $token,
                        'expire_time' => $this->CI->config->item('token_expire_time'),
                        'user' => array_change_key_case($login),
                    ],

                ],
                200
            );
        } else {
            $this->api_return(
                [
                    'status' => false,
                    "message" => 'ชื่อหรือรหัสผ่านไม่ถูกต้อง'
                ],
                401
            );
        }
    }
    /**
     * @OA\Post(
     *     path="/auth/retoken",
     *     tags={"auth"},
     *     summary="ขอ Token ใหม่",
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function retoken()
    {
        $user_data = $this->_apiConfig([
            'methods' => ['POST'],
            'requireAuthorization' => TRUE,
        ]);


        if ($user_data) {
            $login = isset($user_data['token_data']) ? $user_data['token_data'] : [];
            $payload = [
                'id' => $login['id'],
                'username' => $login['username'],
                'code' => $login['code'],
            ];
            $token = "";
            $this->load->library('Authorization_Token');


            $token = $this->authorization_token->generateToken($payload);
            $this->api_return(
                [
                    'status' => true,
                    "result" => [
                        'token' => $token,
                        'expire_time' => $this->CI->config->item('token_expire_time'),
                        'user' => array_change_key_case($login, CASE_LOWER),
                    ],

                ],
                200
            );
        } else {
            $this->api_return(
                [
                    'status' => false,
                    "message" => 'Error'
                ],
                401
            );
        }
    }


    /**
     * @OA\Get(
     *     path="/auth/me",
     *     tags={"auth"},
     *     summary="ข้อมูลโปรไฟล์",
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function me()
    {
        $user_data = $this->_apiConfig([
            'methods' => ['GET'],
            'requireAuthorization' => true,
        ]);
        $this->load->library(['permit']);

        // return $this->api_return(
        //     $user_data,
        //     200
        // );
        if ($user_data) {
            $user = isset($user_data['token_data']) ? $user_data['token_data'] : [];
            $user_data = [];
            $user['roles'] = [];



            if ($user) {
                $user_data = $this->staff_model->getOne($user['id']);
                unset($user_data['PASSWORD']);
                unset($user_data['password']);

                // $user_data['roles'] = $this->permiss->get_userRole($user['id']);
                $user_data['permisions'] = $this->permit->get_dataPermitSet($user['id']);
                // $user_data['labs'] = $this->permiss->get_userlabs($user['id'], $user_data['LAB_ID'], $user_data['SUBLAB_ID']);

                unset($user_data['LAB_ID']);
                unset($user_data['SUBLAB_ID']);
            }
            $user = (array) $user_data;

            return $this->api_return(
                array_change_key_case($user),
                200
            );
        } else {
            return $this->api_return(
                [
                    'status' => false,
                    'message' => 'NOT FOUND',
                ],
                404
            );
        }
    }
    public function view($id)
    {
        $user_data = $this->_apiConfig([
            'methods' => ['GET'],
            'requireAuthorization' => true,
        ]);
        $data = [
            'status' => true,
            "result" => [
                'id' => $id,
                'user_data' => $user_data
            ],
        ];
        $this->api_return(
            $data,
            200
        );
    }

    private function _getPermission()
    {
        $userId = null;
    }

    public function logout()
    {
        $this->session->sess_destroy();
        $this->api_return([], 200);
    }

}
