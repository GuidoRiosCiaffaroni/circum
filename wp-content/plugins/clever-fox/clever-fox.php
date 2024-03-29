<?php
/*
Plugin Name: Clever Fox
Plugin URI:
Description: Clever Fox plugin to enhance the functionality of free themes made by Nayra Themes. More than 60000+ trusted websites with Nayra Themes. It provides intuitive features to your website. 20+ Themes compatible with Clever Fox. See below free themes listed here. Avril is one of Popular themes in our collections.
Version: 16.3
Author: nayrathemes
Author URI: https://nayrathemes.com
Text Domain: clever-fox
Requires PHP: 5.6
*/
define( 'CLEVERFOX_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
define( 'CLEVERFOX_PLUGIN_DIR', plugin_dir_path( __FILE__ ) );

function cleverfox_activate() {
	
	/**
	 * Load Custom control in Customizer
	 */
	define( 'CLEVERFOX_DIRECTORY', plugin_dir_url( __FILE__ ) . '/inc/custom-controls/' );
	define( 'CLEVERFOX_DIRECTORY_URI', plugin_dir_url( __FILE__ ) . '/inc/custom-controls/' );
	if ( class_exists( 'WP_Customize_Control' ) ) {
		require_once('inc/custom-controls/controls/range-validator/range-control.php');	
	}
	
	$theme = wp_get_theme(); // gets the current theme
		if ( 'StartKit' == $theme->name){	
			require_once('inc/startkit/startkit.php');
		}
		
		if ( 'StartBiz' == $theme->name){	
			require_once('inc/startbiz/startbiz.php');
		}
		
		if ('Arowana' == $theme->name){	
			 require_once('inc/arowana/arowana.php');
		}
		
		if ('Envira' == $theme->name){	
			 require_once('inc/envira/envira.php');			
		}
		
		if( 'Hantus' == $theme->name){
			require_once('inc/hantus/hantus.php');	
		}
		
		if( 'Thai Spa' == $theme->name){
			require_once('inc/thai-spa/thai-spa.php');	
		}
		
		if( 'Conceptly' == $theme->name){
			require_once('inc/conceptly/conceptly.php');
		}
		
		if( 'Ameya' == $theme->name){
			require_once('inc/ameya/ameya.php');
		}
		
		if( 'Azwa' == $theme->name){
			require_once('inc/azwa/azwa.php');
		}
		
		if( 'Avril' == $theme->name){
			require_once('inc/avril/avril.php');
		}
		
		if( 'Aera' == $theme->name){
			require_once('inc/aera/aera.php');
		}
		
		if( 'Avail' == $theme->name){
			require_once('inc/avail/avail.php');
		}
		
		if( 'Avtari' == $theme->name){
			require_once('inc/avtari/avtari.php');
		}
		
		if( 'Fiona Blog' == $theme->name){
			require_once('inc/fiona-blog/fiona-blog.php');
		}
		
		if( 'MetaSoft' == $theme->name ){
			require_once('inc/metasoft/metasoft.php');
		}
		
		if( 'Belltech' == $theme->name){
			require_once('inc/belltech/belltech.php');
		}
		
		if( 'Fiona Food' == $theme->name){
			require_once('inc/fiona-food/fiona-food.php');
		}
		
		if( 'Fiona News' == $theme->name){
			require_once('inc/fiona-news/fiona-news.php');
		}
		
		if( 'Axtia' == $theme->name){
			require_once('inc/axtria/axtria.php');
		}
		
		if( 'Aravalli' == $theme->name){
			require_once('inc/aravalli/aravalli.php');
		}
		
		if( 'Arbuda' == $theme->name){
			require_once('inc/arbuda/arbuda.php');
		}
		
		if( 'Boostify' == $theme->name){
			require_once('inc/boostify/boostify.php');
		}
		
		if( 'Gradiant' == $theme->name){
			require_once('inc/gradiant/gradiant.php');
		}
		
		if( 'Aviser' == $theme->name){
			require_once('inc/aviser/aviser.php');
		}
		
		if( 'Comoxa' == $theme->name){
			require_once('inc/comoxa/comoxa.php');
		}
		
		if( 'Techine' == $theme->name){
			require_once('inc/techine/techine.php');
		}
		
		if( 'ColorPress' == $theme->name){
			require_once('inc/colorpress/colorpress.php');
		}
		
		if( 'Flavita' == $theme->name){
			require_once('inc/flavita/flavita.php');
		}
		
		if( 'Avitech' == $theme->name){
			require_once('inc/avitech/avitech.php');
		}
		
		if( 'Colorsy' == $theme->name){
			require_once('inc/colorsy/colorsy.php');
		}
		
		if( 'Ampark' == $theme->name){
			require_once('inc/ampark/ampark.php');
		}
		
		if( 'Eduvert' == $theme->name){
			require_once('inc/eduvert/eduvert.php');
		}
		
		if( 'Varuda' == $theme->name){
			require_once('inc/varuda/varuda.php');
		}
		
		if( 'Cosmics' == $theme->name){
			require_once('inc/cosmics/cosmics.php');
		}
		
		if( 'StartWeb' == $theme->name){
			require_once('inc/startweb/startweb.php');
		}
	}
add_action( 'init', 'cleverfox_activate' );

$theme = wp_get_theme();

/**
 * Fiona Widgets
 */
if( 'Fiona Blog' == $theme->name || 'Fiona Food' == $theme->name || 'Fiona News' == $theme->name){
	require CLEVERFOX_PLUGIN_DIR . 'inc/fiona-blog/widgets/class-fiona-widgets.php';
}


/**
 * Gradiant Block
 */
if( 'Gradiant' == $theme->name  || 'Comoxa' == $theme->name  || 'ColorPress' == $theme->name  || 'Flavita' == $theme->name){
	require CLEVERFOX_PLUGIN_DIR . '/inc/gradiant/block/info-box.php'; 
}

/**
 * The code during plugin activation.
 */
function activate_cleverfox() {
	require_once plugin_dir_path( __FILE__ ) . 'inc/cleverfox-activator.php';
	Cleverfox_Activator::activate();
}
register_activation_hook( __FILE__, 'activate_cleverfox' );