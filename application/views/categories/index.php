<h2><?= $title; ?></h2>
<ul class="list-group">
<?php foreach($categories as $category) : ?>
	<li class="list-group-item list-group-item-action list-group-item-dark"><a href="<?php echo site_url('/categories/posts/'.$category['id']); ?>"><?php echo $category['name']; ?></a>
		<?php if($this->session->userdata('user_id') == $category['user_id']): ?>
			<form action="categories/delete/<?php echo $category['id']; ?>" method="POST">
				<input type="submit" class="btn-sm btn-danger cat-delete" value="Delete">
			</form>
		<?php endif; ?>
	</li>
<?php endforeach; ?>
</ul>