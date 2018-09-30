<h2><?= $title ?></h2>
	

<?php foreach ($posts as $post) : ?>

	<h3><?php echo $post['title']; ?></h3>
	
	<small class="post-date">Posted on: <?php echo $post['created_at']; ?> <br></small>
	<?php echo $post['body']; ?>
	
	<p>
		<br>
		<a class="btn btn-default" href="<?php echo base_url('posts/'.$post['slug']) ?>">Read More</a>
	</p>

<?php endforeach; ?>