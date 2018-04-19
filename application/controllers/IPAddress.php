<?php
class IPAddress extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_ipaddress', 'ipaddress');
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->model('model_city', 'city');
        $this->load->helper('url');
        $this->load->library('form_validation');
        chek_session();
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        $data_airlines["data_airlines"] = $this->airlines->tampildata();
        //$data_airlines["kota"] = $this->city->tampildata();
        // $this->load->view('v_ipaddress', $data_airlines);
        $this->template->load('template', 'v_ipaddress', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->ipaddress->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $ipaddress) {
            $no++;
            
        
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_ipaddress('."'".$ipaddress->IPAddressINX."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_ipaddress('."'".$ipaddress->IPAddressINX."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             
             $Name = $this->airlines->get_one($ipaddress->AirlinesINX);         
             
            $row = array(
                        "no"         => $no,
                        "IPAddress" => $ipaddress->IPAddress, 
                        "Airlines" => $Name, 
                        "Deletef"     => $ipaddress->Deletef,
                        "aksi"        => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->ipaddress->count_all(),
                        "recordsFiltered" => $this->ipaddress->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->ipaddress->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     #array('ipaddressINX','Name','ipaddressCode', 'MBpp', 'Deletef');    
        #ipaddressNo    Destination STD Boarding    Deletef         
        $this->_validate();
        $data = array(
                        'IPAddress' => $this->input->post('IPAddress'),
                        'AirlinesINX' => $this->input->post('AirlinesINX'),
                        'Deletef' => $this->input->post('Deletef')
                
                     );
        $insert = $this->ipaddress->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        $this->_validate();
        $data = array(
                        'IPAddress' => $this->input->post('IPAddress'),
                        'AirlinesINX' => $this->input->post('AirlinesINX'),
                        'Deletef' => $this->input->post('Deletef')
                );
        $this->ipaddress->update(array('IPAddressINX' => $this->input->post('IPAddressINX')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->ipaddress->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }

    private function _validate()
    {
        $data = array();
        $data['error_string'] = array();
        $data['inputerror'] = array();
        $data['status'] = TRUE;

        if($this->input->post('Deletef') == '')
        {
            $data['inputerror'][] = 'Deletef';
            $data['error_string'][] = 'Deletef is required and default 0';
            $data['status'] = FALSE;
        }
        
        if($data['status'] === FALSE)
        {
            echo json_encode($data);
            exit();
        }
    }


}