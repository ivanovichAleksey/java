<div class="item">
	<div class="image">
		<?php if ( is_single() || is_page()) {
			if (the_post_thumbnail()) {
				the_post_thumbnail('medium');
			}
		}
		else if ( has_post_thumbnail()) { ?>
  		<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" >
   		<?php the_post_thumbnail('thumbnail'); ?>
   		</a>
 		<?php }
 		else {
 			echo '<img src="/wp-content/uploads/no-image.jpg" alt="" />';
 		}	
 		 ?>
	</div>
	<div class="text">
	<?php
			if ( !is_page() && !is_single() ) :
				
				the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
			endif;
			the_content('Подробнее...');
		?>
	</div>
</div>