<?php
class model_menuchger extends CI_Model{
    

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    
    
    function tampil_data(){
        $query = $this->db->query("select * from menuchger2 where active='0'order by no desc");


        return $query;
    }
   

}