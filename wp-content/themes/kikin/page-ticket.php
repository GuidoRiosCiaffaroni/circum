<?php get_header(); ?>
<?php get_template_part( 'system_menu' ); ?>
  <div class="panel-header panel-header-sm">
  </div>
  
  <div class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="card">

          <div class="card-header">
            <h4 class="card-title"> Bloqueado </h4>
          </div>

          <div class="card-body">


		  
		  
		  <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<header class="header">
<h1 class="entry-title" itemprop="name"><?php the_title(); ?></h1> <?php edit_post_link(); ?>
</header>
<div class="entry-content" itemprop="mainContentOfPage">
<?php if ( has_post_thumbnail() ) { the_post_thumbnail( 'full', array( 'itemprop' => 'image' ) ); } ?>
<?php the_content(); ?>
<div class="entry-links"><?php wp_link_pages(); ?></div>
</div>
</article>
<?php if ( comments_open() && !post_password_required() ) { comments_template( '', true ); } ?>
<?php endwhile; endif; ?>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  

        </div>
      </div>
    </div>
  </div>

  <div class="row">
  </div>          

<!-- -------------------------------------------------------------------------------------------------------------------------------- --> 
  <div class="row">
  </div> 
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->
  <div class="row">

  </div>    
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->

</div>

 <?php get_template_part( 'system_footer' ); ?>