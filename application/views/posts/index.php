<h2><?= $title ?></h2>
	

<?php foreach ($posts as $post) : ?>
	<div class="row">

		<div class="col-md-3">
			<img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image'] ?>">
		</div>

		<div class="col-md-9">
			<h3 class="title"><?php echo $post['title']; ?></h3>
			
			<small class="post-date">Posted on: <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong> <br></small>
			<?php echo word_limiter($post['body'], 50); ?>
			
			<p>
				<br>
				<a class="btn btn-default" href="<?php echo base_url('posts/'.$post['slug']) ?>">Read More</a>
			</p>		
		</div>

	</div>

	<hr>


<?php endforeach; ?>