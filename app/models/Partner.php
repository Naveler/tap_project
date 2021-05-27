<?php


class Partner
{
    private $db;

    /**
     * Partner constructor.
     */
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getPatners(){
        $this->db->query('SELECT *,
                                partners.name as partner_name,
                                activity.name as partner_activity,
                                partners.id as partner_id
                                FROM partners 
                                INNER JOIN activity ON partners.activity = activity.id');
        $result = $this->db->getAll();
        return $result;
    }

    public function getPartner($id){
        $this->db->query('SELECT * FROM partners WHERE id=:id');
        $this->db->bind('id', $id);
        $result= $this->db->getOne();
        return $result;
    }
}