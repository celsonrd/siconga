<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Responsavel extends CI_Controller {

	    function __construct(){

        	parent::__construct();

        }

	public function salvarResponsavel(){

		// Recebe os dados do formulário
		// O helper 'form' tem que está ativo
	
		$responsavel = $this->input->post('responsavel');


		// Chama o model morigem e o metodo salvarOrigem passando os valores recebidos pelo form
		$salvarResponsavel = $this->mresponsavel->salvarResponsavel($responsavel);

		if ($salvarResponsavel) {
			echo "Dados inserido com sucesso!";
		} else {
			echo "Erro ao inserir dados!";
		}
		

	}
}
