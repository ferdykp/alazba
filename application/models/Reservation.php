<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Reservation extends CI_Model
{
    private $table = 'tb_rsvp';

    //validasi form, method ini akan mengembailkan data berupa rules validasi form       
    public function rules()
    {
        return [
            [
                'field' => 'nama_konsumen',  //samakan dengan atribute name pada tags input
                'label' => 'Nama Pemesan',  // label yang kan ditampilkan pada pesan error
                'rules' => 'trim|required' //rules validasi
            ],
            [
                'field' => 'jumlah_konsumen',
                'label' => 'Jumlah Orang',
                'rules' => 'trim|required'
            ],
            [
                'field' => 'pesanan',
                'label' => 'pesanan',
                'rules' => 'trim|required'
            ],
            [
                'field' => 'waktu',
                'label' => 'Waktu Pesan',
                'rules' => 'trim|required'
            ],
            // [
            //     'field' => 'NoHp',
            //     'label' => 'No Hp',
            //     'rules' => 'trim|required|numeric|min_length[9]|max_length[15]'
            // ],
            [
                'field' => 'bayar',
                'label' => 'bayar',
                'rules' => 'trim|required'
            ]
        ];
    }

    //menampilkan data mahasiswa berdasarkan id mahasiswa
    public function getById($id)
    {
        return $this->db->get_where($this->table, ["id_rsvp" => $id])->row();
        //query diatas seperti halnya query pada mysql 
        //select * from mahasiswa where id_rsvp='$id'
    }

    //menampilkan semua data mahasiswa
    public function getAll()
    {
        $this->db->from($this->table);
        $this->db->order_by("id_rsvp", "desc");
        $query = $this->db->get();
        return $query->result();
        //fungsi diatas seperti halnya query 
        //select * from mahasiswa order by id_rsvp desc
    }

    //menyimpan data mahasiswa
    public function save()
    {
        $data = array(
            "nama_konsumen" => $this->input->post('nama_konsumen'),
            "jumlah_konsumen" => $this->input->post('jumlah_konsumen'),
            "pesanan" => $this->input->post('pesanan'),
            "waktu" => $this->input->post('waktu'),
            // "NoHp" => $this->input->post('NoHp'),
            "bayar" => $this->input->post('bayar')
        );
        return $this->db->insert($this->table, $data);
    }

    //edit data mahasiswa
    public function update()
    {
        $data = array(
            "nama_konsumen" => $this->input->post('nama_konsumen'),
            "jumlah_konsumen" => $this->input->post('jumlah_konsumen'),
            "pesanan" => $this->input->post('pesanan'),
            "waktu" => $this->input->post('waktu'),
            // "NoHp" => $this->input->post('NoHp'),
            "bayar" => $this->input->post('bayar')
        );
        return $this->db->update($this->table, $data, array('id_rsvp' => $this->input->post('id_rsvp')));
    }

    //hapus data mahasiswa
    public function delete($id)
    {
        return $this->db->delete($this->table, array("id_rsvp" => $id));
    }
}
