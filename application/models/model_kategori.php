<?php 

class Model_kategori extends CI_Model{

	public function data_aksesoris(){
		return $this->db->get_where("tb_barang", array('kategori' => 'aksesoris'));
	}

	public function data_pakan_ikan(){
		return $this->db->get_where("tb_barang", array('kategori' => 'pakan ikan'));
	}

	public function data_senar_pancing(){
		return $this->db->get_where("tb_barang", array('kategori' => 'senar pancing'));
	}

	public function data_jaring(){
		return $this->db->get_where("tb_barang", array('kategori' => 'jaring'));
	}

	public function data_joran_pancing(){
		return $this->db->get_where("tb_barang", array('kategori' => 'joran pancing'));
	}

	public function data_kail_pancing(){
		return $this->db->get_where("tb_barang", array('kategori' => 'kail pancing'));
	}
}