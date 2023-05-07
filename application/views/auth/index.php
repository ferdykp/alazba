<style>
	body {
		background: linear-gradient(90deg, rgba(253, 92, 99, 1) 50%, rgba(186, 0, 33, 1) 100%);
	}
</style>
<div class="container mt-5 pt-4">
	<div class="row justify-content-center mt-5">
		<div class="col-lg-4 col-10 text-white rounded p-4 mt-5">
			<h3 class="mb-4 text-center">Login</h3>

			<?= $this->session->flashdata('pesan'); ?>

			<form action="<?= base_url('auth/login'); ?>" method="post">
				<div class="form-group">
					<label for="username"><i class="fas fa-fw fa-user"></i> Username</label>
					<input type="text" id="username" class="form-control rounded-pill" placeholder="Masukkan Username" name="username" value="<?= set_value('username') ?>">
					<?= form_error('username', '<small class="text-warning pl-3">', '</small>'); ?>
				</div>
				<div class="form-group">
					<label for="password"><i class="fas fa-fw fa-lock"></i> Password</label>
					<input type="password" id="password" class="form-control rounded-pill" placeholder="Masukkan Password" name="password">
					<?= form_error('password', '<small class="text-warning pl-3">', '</small>'); ?>
				</div>
				<div class="form-group text-right">
					<button type="submit" class="btn btn-success rounded-pill px-4">Login</button>
					<a href="<?= base_url('auth/registration'); ?>" class="btn btn-info rounded-pill px-4 m-1" role="button">Registration</a>
				</div>
			</form>
		</div>
	</div>
</div>