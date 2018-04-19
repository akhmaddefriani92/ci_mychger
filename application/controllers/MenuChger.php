<?php
class MenuChger extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_menuchger', 'menuchger');
        chek_session();
    }


    public function index()
    {
        $this->load->helper('url');
        $data["menu"] = $this->menuchger->tampil_data();
        $this->load->view('v_sidemenu', $data);
        
    }
   
    
}