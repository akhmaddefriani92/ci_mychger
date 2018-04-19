<?php
class Airlines extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        $this->load->library('form_validation');
        chek_session();
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        $data_airlines["status"]=$this->session->userdata('status_login');
        // $this->load->view('v_airlines', $data_airlines);
        $this->template->load('template', 'v_airlines', $data_airlines);

        
        
        $session=$this->session->userdata('status_login');
        if(empty($session)){

            redirect('auth/login');
        }
        
    }
   
    
    public function ajax_list(){
        chek_session();
        $list   = $this->airlines->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $airlines) {
            $no++;
            
        
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void();" title="Edit" onclick="edit_airlines('."'".$airlines->AirlinesINX."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void();" title="Hapus" onclick="delete_airlines('."'".$airlines->AirlinesINX."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
                      
            $row = array(
                        "no"         => $no,
                        "AirlinesINX" => $airlines->AirlinesINX, 
                        "Name"        => $airlines->Name, 
                        "AirlinesCode"=> $airlines->AirlinesCode,
                        "MBpp"        => $airlines->MBpp,
                        "Deletef"     => $airlines->Deletef,
                        "aksi"        => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->airlines->count_all(),
                        "recordsFiltered" => $this->airlines->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->airlines->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     #array('AirlinesINX','Name','AirlinesCode', 'MBpp', 'Deletef');    
        $this->_validate();
        $data = array(
                        'Name' => $this->input->post('Name'),
                        'AirlinesCode' => $this->input->post('AirlinesCode'),
                        'MBpp' => $this->input->post('MBpp'),
                        'Deletef' => $this->input->post('Deletef')
                
                     );
        $insert = $this->airlines->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        $this->_validate();
        $data = array(
                        'Name' => $this->input->post('Name'),
                        'AirlinesCode' => $this->input->post('AirlinesCode'),
                        'MBpp' => $this->input->post('MBpp'),
                        'Deletef' => $this->input->post('Deletef')
                );
        $this->airlines->update(array('AirlinesINX' => $this->input->post('AirlinesINX')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->airlines->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }

    private function _validate(){
        
        $data = array();
        $data['error_string'] = array();
        $data['inputerror'] = array();
        $data['status'] = TRUE;

        $length = strlen($this->input->post('Deletef'));

        if($this->input->post('Deletef') == '' || $length!='1')
        {
            $data['inputerror'][] = 'Deletef';
            $data['error_string'][] = 'Deletef is required and default is 0';
            $data['status'] = FALSE;
        }
        
        if($data['status'] === FALSE)
        {
            echo json_encode($data);
            exit();
        }



    }



}