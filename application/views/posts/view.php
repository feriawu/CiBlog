<h2><?php echo $post['title']; ?></h2>

<small class="post-date">Posted on: <?php echo $post['created_at']; ?> <br></small><br>
<div class="container in-post-img">
	<img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image'] ?>">	
</div>

<div class="post-body">
	<?php echo $post['body']; ?>
</div>

<hr>

<a class="btn btn-default pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>

<?php echo form_open('/posts/delete/'.$post['id']); ?>
	<input type="submit" class="btn btn-danger" value="Delete">
</form>
