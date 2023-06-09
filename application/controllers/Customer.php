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
        $this->load->model('Reservation');
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

    public function dashboardrsvp()
    {
        // return print_r($this->mm->dataUser());
        $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        $data["rsvp"] = $this->Reservation->getAll();
        $data['title'] = "Booking Meja";
        $data['pengeluaran'] = $this->pemo->getAllPengeluaran();
        $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('dashboardrsvp/index', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }


    public function reservation()
    {
        // $Mahasiswa = $this->Mahasiswa_model; //objek model
        // $validation = $this->form_validation; //objek form validation
        // $validation->set_rules($Mahasiswa->rules()); //menerapkan rules validasi pada mahasiswa_model
        // //kondisi jika semua kolom telah divalidasi, maka akan menjalankan method save pada mahasiswa_model

        // $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        // $data["rsvp"] = $this->Reservation->getAll();
        $data['title'] = "Booking Meja";
        // $data['pengeluaran'] = $this->pemo->getAllPengeluaran();
        // $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        // $this->load->view('templates/header', $data);
        // $this->load->view('templates/sidebar', $data);
        // $this->load->view('reservation/add', $data);
        // $this->load->view('templates/tutup_sidebar', $data);
        // $this->load->view('templates/footer', $data);

        $rsvp = $this->Reservation;
        $validation = $this->form_validation;
        $validation->set_rules($rsvp->rules());

        // $data['dataUser'] = $this->mm->dataUser();
        // $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        // $data['menu'] = $this->memo->getAllMenuByOutletUserLogin();


        if ($validation->run()) {
            $rsvp->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data RSVP berhasil disimpan. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button></div>');
            redirect("customer/pesan");
        }
        // $data["title"] = "Tambah Data RSVP";
        // $this->load->view('templates/header', $data);
        // $this->load->view('templates/menu');
        // $this->load->view('reservation/add', $data);
        // $this->load->view('templates/footer');

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('reservation/index', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }

    public function edit($id = null)
    {
        $data['dataUser'] = $this->mm->dataUser();

        if (!isset($id)) redirect('customer/reservation');

        $rsvp = $this->Reservation;
        $validation = $this->form_validation;
        $validation->set_rules($rsvp->rules());

        if ($validation->run()) {
            $rsvp->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Mahasiswa berhasil disimpan.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
            redirect("reservation");
        }
        $data["title"] = "Edit Data Booking";
        $data["data_rsvp"] = $rsvp->getById($id);
        if (!$data["data_rsvp"]) show_404();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('reservation/edit', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
    }

    public function delete()
    {
        $id = $this->input->get('id');
        if (!isset($id)) show_404();
        $this->Reservation->delete($id);
        $msg['success'] = true;
        $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Data RSVP berhasil dihapus.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button></div>');
        $this->output->set_output(json_encode($msg));
    }

    public function pesan()
    {
        $this->mm->check_login();
        $data['dataUser'] = $this->mm->dataUser();
        $data['transaksi'] = $this->tm->getTransaksiByIdOutletGroupByKodeInvoice($data['dataUser']['id_outlet']);
        $data['menu'] = $this->memo->getAllMenuByOutletUserLogin();
        $data['title'] = "Halaman Transaksi";
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('reservation/pesan', $data);
        $this->load->view('templates/tutup_sidebar', $data);
        $this->load->view('templates/footer', $data);
        // redirect('customer/reservation');
    }
}
