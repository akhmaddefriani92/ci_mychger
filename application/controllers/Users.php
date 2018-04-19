<?php
class Users extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_users', 'user');
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        chek_session();
    }


    public function index(){
        
        $data_airlines["data_airlines"] = $this->airlines->tampildata();
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        // $this->load->view('v_users', $data_airlines);
        $this->template->load('template', 'v_users', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->user->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $user) {
            $no++;
            
            
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_user('."'".$user->ID."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_user('."'".$user->ID."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             // $Name = $this->airlines->get_one($user->AirlinesINX);         
            $row = array(
                        "no"         => $no,
                        "UserName"          => $user->UserName, 
                        "Password"           => $user->Password,
                        "FullName"        => $user->FullName,
                        "Name"        => $user->Name,
                        "Deletef"        => $user->Deletef,
                        "aksi"          => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->user->count_all(),
                        "recordsFiltered" => $this->user->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->user->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     
        $data = array(
                        'UserName' => $this->input->post('UserName'),
                        'FullName' => $this->input->post('FullName'),
                        'Password' => $this->input->post('Password'),
                        'Deletef' => $this->input->post('Deletef'),
                        'AirlinesINX' => $this->input->post('AirlinesINX')
                
                     );
        $insert = $this->user->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        
        $data = array(
                        'UserName' => $this->input->post('UserName'),
                        'FullName' => $this->input->post('FullName'),
                        'Password' => $this->input->post('Password'),
                        'Deletef' => $this->input->post('Deletef'),
                        'AirlinesINX' => $this->input->post('AirlinesINX')
                );
        $this->user->update(array('id' => $this->input->post('ID')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->user->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }


}