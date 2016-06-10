<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Origem extends CI_Controller {

	    function __construct(){

        	parent::__construct();

        }

	public function salvarOrigem(){

		// Recebe os dados do formulário
		// O helper 'form' tem que está ativo
		$origem = $this->input->post('origem');

		// Chama o model morigem e o metodo salvarOrigem passando os valores recebidos pelo form

		$salvarOrigem = $this->morigem->salvarOrigem($origem);

		if ($salvarOrigem) {
			echo "Dados inserido com sucesso!";
		} else {
			echo "Erro ao inserir dados!";
		}
		

	}
}
