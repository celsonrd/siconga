<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Administrador extends CI_Controller {

	public function index()
	{

		$this->load->view('header');
		$this->load->view('form_origem');
		$this->load->view('form_responsavel');
		$this->load->view('form_categoria');
		$this->load->view('form_periodo');
		
	}
}