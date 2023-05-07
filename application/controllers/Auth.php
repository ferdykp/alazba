<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function index()
    {
        if ($this->session->userdata('id_user')) {
            redirect('main');
        }
        $data['title'] = "Halaman Login";
        $this->load->view('templates/header', $data);
        $this->load->view('auth/index', $data);
        $this->load->view('templates/footer', $data);
    }

    public function login()
    {
        if ($this->session->userdata('id_user')) {
            redirect('main');
        }
        $username = $this->input->post('username', true);
        $password = $this->input->post('password', true);
        $check = $this->db->get_where('tb_user', ['username' => $username])->row_array();
        if ($check) {
            if (password_verify($password, $check['password'])) {
                $session = [
                    'id_user' => $check['id_user'],
                    'id_outlet' => $check['id_outlet'],
                    'jabatan' => $check['jabatan']
                ];
                $this->session->set_userdata($session);
                if ($check['jabatan'] == 'administrator') {
                    redirect('main');
                } else {
                    redirect('customer');
                }
                // if ($this->session->set_userdata($session)) {
                //     redirect('main');
                // if ($session->jabatan == 'administrator') {
                //     redirect('main');
            } else {
                // redirect('main/customer');
                $this->session->set_flashdata('message-failed', 'Password yang anda masukkan salah!');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message-failed', 'Username yang anda masukkan salah!');
            redirect('auth');
        }
    }

    public function registration()
    {
        $this->form_validation->set_rules('nama_user', 'Name', 'required|trim');
        $this->form_validation->set_rules('username', 'Name', 'required|trim');
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'matches' => 'Password doesnt match!',
            'min_length' => 'Password too short!'
        ]);
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

        if ($this->form_validation->run() == false) {

            $data['title'] = "Register";
            $this->load->view('templates/header', $data);
            $this->load->view('templates/footer');
            $this->load->view('auth/registration');
        } else {
            $data = [
                'nama_user' => htmlspecialchars($this->input->post('nama_user', true)),
                'username' => htmlspecialchars($this->input->post('username', true)),
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'jabatan' => 'konsumen',
                'id_outlet' => 1
            ];

            $this->db->insert('tb_user', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
            Congratulation! Your Account Has Been Created. Please Login</div>');
            redirect('auth');
            // echo 'data berhasil ditambahkan';

            // $this->session->set_userdata($session);
            // redirect('auth/login');
            // $this->session->userdata('id_user');
            // redirect('auth');

        }
    }

    public function logout()
    {
        session_destroy();
        redirect('auth');
    }
}
