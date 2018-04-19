<?php
class model_dashboard extends CI_Model{
    
    
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    
    
    function Flight(){

        $query = $this->db->query('SELECT * FROM Flight');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function City(){
        
        $query = $this->db->query('SELECT * FROM City');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function Users(){
        
        $query = $this->db->query('SELECT * FROM Users');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function GUIs(){
        
        $query = $this->db->query('SELECT * FROM GUIs');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function GUILink(){
        
        $query = $this->db->query('SELECT * FROM GUILink');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function Airlines(){
        
        $query = $this->db->query('SELECT * FROM Airlines');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function Counter(){
        
        $query = $this->db->query('SELECT * FROM Counter');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function IPAddress(){
        
        $query = $this->db->query('SELECT * FROM IPAddress');
        $numrow= $query->num_rows();
        
        return $numrow;
    }

    function ApplAddon(){
        
        $query = $this->db->query('SELECT * FROM ApplAddon');
        $numrow= $query->num_rows();
        
        return $numrow;
    }


    
    

    
    


}