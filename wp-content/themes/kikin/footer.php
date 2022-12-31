


     
      <footer class="footer">
        <div class=" container-fluid ">
          <nav>
            <ul>
              <li>
                <a href="">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="">
                  About Us
                </a>
              </li>
              <li>
                <a href="">
                  Blog <?php echo get_template_directory_uri(); ?>
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            &copy; 
            <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by <a href="" target="_blank">Invision</a>. Coded by <a href="" target="_blank">Creative Tim</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/core/jquery.min.js"></script>
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/core/popper.min.js"></script>
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/core/bootstrap.min.js"></script>
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src=".<?php echo get_template_directory_uri(); ?>/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>

  <script src="<?php echo get_template_directory_uri(); ?>/js/canvasjs.min.js"></script>

  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>



</body>

</html>