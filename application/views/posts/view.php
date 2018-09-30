<h2><?php echo $post['title']; ?></h2>

<small class="post-date">Posted on: <?php echo $post['created_at']; ?> <br></small>
<div class="post-body">
	<?php echo $post['body']; ?>
</div>

<hr>

<?php echo form_open('/posts/delete/'.$post['id']); ?>
	<input type="button" class="btn btn-danger" value="Delete">
</form>