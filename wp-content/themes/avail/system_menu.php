  <?php
  $pagetitle = get_the_title();
  ?>


  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="" class="simple-text logo-mini">
          GR
        </a>
        <a href="" class="simple-text logo-normal">
          KIKIN SYSTEM 1.0
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <!-- --------------------------------------------------------------------- -->
          <?php 
          if ($pagetitle == 'System')
          {
            echo '<li class="active">';
          }
          else
          {
            echo '<li>';
          }
          ?>
            <a href="<?php echo home_url();?>/System">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <!-- --------------------------------------------------------------------- -->

          <!-- --------------------------------------------------------------------- -->
          <?php 
          if ($pagetitle == 'List')
          {
            echo '<li class="active">';
          }
          else
          {
            echo '<li>';
          }
          ?>
            <a href="<?php echo home_url();?>/List">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>List</p>
            </a>
          </li>
          <!-- --------------------------------------------------------------------- -->

          <!-- --------------------------------------------------------------------- -->
          <?php 
          if ($pagetitle == 'Resume')
          {
            echo '<li class="active">';
          }
          else
          {
            echo '<li>';
          }
          ?>
            <a href="<?php echo home_url();?>/Resume">
              <i class="now-ui-icons education_paper"></i>
              <p>Resume</p>
            </a>
          </li>
          <!-- --------------------------------------------------------------------- -->

          <!-- --------------------------------------------------------------------- -->
          <?php 
          if ($pagetitle == 'Watchlist')
          {
            echo '<li class="active">';
          }
          else
          {
            echo '<li>';
          }
          ?>
            <a href="<?php echo home_url();?>/Watchlist">
              <i class="now-ui-icons files_box"></i>
              <p>Watch List</p>
            </a>
          </li>
          <!-- --------------------------------------------------------------------- -->

          <!-- --------------------------------------------------------------------- -->
          <?php 
          if ($pagetitle == 'Report')
          {
            echo '<li class="active">';
          }
          else
          {
            echo '<li>';
          }
          ?>
            <a href="<?php echo home_url();?>/Report">
              <i class="now-ui-icons files_single-copy-04"></i>
              <p>Report</p>
            </a>
          </li>
          <!-- --------------------------------------------------------------------- -->




          <!--
          <li>
            <a href="./map.html">
              <i class="now-ui-icons location_map-big"></i>
              <p>Maps</p>
            </a>
          </li>
          <li>
            <a href="./notifications.html">
              <i class="now-ui-icons ui-1_bell-53"></i>
              <p>Notifications</p>
            </a>
          </li>
          <li>
            <a href="./user.html">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="active ">
            <a href="./tables.html">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Table List</p>
            </a>
          </li>
          <li>
            <a href="./typography.html">
              <i class="now-ui-icons text_caps-small"></i>
              <p>Typography</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="./upgrade.html">
              <i class="now-ui-icons arrows-1_cloud-download-93"></i>
              <p>Upgrade to PRO</p>
            </a>
          </li>
        -->
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href=""><?php echo $pagetitle;?></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            
            <!--
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                  </div>
                </div>
              </div>
            </form>
            -->

            <ul class="navbar-nav">


              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons media-1_button-power"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Exit</span>
                  </p>
                </a>
              </li>



              <!--
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons media-2_sound-wave"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
            -->

<!--
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons users_single-02"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
-->


              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="now-ui-icons location_world"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Salir</a>
                </div>
              </li>
              

            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->