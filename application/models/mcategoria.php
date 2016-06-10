<?
class Mcategoria extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function getCategoria(){

	$this->db->order_by('descricao');

	$query = $this->db->get('categoria');

	return $query;
	}

	public function salvarCategoria($categoria){

		$this->db->set('descricao',$categoria);
		$query = $this->db->insert('categoria');

	return $query;
	}
}