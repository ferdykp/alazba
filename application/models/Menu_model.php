<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Main_model', 'mm');
		$this->load->model('Log_model', 'lm');
	}

	public function getAllMenuByOutletUserLogin()
	{
		$dataUser = $this->mm->dataUser();
		$this->db->join('tb_outlet', 'tb_menu.id_outlet=tb_outlet.id_outlet');
		$this->db->order_by('tb_menu.harga_menu', 'asc');
		return $this->db->get_where('tb_menu', ['tb_menu.id_outlet' => $dataUser['id_outlet']])->result_array();
	}

	public function getMenuById($id)
	{
		return $this->db->get_where('tb_menu', ['id_menu' => $id])->row_array();
	}

	public function checkJabatan($reason)
	{
		$dataUser = $this->mm->dataUser();
		if ($dataUser['jabatan'] != 'administrator') {
			$this->session->set_flashdata('message-failed', 'Anda tidak memiliki hak akses ini, silahkan hubungi administrator!');
			$this->lm->addLog('User dengan nama user <b>' . $dataUser['nama_user'] . '</b> mencoba <b>' . $reason . '</b>', $this->mm->dataUser()['id_user']);
			redirect('main/menu');
			return false;
		}
	}

	public function addMenu()
	{
		$this->checkJabatan('menambahkan menu');

		$config['upload_path']         = 'images/';  // folder upload 
		$config['allowed_types']        = 'gif|jpg|png'; // jenis file
		$config['max_size']             = 3000;
		$config['max_width']            = 1024;
		$config['max_height']           = 768;

		$this->load->library('upload', $config);
		return print_r($this->upload->data());
		if (!$this->upload->do_upload('image')) //sesuai dengan name pada form 
		{
			echo 'anda gagal upload';
		} else {
			$file = $this->upload->data();
			$gambar = $file['file_name'];

			$data = [
				'nama_menu' => ucwords(strtolower($this->input->post('nama_menu', true))),
				'harga_menu' => $this->input->post('harga_menu', true),
				'id_outlet' => $this->mm->dataUser()['id_outlet'],
				'image' => $gambar,
			];

			$this->db->insert('tb_menu', $data);
			$this->session->set_flashdata('message-success', 'Menu baru dengan nama menu ' . $data['nama_menu'] . ' berhasil ditambahkan');
			$this->lm->addLog('Menu baru dengan nama menu <b>' . $data['nama_menu'] . '</b> berhasil ditambahkan', $this->mm->dataUser()['id_user']);
			redirect('main/menu');
		}
	}

	public function editMenu($id_menu)
	{

		$data = $this->getMenuById($id_menu);
		$nama_menu = $data['nama_menu'];

		$this->checkJabatan('mengubah menu ' . $nama_menu);

		$data = [
			'nama_menu' => ucwords(strtolower($this->input->post('nama_menu', true))),
			'harga_menu' => $this->input->post('harga_menu', true),
			'id_outlet' => $this->mm->dataUser()['id_outlet']
		];

		$this->db->update('tb_menu', $data, ['id_menu' => $id_menu]);
		$this->session->set_flashdata('message-success', 'Menu dengan nama menu ' . $nama_menu . ' berhasil diubah menjadi ' . $data['nama_menu']);
		$this->lm->addLog('Menu dengan nama menu <b>' . $nama_menu . '</b> berhasil diubah menjadi <b>' . $data['nama_menu'] . '</b>', $this->mm->dataUser()['id_user']);
		redirect('main/menu');
	}

	public function deleteMenu($id_menu)
	{
		$data = $this->getMenuById($id_menu);
		$nama_menu = $data['nama_menu'];
		$this->checkJabatan('menghapus menu ' . $nama_menu);
		$this->db->delete('tb_menu', ['id_menu' => $id_menu]);
		$this->session->set_flashdata('message-success', 'Menu dengan nama menu ' . $nama_menu . ' berhasil dihapus');
		$this->lm->addLog('Menu dengan nama menu <b>' . $nama_menu . '</b> berhasil dihapus', $this->mm->dataUser()['id_user']);
		redirect('main/menu');
	}
}
