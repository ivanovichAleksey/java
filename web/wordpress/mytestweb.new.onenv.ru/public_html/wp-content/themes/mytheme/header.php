<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<?php wp_head(); ?>
		<script	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
		<link rel="stylesheet" type="text/css" href="/wp-content/themes/mytheme/style.css?<?php echo strtotime(date('c')); ?>"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script	src="/wp-content/themes/mytheme/script.js?<?php echo filesize('/home/ivanovich_a/web/mytestwebwp123.onenv.ru/public_html/wp-content/themes/mytheme/script.js'); ?>" type="text/javascript"></script>
	</head>
	<body <?php body_class(); ?>>
		<header class="container">
			<div class="logo">
				<a href="/"><?php bloginfo( 'name' ); ?></a>
			</div>
			<?php if ( has_nav_menu( 'primary' ) ) : ?>
			<nav class="menu top-menu">
				<span class="menu-item-has-children button-menu"></span>
				<?php
					// Primary navigation menu.
					wp_nav_menu( array(
						'menu_class'     => 'nav-menu',
						'theme_location' => 'primary',
						'container' => false,
					) );
				?>
			</nav><!-- .main-navigation -->
			<?php endif; ?>
		</header>