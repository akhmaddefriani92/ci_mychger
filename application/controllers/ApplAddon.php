<?php
class ApplAddon extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_appladdon', 'appladdon');
        $this->load->model('model_ipaddress', 'ipaddress');
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->model('model_city', 'city');
        $this->load->helper('url');
        chek_session();
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        $data_airlines["data_airlines"] = $this->airlines->tampildata();
        //$data_airlines["kota"] = $this->city->tampildata();
        // $this->load->view('v_appladdon', $data_airlines);
        
        $this->template->load('template', 'v_appladdon', $data_airlines);


    }
   
    
    public function ajax_list(){

        $list   = $this->appladdon->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $appladdon) {
            $no++;
            
        
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_appladdon('."'".$appladdon->idx."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_appladdon('."'".$appladdon->idx."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
            $row = array(
                        "no"         => $no,
                        "AirCode" => $appladdon->AirCode, 
                        "AppName" => $appladdon->AppName, 
                        "AppPath" => $appladdon->AppPath, 
                        "Status"     => $appladdon->Status,
                        "aksi"        => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->appladdon->count_all(),
                        "recordsFiltered" => $this->appladdon->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->appladdon->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     # idx | AirCode | AppName     | AppPath                                                                          | Status 
        
        $data = array(
                        'AirCode' => $this->input->post('AirCode'),
                        'AppName' => $this->input->post('AppName'),
                        'AppPath' => $this->input->post('AppPath'),
                        'Status' => $this->input->post('Status')
                        
                     );
        $insert = $this->appladdon->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        
        $data = array(
                        'AirCode' => $this->input->post('AirCode'),
                        'AppName' => $this->input->post('AppName'),
                        'AppPath' => $this->input->post('AppPath'),
                        'Status' => $this->input->post('Status')
                );
        $this->appladdon->update(array('idx' => $this->input->post('idx')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->appladdon->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }


}