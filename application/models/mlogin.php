<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @name: Login model
 * @author: Imron Rosdiana
 */
class Mlogin extends CI_Model
{

    function __construct() {
        parent::__construct();
        //$this->load->database();
    }

    public function validate_user($data) {
        $this->db->where('login', $data['username']);
        $this->db->where('password', md5($data['password']));
        return $this->db->get('responsavel')->row();
    }

    function __destruct() {
        $this->db->close();
    }
}
