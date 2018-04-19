<?php
class Dashboard extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_dashboard', 'dashboard');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        chek_session();
    }


    public function index(){
        
        $data["menu"] = $this->menuchger->tampil_data();
        $data["Flight"] = $this->dashboard->Flight();
        $data["City"] = $this->dashboard->City();
        $data["Users"] = $this->dashboard->Users();
        $data["GUIs"] = $this->dashboard->GUIs();
        $data["GUILink"] = $this->dashboard->GUILink();
        $data["Airlines"] = $this->dashboard->Airlines();
        $data["Counter"] = $this->dashboard->Counter();
        $data["IPAddress"] = $this->dashboard->IPAddress();
        $data["ApplAddon"] = $this->dashboard->ApplAddon();
        
        // $this->load->view('v_dashboard', $data);
        $this->template->load('template', 'v_dashboard', $data);

    }
   
    
    

}