<?php
class GUILink extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_guilink', 'guilink');
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_guis', 'guis');
        $this->load->model('model_ipaddress', 'ipaddress');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('form_validation');

        chek_session();
    }


    public function index(){
                

        $data_airlines["menu"] = $this->menuchger->tampil_data();
        //$data_airlines["ipaddress"] = $this->ipaddress->tampil_data2();
        //$data_airlines["guis"] = $this->guis->tampil_data();
        // $this->load->view('v_guilink', $data_airlines);
        $this->template->load('template', 'v_guilink', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->guilink->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        //print_r($list);
        foreach ($list as $guilink) {
            $no++;
            
            
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_guilink('."'".$guilink->IPAddressINX."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_guilink('."'".$guilink->IPAddressINX."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
            /*
           $row_ip = $this->ipaddress->get_one($guilink->IPAddressINX);           
            
           $IPAddress= $row_ip->IPAddress;

           $AirlinesINX = $row_ip->AirlinesINX;
           $Name        = $this->airlines->get_one($AirlinesINX);
           */
           

             
            $row = array(
                
                        "no"         => $no,
                        "IPAddress"        => $guilink->IPAddress,
                        "Name"        => $guilink->Name,
                        "GuiID1"          => $guilink->GuiID1, 
                        "GuiID2"          => $guilink->GuiID2, 
                        "GuiID3"          => $guilink->GuiID3, 
                        "GuiID4"          => $guilink->GuiID4, 
                        "GuiID5"          => $guilink->GuiID5, 
                        "Deletef"        => $guilink->Deletef,
                        
                        "aksi"          => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->guilink->count_all(),
                        "recordsFiltered" => $this->guilink->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->guilink->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
        
        $this->_validate();
        $data = array(
                        'IPAddress' => $this->input->post('IPAddress'),
                        'GuiID1' => $this->input->post('GuiID1'),
                        'GuiID2' => $this->input->post('GuiID2'),
                        'GuiID3' => $this->input->post('GuiID3'),
                        'GuiID4' => $this->input->post('GuiID4'),
                        'GuiID5' => $this->input->post('GuiID5'),
                        'Deletef' => $this->input->post('Deletef')
                );
        
        $insert = $this->guilink->save($data);
        echo json_encode(array("status" => TRUE));

    }

    public function ajax_update(){
        $this->_validate();
        $data = array(
                        
                        'GuiID1' => $this->input->post('GuiID1'),
                        'GuiID2' => $this->input->post('GuiID2'),
                        'GuiID3' => $this->input->post('GuiID3'),
                        'GuiID4' => $this->input->post('GuiID4'),
                        'GuiID5' => $this->input->post('GuiID5'),
                        'Deletef' => $this->input->post('Deletef')
                    );
        $this->guilink->update(array('IPAddress' => $this->input->post('IPAddress')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->guilink->delete_by_id($id);
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