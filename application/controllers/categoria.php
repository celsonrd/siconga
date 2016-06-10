<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categoria extends CI_Controller {

	    function __construct(){

        	parent::__construct();
        }

	public function getOrigem(){
		
		$dados = $this->db->get('origem');

		return $dados;
	}

	public function salvarCategoria(){

		// Recebe os dados do formulário
		// O helper 'form' tem que está ativo
		$categoria = $this->input->post('categoria');

		// Chama o model morigem e o metodo salvarOrigem passando os valores recebidos pelo form

		$salvarCategoria = $this->mcategoria->salvarCategoria($categoria);

		if ($salvarCategoria) {
			echo "Dados inserido com sucesso!";
		} else {
			echo "Erro ao inserir dados!";
		}
		

	}
}
