<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at']; ?></small><br>
<div class="post-body">
	<div class="img-post">
		<img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
	</div>
	<?php echo $post['body']; ?>
</div>

<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
	<hr>
	<a class="btn btn-info float-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
	<?php echo form_open('/posts/delete/'.$post['id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger">
	</form>
<?php endif; ?>
<hr>


<h3 class="mb-2">Comments</h3>
<?php if($comments) : ?>
	<?php foreach($comments as $comment) : ?>
	<div class="row">
        <div class="comments col-md-9" id="comments">
            <!-- comment -->
            <div class="comment mb-2 row">
                <div class="comment-avatar col-md-1 col-sm-2 text-center pr-1">
                    <a href=""><img class="mx-auto rounded-circle img-fluid" src="<?php echo base_url('assets/images/posts/noimage.png') ?>" alt="avatar"></a>
                </div>
                <div class="comment-content col-md-11 col-sm-10">
                    <h6 class="small comment-meta"><a href="#"><?php echo $comment['name']; ?></a> at <?php echo $comment['created_at']; ?></h6>
                    <div class="comment-body">
                        <p>
                            <?php echo $comment['body']; ?>
                            <a href="" class="text-right small"><i class="ion-reply"></i> Reply</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


	<?php endforeach; ?>


<?php else : ?>
	<p>No Comments To Display</p>
<?php endif; ?>


<hr>
<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control" placeholder="Your Name">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control" placeholder="Your Email">
	</div>
	<div class="form-group">
		<label>Body</label>
		<textarea name="body" class="form-control" placeholder="Add Comment . . ."></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
	<button class="btn btn-primary" type="submit">Submit</button>
</form>
