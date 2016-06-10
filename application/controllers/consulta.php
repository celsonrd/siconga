<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Consulta extends CI_Controller {

	function __construct(){

        parent::__construct();
        
        if(empty($this->session->userdata('id_user'))) {
            $this->session->set_flashdata('flash_data', 'You don\'t have access!');
            redirect('login');
        }
    }

	public function index(){

		// Carrega o header do menu
		$this->load->view('header');

		// Carrega todos os periodos de pagamento
		$data['periodoDePagamento'] = $this->mperiodo->getPeriodo();
		
		// Envia os periodos de pagamentos
		//$this->load->view('v_consulta_despesa',$data);
		$this->load->view('v_consulta_despesa_tabela',$data);
		$this->load->view('rodape');
		
	}

	public function despesaPorPeriodo($periodo){

		if ($periodo == 0) {

			echo "<script>";
			echo "alert('Selecione um valor')";
			echo "</script>";
		}
		// Recebe o valor do periodo
		//$periodo = $this->input->post('periodo_despesa');

		////////////// GRAFICO DE BARRA //////////////

		// Define a data inicial da consulta para montar o grafico
		// mesAtual - 6 meses
		$inicioGraph = ($periodo - 4);

		// Criar o array para armazenar o resultado final
		$data['graph'] = null;

		for ($i=$inicioGraph; $i <= ($periodo) ; $i++) { 
			$data['graph'][$i] = $this->mgraph->getData($i);
		
		}
		
		
		// Criar array para grafico de barra
		$arrayGraphPieCelson  = array();
		
		// Converte o array de objetos em array de array
		//foreach ($dadosDoGraficoCelson as $key => $value) {
		//	$arrayGraphPieCelson[$key] = (array) $dadosDoGraficoCelson[$key]; 
		//}

		// Retira os volores para montar o grafico de pizza
		$valorCelsonPie = array();
			foreach ($arrayGraphPieCelson as $key => $value) {
  			$valorCelsonPie[$key] = $value['valor'];
		}

		// Retira as categorias em um array diferente
		$categoriaCelsonPie = array();
			foreach ($arrayGraphPieCelson as $key => $value) {
  			$categoriaCelsonPie[$key] = $value['categoria'];
		}

		

		$data['dataCelsonPieString'] = "[" . join(", ", $valorCelsonPie) . "]";
		$data['labelsCelsonPieString'] = "['" . join("', '", $categoriaCelsonPie) . "']";		

		////////////// GRAFICO DE PIZZA CELSON //////////////
		
		// Carrega os dados para exibicao do grafico de pizza Celson
		$dadosDoGraficoCelson = $this->mgraph->getDataPie($periodo,1);

		
		// Criar array para grafico de pizza
		$arrayGraphPieCelson  = array();
		
		// Converte o array de objetos em array de array
		foreach ($dadosDoGraficoCelson as $key => $value) {
			$arrayGraphPieCelson[$key] = (array) $dadosDoGraficoCelson[$key]; 
		}

		// Retira os volores para montar o grafico de pizza
		$valorCelsonPie = array();
			foreach ($arrayGraphPieCelson as $key => $value) {
  			$valorCelsonPie[$key] = $value['valor'];
		}

		// Retira as categorias em um array diferente
		$categoriaCelsonPie = array();
			foreach ($arrayGraphPieCelson as $key => $value) {
  			$categoriaCelsonPie[$key] = $value['categoria'];
		}

		

		$data['dataCelsonPieString'] = "[" . join(", ", $valorCelsonPie) . "]";
		$data['labelsCelsonPieString'] = "['" . join("', '", $categoriaCelsonPie) . "']";		


		////////////// GRAFICO DE PIZZA CRIS //////////////
		
		
		// Carrega os dados para exibicao do grafico de pizza Cris
		$dadosDoGraficoCris = $this->mgraph->getDataPie($periodo,2);

		
		// Criar array para grafico de pizza
		$arrayGraphPieCris  = array();
		
		// Converte o array de objetos em array de array
		foreach ($dadosDoGraficoCris as $key => $value) {
			$arrayGraphPieCris[$key] = (array) $dadosDoGraficoCris[$key]; 
		}

		// Retira os volores para montar o grafico de pizza
		$valorCrisPie = array();
			foreach ($arrayGraphPieCris as $key => $value) {
  			$valorCrisPie[$key] = $value['valor'];
		}

		// Retira as categorias em um array diferente
		$categoriaCrisPie = array();
			foreach ($arrayGraphPieCris as $key => $value) {
  			$categoriaCrisPie[$key] = $value['categoria'];
		}

		

		$data['dataCrisPieString'] = "[" . join(", ", $valorCrisPie) . "]";
		$data['labelsCrisPieString'] = "['" . join("', '", $categoriaCrisPie) . "']";


		// Carrega os dados para exibicao do grafico de pizza Cris
		$data['graphPieCris'] = $this->mgraph->getDataPie($periodo,2);



		// Metodo da query
		$data['todasAsDespesas'] = $this->mdespesa->despesaPorOrigem($periodo);
		//$data['periodo'] = $this->input->post('periodo_despesa');
		
		
		// Carrega a view com os dados
		$this->load->view('header');
		$this->load->view('v_periodo',$data);
		//$this->load->view('rodape');

	}

	public function detalheDespesa($idDespesa){

		$this->load->view('header');

		$data['despesa'] = $this->mdespesa->consultaDespesa($idDespesa)->result();


		$this->load->view('v_detalhe',$data);


	}

}