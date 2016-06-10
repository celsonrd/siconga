<?
class Mresponsavel extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function getResponsavel(){

		$this->db->order_by('id');

		$query = $this->db->get('responsavel');

		return $query;
	}


	public function salvarResponsavel($responsavel){

		$this->db->set('nome',$responsavel);
		$query = $this->db->insert('responsavel');

		return $query;
	}
}