<?
class Mgraph extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function getTitle($dadosFormulario){
	
	

		
	}

	public function getSize($dadosFormulario){



		
	}

	public function getData($inicioGraph){

		//$this->db->select('valor');
		$this->db->select_sum('valor');
		//$this->db->select('periodo_de_pagamento.mes, periodo_de_pagamento.ano');
		$this->db->select('periodo_de_pagamento.mes,responsavel.nome');
		$this->db->join('periodo_de_pagamento','despesa.periodo_de_pagamento = periodo_de_pagamento.id');
		$this->db->join('responsavel', 'despesa.responsavel = responsavel.id');
		$this->db->from('despesa');
		$this->db->where("despesa.periodo_de_pagamento = $inicioGraph");
		return $this->db->get()->result();
	}

	public function getDataPie($periodo,$responsavel){

		$this->db->select_sum('valor');
		$this->db->select('categoria.descricao AS categoria');
		$this->db->join('periodo_de_pagamento','despesa.periodo_de_pagamento = periodo_de_pagamento.id');
		$this->db->join('responsavel', 'despesa.responsavel = responsavel.id');
		$this->db->join('categoria', 'despesa.categoria = categoria.id');
		$this->db->from('despesa');
		$this->db->where("despesa.periodo_de_pagamento = $periodo");
		$this->db->where("despesa.responsavel = $responsavel");
		$this->db->group_by("categoria");
		$this->db->order_by('valor','desc');
		return $this->db->get()->result();
	}
}