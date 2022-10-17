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
        </div>          

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->        
        <div class="row">
          <!--
          <?php
          function latest_post() 
          {
            $args = array(
              'posts_per_page' => 3, /* how many post you need to display */
              'offset' => 0,
              'orderby' => 'post_date',
              'order' => 'DESC',
              'post_type' => 'post', /* your post type name */
              'post_status' => 'publish'
            );
            
            $query = new WP_Query($args);
              if ($query->have_posts()) :
                while ($query->have_posts()) : $query->the_post();
          ?>
          <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
          <?php 
            echo get_the_post_thumbnail('thumbnail'); 
          ?>
            /* here add code what you need to display like above title, image and more */
          <?php
            endwhile;
            endif;
            }

            add_shortcode('lastest-post', 'latest_post');
            latest_post();
          ?>
          -->
        </div> 
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->
        <div class="row">

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

                  <a href="<?php echo home_url();?>/Content/?ID=<?php the_ID(); ?>">
                    <?php 
                    if ( has_post_thumbnail() ) 
                    { 
                      the_post_thumbnail( get_the_ID(), 'full' );
                    } 
                    ?>
                    <h2 class = "post-title"><?php the_title(); ?></h2>
                  </a>

                  <div class = "post-category">
                    <?php the_category(', '); ?>
                  </div>

                  <div class = "post-excerpt">
                    <?php wp_kses_post( the_excerpt() ) ?>
                  </div>

                  <span class = "post-read-more">
                    <a itemprop = "url" href = "<?php the_permalink(); ?>" target = "_blank">
                      <?php echo esc_html__( 'Read more', 'theme-domain' ) ?>
                    </a>
                  </span>
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
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->   
<!--     
        <div class="row">                     
          <?php 
            $result = wp_get_recent_posts(array(
            'numberposts' => 6,
            'post_status' => 'publish',
            ));

            foreach( $result as $p )
            { 
          ?>
          — <a href="<?php echo get_permalink($p['ID']) ?>"><?php echo $p['post_title'] ?></a><br />    
          <?php 
            } 
          ?>                             
        </div>  
-->        
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->

    </div>

 <?php get_template_part( 'footer_system' ); ?>