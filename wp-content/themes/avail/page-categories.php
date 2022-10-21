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

              <!-- https://developer.wordpress.org/reference/functions/get_post/ -->
              <?php
                $category_id = $_GET['ID'];  
              ?>

              <!-- https://developer.wordpress.org/reference/functions/get_posts/ -->
              
              <ul>
              <?php
                $args = array( 'category' => $category_id );
                $myposts = get_posts( $args );
                foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
                <li>
                  <!-- <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a> -->
                  


                  <a href="<?php echo home_url();?>/Content/?ID=<?php the_ID(); ?>">
                    <?php 
                    if ( has_post_thumbnail() ) 
                    { 
                      the_post_thumbnail( get_the_ID(), 'full' );
                    } 
                    ?>
                    <?php the_title(); ?>

                  </a>





                  
                </li>
              <?php 
                endforeach; 
                wp_reset_postdata();?>
              </ul>

              </div>
            </div>
          </div>
    
        </div>

        <div class="row">


        </div>          
    </div>

 <?php get_template_part( 'footer_system' ); ?>