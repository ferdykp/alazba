<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Midtrans extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Log_model', 'lm');
		$this->load->model('Main_model', 'mm');
	}

	public function index()
	{
		return $this->output
			->set_content_type('application/json')
			->set_status_header(200)
			->set_output(json_encode([
				'text' => 'Error 200',
				'type' => 'danger'
			]));
	}

	public static function request($kode_pembayaran, $nominal)
	{
		$curl = curl_init();

		$params = array(
			'transaction_details' => array(
				'order_id' => $kode_pembayaran,
				'gross_amount' => $nominal,
			)
		);


		curl_setopt_array($curl, array(
			CURLOPT_URL => 'https://app.sandbox.midtrans.com/snap/v1/transactions',
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => '',
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 0,
			CURLOPT_FOLLOWLOCATION => true,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => 'POST',
			CURLOPT_POSTFIELDS => json_encode($params),
			CURLOPT_HTTPHEADER => array(
				'accept: application/json',
				'authorization: Basic U0ItTWlkLXNlcnZlci1GX2hiX045S2pWMS1IWlh6YktCZ01uLWQ6aXJiYUtlcmVuMjM=',
				'content-type: application/json'
			),
		));

		$response = curl_exec($curl);
		curl_close($curl);

		return $response;
	}

	public function callback()
	{
		$json_result = file_get_contents('php://input');
		$result = json_decode($json_result);

		return $this->output
			->set_content_type('application/json')
			->set_status_header(200)
			->set_output(json_encode([
				'text' => $result,
				'type' => 'danger'
			]));
	}
}
