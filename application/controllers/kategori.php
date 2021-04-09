<?php 

class Kategori extends CI_Controller{
	public function aksesoris()
	{
		$data['aksesoris'] = $this->model_kategori->data_aksesoris()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('aksesoris', $data);
		$this->load->view('templates/footer');
	}

	public function pakan_ikan()
	{
		$data['pakan_ikan'] = $this->model_kategori->data_pakan_ikan()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('pakan_ikan', $data);
		$this->load->view('templates/footer');
	}

	public function senar_pancing()
	{
		$data['senar_pancing'] = $this->model_kategori->data_senar_pancing()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('senar_pancing', $data);
		$this->load->view('templates/footer');
	}

	public function jaring()
	{
		$data['jaring'] = $this->model_kategori->data_jaring()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('jaring', $data);
		$this->load->view('templates/footer');
	}

	public function joran_pancing()
	{
		$data['joran_pancing'] = $this->model_kategori->data_joran_pancing()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('joran_pancing', $data);
		$this->load->view('templates/footer');
	}

	public function kail_pancing()
	{
		$data['kail_pancing'] = $this->model_kategori->data_kail_pancing()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('kail_pancing', $data);
		$this->load->view('templates/footer');
	}
}