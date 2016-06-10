<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Despesa extends CI_Controller {

	function __construct(){

        parent::__construct();
        
        if(empty($this->session->userdata('id_user'))) {
            $this->session->set_flashdata('flash_data', 'You don\'t have access!');
            redirect('login');
        }

        
    }

	public function index(){

		// Método padrão para carregar o formulário e o menu

		$dadosExibicao['origens'] = $this->morigem->getOrigens();
		$dadosExibicao['responsavel'] = $this->mresponsavel->getResponsavel();
		$dadosExibicao['categoria'] = $this->mcategoria->getCategoria();
		$dadosExibicao['periodoDePagamento'] = $this->mperiodo->getPeriodo();
		
		// Carrega as views
		$this->load->view('header');
		$this->load->view('formulario',$dadosExibicao);
		//$this->load->view('rodape');
	}

	public function excluirDespesa($id){

		if ($this->mdespesa->excluirDespesa($id)) {
			echo "Despesa excluida com sucesso!";
		} else {
			echo "Problema ao excluir despesa";
		}

	}


	public function salvarDespesa(){


		$dadosFormulario = array(
			"data_despesa"			=> $this->input->post("data_despesa"),
			"origem" 				=> $this->input->post("origem"),
			"estabelecimento"		=> $this->input->post("estabelecimento"),
			"descricao" 			=> $this->input->post("descricao"),
			"origem" 				=> $this->input->post("origem"),
			"quantidade_parcelas" 	=> $this->input->post("qnt_parcela"),
			"responsavel" 			=> $this->input->post("responsavel"),
			"valor" 				=> $this->input->post("valor"),		
			"categoria" 			=> $this->input->post("categoria"),
			"periodo_de_pagamento" 	=> $this->input->post("periodo_de_pagamento")
		);

		//var_dump($dadosFormulario['responsavel']);
		//die();

		//alterar o formato da data (pt-br for usa) para salvar no db data certa
		//$dadosFormulario['data_despesa'] = date('Y/m/d',strtotime($dadosFormulario['data_despesa']));
		//$dadosFormulario["data_despesa"] = new DateTime($dadosFormulario["data_despesa"]);

		// Despesa com mais de um responsavel
		if (isset($dadosFormulario['responsavel'][1])) {
			
			// Divide o valor da parcela por dois
			
			$dadosFormulario['valor'] = $dadosFormulario['valor'] / 2;

			if ($dadosFormulario['quantidade_parcelas'] > 1) {
					
					if ($dadosFormulario['categoria'] == 2) {
						

					}
					// Flag sucesso
					$inserido;

					// For para inserir o registro com a quantidade de parcelas informada
					for ($i=1; $i <= $dadosFormulario['quantidade_parcelas'] ; $i++) {
						
						// Cria a string para inserir na quantidade de parcela
						$dadosFormulario['qtp'] = $i . " de " . $dadosFormulario['quantidade_parcelas'];
						
						// Retorno do metodo
						$inserido = $this->mdespesa->salvarDespesaDoisResponsaveis($dadosFormulario);

						// Incremento para periodo de pagamento
						$dadosFormulario['periodo_de_pagamento']++;
					}

					if ($inserido) {
							echo '<script language="javascript">';
							echo 'alert("Despesa salva com sucesso")';
							echo '</script>';
							redirect('/despesa', 'refresh');
							//echo "inserido varias parcelas";
							//$this->load->view('header');
   							//$this->load->view('sucesso');
						} else {
							echo '<script language="javascript">';
							echo 'alert("Erro ao salvar despesa")';
							echo '</script>';
							redirect('/despesa', 'refresh');
							//echo "Erro varias parcelas";
							//$this->load->view('header');
							//$this->load->view('erro');
						}

			} else {
		
				// Cria a string para inserir na quantidade de parcela
				$dadosFormulario['qtp'] = "Única";

				
				// Insere o registro - Chama o metodo
				$inserido = $this->mdespesa->salvarDespesaDoisResponsaveis($dadosFormulario);

				if ($inserido) {
					echo '<script language="javascript">';
					echo 'alert("Despesa salva com sucesso")';
					echo '</script>';
					redirect('/despesa', 'refresh');
					//echo "Sucesso para dois";
					//$this->load->view('header');
   					//$this->load->view('sucesso');

				} else {
					echo '<script language="javascript">';
					echo 'alert("Erro ao salvar despesa")';
					echo '</script>';
					redirect('/despesa', 'refresh');
					//echo "Erro para dois";
					//$this->load->view('header');
					//$this->load->view('erro');
				}
			}
		} else {

			// Converte um array numa string
			$dadosFormulario['responsavel'] = implode(',', $dadosFormulario['responsavel']);

			// Verifica o numero de parcelas	
			if ($dadosFormulario['quantidade_parcelas'] > 1) {
					
				// Flag sucesso
				$inserido;

				// For para inserir o registro com a quantidade de parcelas informada
				for ($i=1; $i <= $dadosFormulario['quantidade_parcelas'] ; $i++) {
						
					// Cria a string para inserir na quantidade de parcela
					$dadosFormulario['qtp'] = $i . " de " . $dadosFormulario['quantidade_parcelas'];
						
					// Retorno do metodo
					$inserido = $this->mdespesa->salvarDespesaUmResponsavel($dadosFormulario);
					
					// Incremento para periodo de pagamento
					$dadosFormulario['periodo_de_pagamento']++;
				}

					if ($inserido) {
						echo '<script language="javascript">';
						echo 'alert("Despesa salva com sucesso")';
						echo '</script>';
						redirect('/despesa', 'refresh');
						//$this->load->view('header');
   						//$this->load->view('sucesso');
						} else {
							echo '<script language="javascript">';
							echo 'alert("Erro ao salvar")';
							echo '</script>';
							redirect('/despesa', 'refresh');
							//$this->load->view('header');
							//$this->load->view('erro');
						}

			} else {
		
				// Cria a string para inserir na quantidade de parcela
				$dadosFormulario['qtp'] = "Única";

				// Insere o registro - Chama o metodo
				$inserido = $this->mdespesa->salvarDespesaUmResponsavel($dadosFormulario);

				if ($inserido) {
					echo '<script language="javascript">';
					echo 'alert("Despesa salva com sucesso")';
					echo '</script>';
					redirect('/despesa', 'refresh');
					//echo "Sucesso uma parcela um responsavel";
					//$this->load->view('header');
   					//$this->load->view('sucesso');

				} else {
					echo '<script language="javascript">';
					echo 'alert("Erro ao salvar")';
					echo '</script>';
					redirect('/despesa', 'refresh');
					//echo "Erro uma parcela um responsavel";
					//$this->load->view('header');
					//$this->load->view('erro');
				}
			}
		}
	}




}