<?php get_template_part( 'header_system' ); ?>
<?php get_template_part( 'menu_system' ); ?>








      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Simple Table</h4>
              </div>
              <div class="card-body">
              <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A" title="iframe Example 1" width="100%" height="400">
                <p>Your browser does not support iframes.</p>
              </iframe>
              </div>
            </div>
          </div>
    
        </div>


        <div class="row">
          <main id="content" class="site-main" role="main">
            <h1 class="entry-title"><?php the_archive_title(); ?></h1>
            <div class="page-content">
              <?php
                while ( have_posts() ) : the_post();
                  printf( '<h2><a href="%s">%s</a></h2>', get_permalink(), get_the_title() );   
                  the_post_thumbnail();
                  the_excerpt();
                  comments_template();
                endwhile;
                the_tags( '<span class="tag-links">' . __('Tagged ', 'simentor' ) . NULL, NULL, NULL, '</span>' ) 
              ?>
          </div>
        </main>
      </div>          




        <div class="row">
<?php while ( have_posts() ) : the_post(); ?>

<main id="main" class="site-main" role="main">

  <header class="page-header">
    <h1 class="entry-title"><?php the_title(); ?></h1>
  </header>

  <div class="page-content">
    <?php the_content(); ?>
  </div>
  <div class="entry-links"><?php wp_link_pages(); ?></div>
  <?php global $wp_query; if ( $wp_query->max_num_pages > 1 ) { ?>
  <nav id="nav-below" class="navigation" role="navigation">
    <div class="nav-previous"><?php next_posts_link(sprintf( __( '%s older', 'simentor' ), '<span class="meta-nav">&larr;</span>' ) ) ?></div>
    <div class="nav-next"><?php previous_posts_link(sprintf( __( 'newer %s', 'simentor' ), '<span class="meta-nav">&rarr;</span>' ) ) ?></div>
  </nav>
  <?php } ?>
</main>

<?php endwhile; ?>

      </div>  






      </div>
















 <?php get_template_part( 'footer_system' ); ?>