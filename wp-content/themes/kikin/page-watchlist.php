<?php get_header(); ?>
<?php get_template_part( 'system_menu' ); ?>

      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">


        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Resume</h4>
              </div>
              <div class="card-body">
              <?php
              /*
                Template Name: Blog posts template
              */
                $blog_posts = new WP_Query(
                  array( 
                    'post_type' => 'post',
                    'category_name' => 'nemotecnico', 
                    'post_status’' => 'publish',
                    'order' => 'DESC', 
                    'posts_per_page' => -1 
                  ) 
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




                        <article id="post-<?php echo $categories[0]->term_id;   ?>" <?php post_class('post-items mb-6'); ?>>

                  <?php     
                    if ( is_single() ) :
                      the_title('<h2 class="post-title">', '</h2>' );
                    else:
                      the_title( sprintf( '<h2 class="post-title"><a href="%s" rel="bookmark">', esc_url( home_url('/System') ) ), '</a></h2>' );

                      echo esc_html(get_the_date('M j Y')) . '</br></br>'; 
                    

                    endif; 
                      
                    the_content( 
                      sprintf( 
                      __( 'Read More', 'avril' ), 
                      '<span class="screen-reader-text">  '.esc_html(get_the_title()).'</span>' 
                      ) 
                    );
                  ?>


                        </article>








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
   






















































































        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">
          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">BCI</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=BCI" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>
    
        </div>
      -->
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">CALICHERAA</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CALICHERAA" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">CHILE</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">ENELCHILE</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">NITRATOS</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=NITRATOS" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
       <!-- 
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">ORO BLANCO</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ORO%20BLANCO" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">SQM-A</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">SQM-B</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
        <!--
        <div class="row">

          <div class="col-md-12">
            
            <div class="card">
              
              <div class="card-header">
                <h4 class="card-title">VAPORES</h4>
              </div>
              
              <div class="card-body">
                <iframe src="https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=VAPORES" title="iframe Example 1" width="100%" height="400"></iframe>
                
                <div class = "page-container">
                  <div class = "main-content">
                    <div class = "blog-posts">
                      <article id = "post-<?php the_ID(); ?>">
                      </br>
                      </article>
                    </div>
                  </div>
          
                  <div class = "sidebar-content"></div>
                </div>
              </div>

            </div>

          </div>


        </div>
        -->          
        <!-- ----------------------------------------------------------------------------------------------------------------------------- -->                                

    </div>

 <?php get_template_part( 'system_footer' ); ?>