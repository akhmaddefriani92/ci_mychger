<?php
class Guis extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_guis', 'guis');
        $this->load->model('model_menuchger', 'menuchger');
        $this->load->helper('url');
        chek_session();
    }


    public function index(){
        
        $data_airlines["menu"] = $this->menuchger->tampil_data();
        // $this->load->view('v_guis', $data_airlines);
        $this->template->load('template', 'v_guis', $data_airlines);

    }
   
    
    public function ajax_list(){

        $list   = $this->guis->get_datatables();
        $data   = array();
        $no     = $_POST['start'];
        $nomor  = 1;
        foreach ($list as $guis) {
            $no++;
            
            
            $aksi = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_guis('."'".$guis->GuiID."'".')"><i class="glyphicon glyphicon-pencil"></i></a>
                      <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_guis('."'".$guis->GuiID."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
             
            $row = array(
                        "no"         => $no,
                        "GuiID"          => $guis->GuiID, 
                        "GuiFileName"        => $guis->GuiFileName,
                        "Comment"        => $guis->Comment,
                        "aksi"          => $aksi
                        );
            $data[] = $row;
            $nomor++;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->guis->count_all(),
                        "recordsFiltered" => $this->guis->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id){
        
        $data = $this->guis->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add(){
     
        $data = array(
                        'GuiID' => $this->input->post('GuiID'),
                        'GuiFileName' => $this->input->post('GuiFileName'),
                        'Comment' => $this->input->post('Comment')
                     );
        $insert = $this->guis->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update(){
        
        $data = array(
                      'Comment' => $this->input->post('Comment'),
                      'GuiFileName' => $this->input->post('GuiFileName')
                    );
        $this->guis->update(array('GuiID' => $this->input->post('GuiID')), $data);
        echo json_encode(array("status" => TRUE));
        
    }

    public function ajax_delete($id){

        $this->guis->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }


}