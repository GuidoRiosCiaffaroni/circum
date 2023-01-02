<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>CIRCUM System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="<?php echo get_template_directory_uri(); ?>/css/style_form.css">
  <link rel="stylesheet" media="screen" href="<?php echo get_template_directory_uri(); ?>/css/master_form.css">
</head>
<body>




<div class="panel" style="display: block;">
	<h1>Ingreso</h1>
  <span class="r-version">v2.0.0</span>
	<h2>A lightweight JavaScript library for creating particles</h2>
	<ul>
		<li onclick="ga('send', 'event', 'GitHub', 'click');">
      <a href="https://github.com/VincentGarreau/particles.js/" target="_blank">
        <span class="label">GitHub</span>

      </a>
    </li>
		<li onclick="ga('send', 'event', 'Download', 'click');">
      <a download="" href="https://github.com/VincentGarreau/particles.js/archive/master.zip">
        <span class="label">Download</span>
 
      </a>
    </li>
	</ul>
	
</div>



<!-- count particles -->
<!--
<div class="count-particles">
  <span class="js-count-particles">--</span> particles
</div>
-->
<!-- particles.js container -->

<div id="particles-js"></div>

<!-- scripts -->
<script src="<?php echo get_template_directory_uri(); ?>/particles.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/app.js"></script>

<!-- stats.js -->
<script src="<?php //echo get_template_directory_uri(); ?>/js/lib/stats.js"></script>
<script>
  var count_particles, stats, update;
  stats = new Stats;
  stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function() {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
  };
  requestAnimationFrame(update);
</script>

</body>
</html>