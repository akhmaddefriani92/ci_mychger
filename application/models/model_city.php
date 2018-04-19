<?php
class model_city extends CI_Model{
    
    var $table = 'City';
    
    
    var $column = array('City',  'Name');
    var $column_order = array(null, 'City', 'Name'); 


    var $order = array('City' => 'asc');

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    
    
    
    
    function tampildata()
    {
        $query= $this->db->query('select * from City');
        foreach($query->result_array() as $row=> $value){
        
            $data[]=$value;

        }
        
         return $data;
    }
    
    function get_one($id)
    {
        $param  =   array('ID'=>$id);
        return $this->db->get_where('Users',$param);
    }
    
    private function _get_datatables_query()
    {
        
        $this->db->from($this->table);
        #$this->db->join($this->table, 'Airlines.AirlinesINX ='.$this->table.'.AirlinesINX');
        #$this->db->query("select a.*, b.Name from Users a inner join Airlines b on a.AirlinesINX=b.AirlinesINX");

        $i = 0;
    
        foreach ($this->column as $item) 
        {
            if($_POST['search']['value'])
                ($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
            $column[$i] = $item;
            $i++;
        }
        
        // here order processing
        if(isset($_POST['order'])) 
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } 
        else if(isset($this->order))
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
        
    }

    function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    public function get_by_id($id)
    {
        $this->db->from($this->table);
        $this->db->where('City',$id);
        $query = $this->db->get();

        return $query->row();
    }

    public function save($data)
    {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function update($where, $data)
    {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }

    public function delete_by_id($id)
    {
        $this->db->where('City', $id);
        $this->db->delete($this->table);
    }


}