<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-info link sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php echo base_url('welcome') ?>">
        <div class="sidebar-brand-icon">
          <i class="fas fa-store-alt"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Toko Barra</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url('welcome') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Kategori
      </div>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/aksesoris') ?>">
          <i class="fas fa-anchor"></i>
          <span>Aksesoris</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/pakan_ikan') ?>">
          <i class="fas fa-fish"></i>
          <span>Pakan Ikan</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/senar_pancing') ?>">
          <i class="fas fa-network-wired"></i>
          <span>Senar Pancing</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/jaring') ?>">
          <i class="fas fa-infinity"></i>
          <span>Jaring</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/joran_pancing') ?>">
            <i class="fas fa-water"></i>
          <span>Joran Pancing</span></a>
      </li>

       <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/kail_pancing') ?>">
          <i class="fas fa-ship"></i>
          <span>Kail Pancing</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-dark topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3 text-white">
            <i class="fa fa-bars"></i>
          </button>


          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <div class="navbar">
              <ul class="nav navbar-nav navbar-right">
                <li>
                  <?php $keranjang = 'Keranjang belanja: '.$this->cart->total_items(). ' items' 
                  ?>
                  <?php echo anchor('dashboard/detail_keranjang', $keranjang)  ?>
                </li>
              </ul>
          

              <div class="topbar-divider d-none d-sm-block"></div>

                <ul class="nav navbar-nav navbar-right">
                  <?php if ($this->session->userdata('username')) { ?>
                    <li><div class="text-white">Selamat Datang <?php echo $this->session->userdata('username') ?></div></li>
                    <li class="ml-2"><?php echo anchor('auth/logout', 'Logout')  ?></li>
                  <?php } else { ?>
                    <li ><?php echo anchor('auth/login', 'Login'); ?></li>

                  <?php } ?>
                  
                </ul>
            </div>

            
          </ul>

        </nav>
        <!-- End of Topbar -->