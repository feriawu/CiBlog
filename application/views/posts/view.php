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

<hr>
<h3>Add Comment</h3>
<?php echo form_open('comments/create/'.$post['id']) ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control">
	</div>

	<div class="form-group">
		<label>Email</label>
		<input type="email" name="email" class="form-control">
	</div>

	<div class="form-group">
		<label>Body</label>
		<textarea name="comment" class="form-control"></textarea>
	</div>

	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">

	<button class="btn btn-primary" type="submit">Submit</button>