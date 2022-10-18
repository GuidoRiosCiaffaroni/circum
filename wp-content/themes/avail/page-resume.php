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
<!--
              <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A" title="iframe Example 1" width="100%" height="400">
                <p>Your browser does not support iframes.</p>
              </iframe>
-->



          <?php
          /*
            Template Name: Blog posts template
          */
          $blog_posts = new WP_Query( array( 'post_type' => 'post', 'post_status’' => 'publish', 'posts_per_page' => -1 ) );
          ?>

          <div class = "page-container">

            <div class = "main-content">
              <?php if ( $blog_posts->have_posts() ) : ?>
              <div class = "blog-posts">
                <?php while ( $blog_posts->have_posts() ) : $blog_posts->the_post(); ?>
                
                <article id = "post-<?php the_ID(); ?>">
                  
                  <!-- <a href = "<?php the_permalink(); ?>"> -->
                  <!--
                  <a href="<?php echo home_url();?>/Content/?ID=<?php the_ID(); ?>">
                    <?php 
                    if ( has_post_thumbnail() ) 
                    { 
                      the_post_thumbnail( get_the_ID(), 'full' );
                    } 
                    ?>
                    <h4 class = "post-title"><?php the_title(); ?></h4>
                  </a>
                  -->


 
                    <?php 
                    echo '<b>Titulo   : </b>';
                    the_title();
                    ?>

                   
            

                  <div class = "post-category">
                    <?php 
                    echo '<b>Categorias   : </b>';
                    the_category(', ');
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
                  <!--
                  <span class = "post-read-more">
                    <a itemprop = "url" href = "<?php the_permalink(); ?>" target = "_blank">
                      <?php echo esc_html__( 'Leer Más', 'theme-domain' ) ?>
                    </a>
                  </span>
                -->




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

 <?php get_template_part( 'footer_system' ); ?>