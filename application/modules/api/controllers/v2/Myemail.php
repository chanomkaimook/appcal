<?php

use Symfony\Component\Mailer\Transport;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mime\Address;
use Symfony\Component\Mime\RawMessage;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


defined('BASEPATH') or exit('No direct script access allowed');


class Myemail extends API_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     *   @OA\Post(
     *     path="/email/send",
     *     description="ทดสอบส่งเมล์",
     *     tags={"email"},
     *    @OA\RequestBody(
     *      required=false,
     *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
     *       @OA\Schema(
     *          @OA\Property(property="to",description="email",type="string", required=true,),
     *          @OA\Property(property="text",description="ข้อความ",type="string", required=true,),
     *        ),
     *       ),
     *      ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */

    public function send()
    {

        // Create a Transport object 
        // $transport = Transport::fromDsn('smtp://noreply@tpacal.or.th:Gk5v6&p44@27.254.145.152:465?verify_peer=false');
        $transport = Transport::fromDsn('smtp://tpa@zsignasset.com:zNtv25xOF9@mail.zsignasset.com:587?verify_peer=false');
        // $transport = Transport::fromDsn('smtp://cms@tpacal.or.th:noreply1#CMS@smtp.tpacal.com:587');
        // Create a Mailer object 
        $mailer = new Mailer($transport);

        $to = 'yuttaponk@gmail.com';
        $from = 'yuttapong.n@sirivalai.co.th';

        $subject = 'test email sympony';
        $detail = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque fugiat similique temporibus tenetur. Natus nostrum quod dolores earum at pariatur quas placeat, ratione consequuntur a porro rerum modi! Accusamus, a.';
        $string = "";
        $time = time();
        $email = (new Email())
            ->from($from)
            ->to($to)
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject('ทดสอบส่งเมล์ด้วย Symfony Mailer! #' . $time)
            //->text('Sending emails is fun again!')
            ->html('<p>ส่งแบบ HTML integration! " ' . $time . '</p>');

        $rs = $mailer->send($email);

        return $this->api_return([
            'to' => $to,
            'result' => $rs,
        ], 200);
    }

    /**
     *   @OA\Post(
     *     path="/quotations/sendmail1",
     *     description="ทดสอบส่งเมล์",
     *     tags={"email"},
     *    @OA\RequestBody(
     *      required=true,
     *      @OA\MediaType(mediaType="application/x-www-form-urlencoded",
     *       @OA\Schema(
     *          @OA\Property(property="to",description="email",type="string", required=true,),
     *          @OA\Property(property="text",description="ข้อความ",type="string", required=true,),
     *        ),
     *       ),
     *      ),
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function sendmail1()
    {
        $this->form_validation->set_data($this->input->post());
        $this->form_validation->set_rules('to', 'email', 'trim|required');
        $this->form_validation->set_rules('text', 'text', 'trim');

        $from = "yuttapong.n@sirivalai.co.th";
        $fromName = "tpacal";

        $to = 'yuttaponk@gmai.com';
        $from = 'yuttapong.n@sirivalai.co.th';

        $valid = $this->form_validation->run();
        $html = 'สวัสดีชาวโลก ' . date('d/m/Y H:i:s') . ':<br><img src="https://appcal.tpacal.or.th/assets/images/logo/logo_50aniversary.png" width="200" height="200"><br>Thanks,<br>Noom';

        if ($valid === true) {
            $data = $this->form_validation->validation_data;
            try {
                //$transport = Transport::fromDsn('smtp://cms@tpacal.or.th:noreply1#CMS588@smtp-relay.gmail.com:465?encryption=ssl&verify_peer=0');
                $transport = Transport::fromDsn('gmail://cms@tpacal.or.th:noreply1#CMS588@smtp.gmail.com:587');
                $mailer = new Mailer($transport);
                $email = (new Email())
                    ->from(new Address($from, $fromName))
                    ->to($data['to'])
                    ->subject('ทดสอบส่งเมล์ Mailer library # ' . date('d/m/Y H:i:s'))
                    ->html($html);
                $mailer->send($email);



                if ($mailer->send($email) === null) {
                    return $this->api_return([
                        'success' => true,
                        'message' => 'ส่งเมล์สำเร็จ',
                        'data' => $data,
                    ], 200);
                } else {
                    return $this->api_return("ส่งเมล์ไม่สำเร็จ", 422);
                }
            } catch (\Exception $e) {
                return $this->api_return($e->getMessage());
            }
        } else {
            return $this->api_return([
                'success' => false,
                'message' => $this->form_validation->error_string(),
                'errors' => $this->form_validation->error_array(),
            ], 422);
        }
    }

    /**
     *   @OA\Post(
     *     path="/quotations/sendmail2",
     *     description="ทดสอบส่งเมล์",
     *     tags={"email"},
     *    @OA\Response(response="200", description="Success"),
     *    @OA\Response(response="401", description="Unauthorized"),
     *    @OA\Response(response="404", description="Not Found"),
     *    security={{"api_key": {} }}
     * )
     */
    public function sendmail2()
    {
        //Create an instance; passing `true` enables exceptions
        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->SMTPDebug = SMTP::DEBUG_SERVER; //Enable verbose debug output
            $mail->isSMTP(); //Send using SMTP
            $mail->Host = 'smtp.gmail.com'; //Set the SMTP server to send through
            $mail->SMTPAuth = true; //Enable SMTP authentication
            $mail->Username = 'cms@tpacal.or.th'; //SMTP username
            $mail->Password = 'noreply1#CMS588'; //SMTP password
            //$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; //Enable implicit TLS encryption
            $mail->SMTPSecure = "tls";
            $mail->Port = 587; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

            //Recipients
            $mail->setFrom('yuttapong.n@sirivalai.co.th', 'NOOM');
            $mail->addAddress('yuttaponk@gmail.com'); //Add a recipient

            //Content
            $mail->isHTML(true); //Set email format to HTML
            $mail->Subject = 'Here is the subject';
            $mail->Body = 'This is the HTML message body <b>in bold!</b>';
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}
