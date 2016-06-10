<?
class Mdespesa extends CI_Model {

    function __construct(){

        parent::__construct();
    }

	public function salvarDespesaDoisResponsaveis($dadosFormulario){
	
	if ($dadosFormulario['categoria'] == 2) {
		// Faz o insert com o primeiro responsavel
		
		$this->db->set('descricao',$dadosFormulario['descricao']);
		// Restaurando o valor original da despesa e retirando 60%
		$this->db->set('valor',(($dadosFormulario['valor'] * 2) * 0.6));
		$this->db->set('quantidade_parcelas',$dadosFormulario['qtp']);
		$this->db->set('origem',$dadosFormulario['origem']);
		$this->db->set('categoria',$dadosFormulario['categoria']);
		$this->db->set('data_despesa',$dadosFormulario['data_despesa']);
		$this->db->set('responsavel',$dadosFormulario['responsavel'][0]);
		$this->db->set('periodo_de_pagamento',$dadosFormulario['periodo_de_pagamento']);
		$this->db->set('estabelecimento',$dadosFormulario['estabelecimento']);
		$this->db->insert('despesa');
		

		// Faz o insert com o segundo responsavel
		$this->db->set('descricao',$dadosFormulario['descricao']);
		// Restaurando o valor original da despesa e retirando 40%
		$this->db->set('valor',(($dadosFormulario['valor'] * 2) * 0.4));
		$this->db->set('quantidade_parcelas',$dadosFormulario['qtp']);
		$this->db->set('origem',$dadosFormulario['origem']);
		$this->db->set('categoria',$dadosFormulario['categoria']);
		$this->db->set('data_despesa',$dadosFormulario['data_despesa']);
		$this->db->set('responsavel',$dadosFormulario['responsavel'][1]);
		$this->db->set('periodo_de_pagamento',$dadosFormulario['periodo_de_pagamento']);
		$this->db->set('estabelecimento',$dadosFormulario['estabelecimento']);
		$this->db->insert('despesa');

		return true;

	} else {

	}
		// Faz o insert com o primeiro responsavel

		$this->db->set('descricao',$dadosFormulario['descricao']);
		$this->db->set('valor',$dadosFormulario['valor']);
		$this->db->set('quantidade_parcelas',$dadosFormulario['qtp']);
		$this->db->set('origem',$dadosFormulario['origem']);
		$this->db->set('categoria',$dadosFormulario['categoria']);
		$this->db->set('data_despesa',$dadosFormulario['data_despesa']);
		$this->db->set('responsavel',$dadosFormulario['responsavel'][0]);
		$this->db->set('periodo_de_pagamento',$dadosFormulario['periodo_de_pagamento']);
		$this->db->set('estabelecimento',$dadosFormulario['estabelecimento']);
		$this->db->insert('despesa');
		
		// Faz o insert com o segundo responsavel

		$this->db->set('descricao',$dadosFormulario['descricao']);
		$this->db->set('valor',$dadosFormulario['valor']);
		$this->db->set('quantidade_parcelas',$dadosFormulario['qtp']);
		$this->db->set('origem',$dadosFormulario['origem']);
		$this->db->set('categoria',$dadosFormulario['categoria']);
		$this->db->set('data_despesa',$dadosFormulario['data_despesa']);
		$this->db->set('responsavel',$dadosFormulario['responsavel'][1]);
		$this->db->set('periodo_de_pagamento',$dadosFormulario['periodo_de_pagamento']);
		$this->db->set('estabelecimento',$dadosFormulario['estabelecimento']);
		$this->db->insert('despesa');

		return true;
		
	}

	public function salvarDespesaUmResponsavel($dadosFormulario){


		// Salva despsa um responsavel
		$this->db->set('descricao',$dadosFormulario['descricao']);
		$this->db->set('valor',$dadosFormulario['valor']);
		$this->db->set('quantidade_parcelas',$dadosFormulario['qtp']);
		$this->db->set('origem',$dadosFormulario['origem']);
		$this->db->set('categoria',$dadosFormulario['categoria']);
		$this->db->set('data_despesa',$dadosFormulario['data_despesa']);
		$this->db->set('responsavel',$dadosFormulario['responsavel']);
		$this->db->set('periodo_de_pagamento',$dadosFormulario['periodo_de_pagamento']);
		$this->db->set('estabelecimento',$dadosFormulario['estabelecimento']);
		$this->db->insert('despesa');

		return true;


	}

	public function despesaPorOrigem($periodo){

		//$this->db->select('*');
		$this->db->select('despesa.id,despesa.descricao AS nomeDespesa, valor, quantidade_parcelas,
		categoria.descricao AS categoria, data_despesa, responsavel, estabelecimento, 
		origem.descricao AS origem,responsavel.nome AS responsavel,periodo_de_pagamento.mes,periodo_de_pagamento.ano,
		periodo_de_pagamento.id AS idPeriodo');
		$this->db->from('despesa');
		$this->db->join('origem', 'despesa.origem = origem.id');
		$this->db->join('categoria','despesa.categoria = categoria.id');
		$this->db->join('responsavel','despesa.responsavel = responsavel.id');
		$this->db->join('periodo_de_pagamento','despesa.periodo_de_pagamento = periodo_de_pagamento.id');
		$this->db->where("despesa.periodo_de_pagamento = $periodo");
		$this->db->order_by('origem','asc');
		$despesa = $this->db->get();

		return $despesa;


	}

	public function consultaDespesa($idDespesa){

		$this->db->select('despesa.id,despesa.descricao as desc_despesa,despesa.quantidade_parcelas,despesa.categoria, despesa.data_despesa,responsavel,periodo_de_pagamento,estabelecimento,origem.descricao as desc_origem,responsavel.nome as nome_resp,despesa.valor,categoria.descricao as desc_cat,periodo_de_pagamento.mes,periodo_de_pagamento.ano');
		$this->db->from('despesa');
		$this->db->join('origem', 'despesa.origem = origem.id');
		$this->db->join('categoria','despesa.categoria = categoria.id');
		$this->db->join('responsavel','despesa.responsavel = responsavel.id');
		$this->db->join('periodo_de_pagamento','despesa.periodo_de_pagamento = periodo_de_pagamento.id');
		$this->db->where("despesa.id = $idDespesa");
		$despesa = $this->db->get();

		return $despesa;
	}

	
	/* Consulta despesa .old


	public function consultaDespesa($idDespesa){

		$this->db->select('*');
		$this->db->from('despesa');
		$this->db->where("despesa.id = $idDespesa");
		$despesa = $this->db->get();

		return $despesa;
	}
	*/


	public function excluirDespesa($id){

		$this->db->where('id', $id);
		return $this->db->delete('despesa');
	}

}