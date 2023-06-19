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

	public static function request()
	{
		return $this->output
			->set_content_type('application/json')
			->set_status_header(200)
			->set_output(json_encode([
				'text' => 'Error 200',
				'type' => 'danger'
			]));
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
