<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customer extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Main_model', 'mm');
        $this->load->model('User_model', 'um');
        $this->load->model('Pembayaran_model', 'pm');
        $this->load->model('Transaksi_model', 'tm');
        $this->load->model('Outlet_model', 'om');
        $this->load->model('Pengeluaran_model', 'pemo');
        $this->load->model('Menu_model', 'memo');
    }

    //     public function customer()
    //     {
    //         $this->mm->check_login();
    //         $data['dataUser'] = $this->mm->dataUser();
    //         $data['title'] = "Halaman Dashboard";
    //         $data['pengeluaran'] = $this->pemo->getAllPengeluaran();
    //         $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
    //         $this->load->view('templates/header', $data);
    //         $this->load->view('templates/sidebar', $data);
    //         $this->load->view('customer/index', $data);
    //         $this->load->view('templates/tutup_sidebar', $data);
    //         $this->load->view('templates/footer', $data);
    //     }
    // }

    public function index()
    {
        // return print_r($this->mm->dataUser());
        $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        $data['title'] = "Halaman Pelanggan";
        $data['pengeluaran'] = $this->pemo->getAllPengeluaran();
        $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('customer/index', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }

    public function reservation()
    {
        // return print_r($this->mm->dataUser());
        $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        $data['title'] = "Booking Meja";
        $data['pengeluaran'] = $this->pemo->getAllPengeluaran();
        $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('customer/index', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }

    public function menu_customer()
    {
        $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        $data['menu'] = $this->memo->getAllMenuByOutletUserLogin();
        $data['outlet'] = $this->om->getAllOutlet();
        $data['title'] = "Halaman Menu";
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('menu_customer/index', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }
}
