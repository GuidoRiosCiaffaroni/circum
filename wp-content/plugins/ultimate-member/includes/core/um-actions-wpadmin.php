<?php if ( ! defined( 'ABSPATH' ) ) {
	exit;
}


/**
 * Checks if user can access the backend
 */
function um_block_wpadmin_by_user_role() {
	global $pagenow;

	if ( is_admin() && ! defined( 'DOING_AJAX' ) ) {
		$action = empty( $_REQUEST['action'] ) ? '' : $_REQUEST['action'];

		// filter that it's not admin_post or admin_post_nopriv request
		if ( is_user_logged_in() && ! empty( $action ) && 'admin-post.php' == $pagenow ) {
			return;
		}

		if ( um_user( 'ID' ) && ! um_user( 'can_access_wpadmin' ) && ! is_super_admin( um_user( 'ID' ) ) ) {
			um_redirect_home();
		}
	}
}
add_action( 'init', 'um_block_wpadmin_by_user_role', 99 );


/**
 * Hide admin bar appropriately
 *
 * @param bool $show
 *
 * @return bool
 */
function um_control_admin_bar( $show ) {
	if ( is_user_logged_in() && UM()->roles()->um_user_can( 'can_not_see_adminbar' ) ) {
		$show = false;
	}

	return apply_filters( 'um_show_admin_bar_callback', $show );
}
add_filter( 'show_admin_bar', 'um_control_admin_bar', 9999, 1 );


/**
 * Fix permission for admin bar
 */
function um_force_admin_bar() {
	um_reset_user();
}
add_action( 'wp_footer', 'um_force_admin_bar' );
