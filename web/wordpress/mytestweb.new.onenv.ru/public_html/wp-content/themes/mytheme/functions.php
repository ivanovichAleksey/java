<?php  
if ( ! function_exists( 'mytheme_setup' ) ) {	
	function mytheme_setup(){
		load_theme_textdomain( 'mytheme' );
		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'title-tag' );
		add_theme_support( 'post-thumbnails' );
		register_nav_menus( array(
		'primary' => __( 'Primary Menu',      'mytheme' ),
		) );
		add_theme_support( 'html5', array(
		'search-form', 'comment-form', 'comment-list', 'gallery', 'caption'
		) );
	}
	add_action( 'after_setup_theme', 'mytheme_setup' );
}
function mytheme_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Widget Area', 'mytheme' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar.', 'mytheme' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<div class="title">',
		'after_title'   => '</div>',
	) );
}
add_action( 'widgets_init', 'mytheme_widgets_init' );

?>