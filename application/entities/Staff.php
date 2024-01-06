<?php 


 class Staff extends RabbitORM\Model {
    const staffDefinition = '{"name": "Staff", "table": "staff"}';
    private $ID; 
    const idStaffDefinition = '{"name": "id", "column":"ID", primaryKey: "true" }';
    private $EMPLOYEE_ID; 
    private $USERNAME; 
    private $PASSWORD; 
    private $ARIA; 
    private $PERIOD_BEGIN; 
    private $PERIOD_END; 
    private $DATE_STARTS; 
    private $DATE_UPDATE; 
    private $USER_STARTS; 
    private $USER_UPDATE; 
    private $VERIFY; 
    private $STATUS; 
    // private $ID; 
    // private $ID; 
    // private $ID; 

    public function __construct()
    {
        parent::__construct();
    }

}