<?php get_header(); ?>
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
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        ID
                      </th>
                      <th>
                        R1
                      </th>                       
                      <th>
                        NOMBRE
                      </th>
                      <th>
                        BSTGO
                      </th>
                      <th>
                        YAHOO
                      </th>
                      <th>
                        GOOGLE
                      </th>

                      <th>
                        INVESTING
                      </th>
                      <th>
                        MSN
                      </th>
                      <th>
                        CMF
                      </th>
                      <th>
                        TRADER
                      </th>
                      <th>
                        A
                      </th>
                      <th>
                        B
                      </th>
                      <th>
                        C
                      </th>
          
                    </thead>

                    <tbody>
                                    

                              
     <?php

//https://stackoverflow.com/questions/30531600/wordpress-how-do-i-get-all-posts-from-wp-query-in-the-search-results

//https://developer.wordpress.org/reference/classes/wp_query/

//https://nicolamustone.blog/2017/03/01/post-meta-get-value/

//https://developer.wordpress.org/reference/functions/get_post_meta/

//https://developer.wordpress.org/reference/functions/wp_get_post_categories/

//https://wordpress.stackexchange.com/questions/247859/how-to-get-category-id-of-current-post




global $wpdb;
    /*pass your search string here example like this ( 's'=>'test' ) */
    /*
   $args=array('s'=>'bci','order'=> 'DESC', 'posts_per_page'=>get_option('posts_per_page'));

   $query=new WP_Query($args);

    if( $query->have_posts()): 

    while( $query->have_posts()): $query->the_post();

     {
     echo $post->post_title;
     echo $post->post_content;
     }

    endwhile; 
    else:
    endif;
    */



   //$args=array('s'=>'folio','order'=> 'DESC', 'posts_per_page'=>get_option('posts_per_page'));

  $args=array('category_name'=>'folio','order'=> 'DESC', 'posts_per_page'=>get_option('posts_per_page'));

   $query=new WP_Query($args);

    if( $query->have_posts()): 

    while( $query->have_posts()): $query->the_post();
     {
      echo '<tr>';
      echo '<td>'. $post->ID .'</td>';
      echo '<td>'. $post->ID .'</td>';
      echo '<td>'. get_post_meta( $post->ID, 'meta_folio_name', true ) .'</td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_bstgo', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_bstgo', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_yahoo', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_yahoo', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_google', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_google', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_investing', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_investing', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_msn', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_msn', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_cmf', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_cmf', true ) .'</a></td>';
      echo '<td><a href="'. get_post_meta( $post->ID, 'meta_folio_url_trader', true ) .'" target="_blank">'. get_post_meta( $post->ID, 'meta_folio_name_trader', true ) .'</a></td>';
      
     ?>




                       
        

         
 
            

   
                        <td>
                          <a href="<?php echo home_url('/locked'); ?>" >
                            <i class="now-ui-icons business_globe"></i>
                          </a>
                        </td>
                        <td>
                          <a href="<?php echo home_url('/locked'); ?>">
                            <i class="now-ui-icons business_globe"></i>
                          </a>
                        </td>
                        <td>
                          <a href="<?php echo home_url('/locked'); ?>">
                            <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                          </a>
                        </td>
                      </tr>

















     







<?php
     }

    endwhile; 
    else:
    endif;





  ?>
                      

                      

                      


                    </tbody>
                  </table>
                </div>
              </div>

            </div>
          </div>
    
        </div>

        <div class="row">


        </div>          
    </div>

 <?php get_template_part( 'system_footer' ); ?>