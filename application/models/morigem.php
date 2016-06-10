<?
class Morigem extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function getOrigens(){

		$this->db->order_by('descricao');

		$query = $this->db->get('origem');

		return $query;
	}


	public function salvarOrigem($origem){

		$this->db->set('descricao',$origem);
		$query = $this->db->insert('origem');

		return $query;

	}
}