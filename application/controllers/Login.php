<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @name Login.php
 * @author Imron rosdiana
 */
class Login extends CI_Controller{

    function __construct() {
        parent::__construct();
        $this->load->model("mlogin", "login");
        if(!empty($_SESSION['id_user']))
            redirect('despesa');
    }

    public function index() {
        if($_POST) {
            $result = $this->login->validate_user($_POST);
            
            if(!empty($result)) {
                $data = [
                    'id_user' => $result->id,
                    'nome' => $result->username,
                    'login' => $result->username
                ];

                $this->session->set_userdata($data);
                redirect('despesa');
            } else {
                $this->session->set_flashdata('flash_data', 'Login ou senha incorreto!');
                redirect('login');
            }
        }

        $this->load->view("login");
    }

    public function logout() {
        $data = ['id_user', 'username'];
        $this->session->unset_userdata($data);
        redirect('login');
    }
}
