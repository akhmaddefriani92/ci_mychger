<?php
class Counter extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_counter', 'counter');
        $this->load->model('model_ipaddress', 'ipaddress');
        $this->load->model('model_airlines', 'airlines');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->model('model_city', 'city');
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('form_validation');
        chek_session();
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        $data_airlines["data_airlines"] = $this->airlines->tampildata();
        //$data_airlines["kota"] = $this->city->tampildata();
        // $this->load->view('v_counter', $data_airlines);
        $this->template->load('template', 'v_counter', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->counter->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $counter) {
            $no++;
            
        
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void(0);" title="Edit" onclick="edit_counter('."'".$counter->IPAddress."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_counter('."'".$counter->IPAddress."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             
             
            $row = array(
                        "no"         => $no,
                        "IPAddress" => $counter->IPAddress, 
                        "Counter" => $counter->Counter, 
                        "IPDisplay" => $counter->IPDisplay, 
                        "MRL" => $counter->MRL, 
                        "Status"     => $counter->Status,
                        "DateStatus" => $counter->DateStatus, 
                        "aksi"        => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->counter->count_all(),
                        "recordsFiltered" => $this->counter->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->counter->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     #array('counterINX','Name','counterCode', 'MBpp', 'Deletef'); 
     $this->_validate();   
        
        $data = array(
                        'IPAddress' => $this->input->post('IPAddress'),
                        'Counter' => $this->input->post('Counter'),
                        'IPDisplay' => $this->input->post('IPDisplay'),
                        'MRL' => $this->input->post('MRL'),
                        'Status' => $this->input->post('Status'),
                        'DateStatus' => $this->input->post('DateStatus')
                     );
        $insert = $this->counter->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        $this->_validate();
        $data = array(
                        'Counter' => $this->input->post('Counter'),
                        'IPDisplay' => $this->input->post('IPDisplay'),
                        'MRL' => $this->input->post('MRL'),
                        'Status' => $this->input->post('Status'),
                        'DateStatus' => $this->input->post('DateStatus')
                );
        $this->counter->update(array('IPAddress' => $this->input->post('IPAddress')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->counter->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }

    private function _validate()
    {
        $data = array();
        $data['error_string'] = array();
        $data['inputerror'] = array();
        $data['status'] = TRUE;

        if($this->input->post('Counter') == '')
        {
            $data['inputerror'][] = 'Counter';
            $data['error_string'][] = 'Counter is required';
            $data['status'] = FALSE;
        }

        if($this->input->post('IPDisplay') == '')
        {
            $data['inputerror'][] = 'IPDisplay';
            $data['error_string'][] = 'IPDisplay is required';
            $data['status'] = FALSE;
        }

        if($this->input->post('MRL') == '')
        {
            $data['inputerror'][] = 'MRL';
            $data['error_string'][] = 'MRL is required';
            $data['status'] = FALSE;
        }

        if($this->input->post('Status') == '')
        {
            $data['inputerror'][] = 'Status';
            $data['error_string'][] = 'Status is required';
            $data['status'] = FALSE;
        }

        if($this->input->post('DateStatus') == '')
        {
            $data['inputerror'][] = 'DateStatus';
            $data['error_string'][] = 'DateStatus is required';
            $data['status'] = FALSE;
        }

        
        if($data['status'] === FALSE)
        {
            echo json_encode($data);
            exit();
        }
    }

}