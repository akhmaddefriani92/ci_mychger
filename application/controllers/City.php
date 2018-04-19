<?php
class City extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_city', 'city');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        chek_session();
        $this->load->helper('form');
        $this->load->library('form_validation');
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        // $this->load->view('v_city', $data_airlines);
        $this->template->load('template', 'v_city', $data_airlines);


    }
   
    
    public function ajax_list(){
        chek_session();
        
        $list   = $this->city->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $city) {
            $no++;
            
            
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_city('."'".$city->City."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_city('."'".$city->City."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             
            $row = array(
                        "no"         => $no,
                        "City"          => $city->City, 
                        "Name"        => $city->Name,
                        "aksi"          => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->city->count_all(),
                        "recordsFiltered" => $this->city->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->city->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
        $this->_validate();
        $data = array(
                        'City' => $this->input->post('City'),
                        'Name' => $this->input->post('Name')
                     );
        $insert = $this->city->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        
        $this->_validate();
        $data = array(
                      'City' => $this->input->post('City'),
                      'Name' => $this->input->post('Name')
                    );
        $this->city->update(array('City' => $this->input->post('City')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->city->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }

    private function _validate()
    {
        $data = array();
        $data['error_string'] = array();
        $data['inputerror'] = array();
        $data['status'] = TRUE;
        $length = strlen($this->input->post('City'));
        if($this->input->post('City') == '' || $length!='3')
        {
            $data['inputerror'][] = 'City';
            $data['error_string'][] = 'City is required and only 3 characters';
            $data['status'] = FALSE;
        }
        
        if($data['status'] === FALSE)
        {
            echo json_encode($data);
            exit();
        }
    }



}