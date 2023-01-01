<?php get_header(); ?>
<?php get_template_part( 'system_menu' ); ?>


  <div class="panel-header panel-header-sm">
  </div>
  
  <div class="content">
    <div class="row">
      <div class="col-md-12">

        <div class="card">
          <div class="card-header">
            <h4 class="card-title"> <?php single_term_title(); ?></h4>
          </div>
          <div class="card-body">

<div class="archive-meta" itemprop="description"><?php if ( '' != get_the_archive_description() ) { echo esc_html( get_the_archive_description() ); } ?></div>



<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php get_template_part( 'entry' ); ?>
<?php endwhile; endif; ?>
<?php get_template_part( 'nav', 'below' ); ?>



        </div>
      </div>
    </div>
  </div>




</div>









 <?php get_template_part( 'system_footer' ); ?>
<?php //get_footer(); ?>