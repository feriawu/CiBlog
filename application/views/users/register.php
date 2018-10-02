<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
	<div class="form-group">
		<label>Name</label>
		<input class="form-control" type="text" name="name" placeholder="Write Your Full Name">
	</div>

	<div class="form-group">
		<label>Email</label>
		<input class="form-control" type="email" name="email" placeholder="Email Address">
	</div>

	<div class="form-group">
		<label>Zipcode</label>
		<input class="form-control" type="number" name="zipcode" placeholder="Zipcode">
	</div>

	<div class="form-group">
		<label>Username</label>
		<input class="form-control" type="text" name="username" placeholder="Username">
	</div>

	<div class="form-group">
		<label>Password</label>
		<input class="form-control" type="password" name="password" placeholder="Password">
	</div>

	<div class="form-group">
		<label>Confirm Password</label>
		<input class="form-control" type="password" name="password2" placeholder="Confirm Password">
	</div>

	<button type="submit" class="btn btn-primary">Register</button>
<?php echo form_close(); ?>