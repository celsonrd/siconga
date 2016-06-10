<?
class Mperiodo extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function getPeriodo(){

		$this->db->order_by('id');

		$periodoDePagamento = $this->db->get('periodo_de_pagamento');

		return $periodoDePagamento;
	}



	public function salvarPeriodo($dadosFormulario){

		$this->db->set('mes',$dadosFormulario['mes_pagamento']);
		$this->db->set('ano',$dadosFormulario['ano_pagamento']);
		$query = $this->db->insert('periodo_de_pagamento');

		return $query;
	}

	public function listarDocumentos(){
		
		
		
	}
}