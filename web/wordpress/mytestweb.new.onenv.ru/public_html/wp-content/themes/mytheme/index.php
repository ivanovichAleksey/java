<?php get_header(); ?>
		<div class="container">
			<?php get_sidebar(); ?>

			<div class="content">
				<h1 class="title"><?php 
				if (is_home()){
				echo "Это главная страница";
				} else if (!is_page() && !is_single()){
					single_cat_title();
				}	
				else{
				the_title();
				}

				?></h1>
				<?php
					// Start the loop.
					while ( have_posts() ) : the_post();

					// Include the page content template.
					get_template_part( 'content', 'page' );

					// If comments are open or we have at least one comment, load up the comment template.
					if ( comments_open() || get_comments_number() ) :
					comments_template();
					endif;

					// End the loop.
					endwhile;
				?>
			</div>
		</div>		
		<?php get_footer(); ?>
	</body>
</html>