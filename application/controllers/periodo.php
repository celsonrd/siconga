<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Periodo extends CI_Controller {

	    function __construct(){

        	parent::__construct();

        }

	public function salvarPeriodo(){

		// Recebe os dados do formulário
		// O helper 'form' tem que está ativo
		$dadosFormulario = array(
			"mes_pagamento" => $this->input->post("mes_pagamento"),
			"ano_pagamento" => $this->input->post("ano_pagamento")
			);


		// Chama o model morigem e o metodo salvarOrigem passando os valores recebidos pelo form
		$salvarPeriodo = $this->mperiodo->salvarPeriodo($dadosFormulario);

		if ($salvarPeriodo) {
			echo "Dados inserido com sucesso!";
		} else {
			echo "Erro ao inserir dados!";
		}
		

	}
}
