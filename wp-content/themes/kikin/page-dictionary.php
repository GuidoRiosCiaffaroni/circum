<?php get_header(); ?>
<?php get_template_part( 'system_menu' ); ?>
  <div class="panel-header panel-header-sm">
  </div>
  
  <div class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="card">

          <div class="card-header">
            <h4 class="card-title"> Dictionary</h4>
          </div>

          <div class="card-body">


          <?php
          /*
            Template Name: Blog posts template
          */
          $blog_posts = new WP_Query( 
            array( 
              'category_name'=>'diccionario',
              'post_type' => 'post', 
              'post_status’' => 'publish', 
              'posts_per_page' => -1 ) 
          );
          
          ?>

          <div class = "page-container">

            <div class = "main-content">
              <?php if ( $blog_posts->have_posts() ) : ?>
              <div class = "blog-posts">
                <?php while ( $blog_posts->have_posts() ) : $blog_posts->the_post(); ?>
                
                <article id = "post-<?php the_ID(); ?>">
                  <?php 
                  echo '<b>Titulo   : </b>';
                  the_title();
                  ?>
         
                  <div class = "post-category">
                  <?php

                  echo '<b>Categorias   : </b>';
                  $categories = get_the_category();
                  $separator = ' ';
      		        $output = '';
      						if ( ! empty( $categories ) ) 
                  {
      							foreach( $categories as $category ) 
                    {
      								$output .='<a href='.home_url('/Categories/?ID=') . $categories[0]->term_id . '>' . esc_html( $category->name ) . '</a>' . $separator;
      							}
      							echo trim( $output, $separator );
      						}
      						echo  '<br>';
                  ?>
                  </div>	  
      				  
                  <div class = "post-excerpt">
                    <?php 
                    echo '<b>Información    : </b>';
                    wp_kses_post( the_excerpt() ) 
                    ?>
                  </div>
      
                  <div class = "post-excerpt">
              
                    <a href="<?php echo home_url();?>/Content/?ID=<?php the_ID(); ?>">
                      <?php 
                      if ( has_post_thumbnail() ) 
                      { 
                        the_post_thumbnail( get_the_ID(), 'full' );
                      } 
                      ?>
                      Leer Más
                    </a>
                  </div>
                  </br>

                </article>
              <?php endwhile; ?>
              </div> 
              
              <?php else: ?>
          
              <p class = "no-blog-posts">
                <?php esc_html_e('Sorry, no posts matched your criteria.', 'theme-domain'); ?> 
              </p>
            
              <?php 
              endif; 
              wp_reset_postdata(); 
              ?>
            </div>
          
          <div class = "sidebar-content"></div>
          
          </div>

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