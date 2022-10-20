<?php get_template_part( 'system_header' ); ?>
<?php get_template_part( 'system_menu' ); ?>

      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"><?php echo get_the_title(); ?></h4>
              </div>
              <div class="card-body">


                <article id="post-<?php the_ID(); ?>" <?php post_class('post-items mb-6'); ?>>
                  <figure class="post-image">
       
                    <div class="post-meta imu">
                      <span class="post-list">
                      </span>
                    </div>
                  </figure>
        
                  <div class="post-content">


     
         

<header class="header">
<h1 class="entry-title" itemprop="name"><?php single_term_title(); ?></h1>
<div class="archive-meta" itemprop="description"><?php if ( '' != get_the_archive_description() ) { echo esc_html( get_the_archive_description() ); } ?></div>
</header>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php get_template_part( 'entry' ); ?>
<?php endwhile; endif; ?>
<?php get_template_part( 'nav', 'below' ); ?>





























         
      




                    <div class="post-meta down">
                    </div>
                  </div>
                </article>




  
              </div>
            </div>
          </div>
    
        </div>

        <div class="row">


        </div>          
    </div>

 <?php get_template_part( 'footer_system' ); ?>