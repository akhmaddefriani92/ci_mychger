<?php
class Flight extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_flight', 'flight');
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
        // $this->load->view('v_flight', $data_airlines);
        $this->template->load('template', 'v_flight', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->flight->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $flight) {
            $no++;
            
        
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_flight('."'".$flight->FlightID."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_flight('."'".$flight->FlightID."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             
             // $Name = $this->airlines->get_one($flight->AirlinesINX);         
             
            $row = array(
                        "no"         => $no,
                        "FlightNo" => $flight->FlightNo, 
                        "Airlines" => $flight->Name, 
                        "Destination"        => $flight->Destination, 
                        "STD"=> $flight->STD,
                        "Boarding"=> $flight->Boarding,
                        "Deletef"     => $flight->Deletef,
                        "aksi"        => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->flight->count_all(),
                        "recordsFiltered" => $this->flight->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->flight->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     #array('flightINX','Name','flightCode', 'MBpp', 'Deletef');    
        #FlightNo    Destination STD Boarding    Deletef         
        $data = array(
                        'FlightNo' => $this->input->post('FlightNo'),
                        'Destination' => $this->input->post('Destination'),
                        'STD' => $this->input->post('STD'),
                        'Boarding' => $this->input->post('Boarding'),
                        'AirlinesINX' => $this->input->post('AirlinesINX'),
                        'Deletef' => $this->input->post('Deletef')
                
                     );
        $insert = $this->flight->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        
        $data = array(
                        'FlightNo' => $this->input->post('FlightNo'),
                        'Destination' => $this->input->post('Destination'),
                        'STD' => $this->input->post('STD'),
                        'Boarding' => $this->input->post('Boarding'),
                        'AirlinesINX' => $this->input->post('AirlinesINX'),
                        'Deletef' => $this->input->post('Deletef')
                );
        $this->flight->update(array('FlightID' => $this->input->post('FlightID')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->flight->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }


}