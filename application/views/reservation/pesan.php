<!-- <div class="modal fade" id="tambahTransaksiModal" tabindex="-1" aria-labelledby="tambahTransaksiModalLabel" aria-hidden="true"> -->
<div class="modal-dialog modal-lg">
    <form action="<?= base_url('transaksi/addTransaksi'); ?>" method="post">
        <div class="modal-content text-left">
            <div class="modal-header">
                <h5 class="modal-title" id="tambahTransaksiModalLabel"><i class="fas fa-fw fa-handshake"></i><sup><i class="fas fa-1x fa-plus"></i></sup> Tambah Transaksi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <a class="btn btn-primary mb-2" href="javascript:add();"><i class="fas fa-fw fa-plus"></i> Tambah Pesanan</a>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="kuantitas[]">Kuantitas</label>
                            <input type="number" min="1" id="kuantitas[]" class="form-control" placeholder="Masukkan Kuantitas" name="kuantitas[]" required value="<?= set_value('kuantitas[]'); ?>">
                            <?= form_error('kuantitas[]', '<small class="form-text text-danger">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="col-lg">
                        <div class="form-group">
                            <label for="id_menu[]">Nama Menu</label>
                            <select name="id_menu[]" id="id_menu[]" class="form-control">
                                <?php foreach ($menu as $dm) : ?>
                                    <option value="<?= $dm['id_menu']; ?>"><?= $dm['nama_menu']; ?> | Rp. <?= ucwords($dm['harga_menu']); ?></option>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>
                </div>
                <hr>
                <div id="record"></div>
                <div class="col-lg">
                    <div class="form-group">
                        <label for="keterangan">Keterangan</label>
                        <textarea name="keterangan" id="keterangan" class="form-control" placeholder="(optional)"><?= set_value('keterangan'); ?></textarea>
                        <?= form_error('keterangan', '<small class="form-text text-danger">', '</small>'); ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-fw fa-times"></i> Batal</button>
                <button type="submit" class="btn btn-success"><i class="fas fa-fw fa-save"></i> Simpan</button>
            </div>
        </div>
    </form>
</div>
<!-- </div> -->
<script type="text/javascript">
    function add() {
        var content = '';
        content += `
		<div class="row">
			<div class="col-lg-4">
				<div class="form-group">
	      		<label for="kuantitas[]">Kuantitas</label>
	      		<input type="number" min="1" id="kuantitas[]" class="form-control" placeholder="Masukkan Kuantitas" name="kuantitas[]" required>
	      	</div>
			</div>
			<div class="col-lg">
				<div class="form-group">
	      		<label for="id_menu[]">Nama Menu</label>
	      		<select name="id_menu[]" id="id_menu[]" class="form-control">
	      			<?php foreach ($menu as $dm) : ?>
		      			<option value="<?= $dm['id_menu']; ?>"><?= $dm['nama_menu']; ?> | Rp. <?= ucwords($dm['harga_menu']); ?></option>
	      			<?php endforeach ?>
	      		</select>
	      	</div>
			</div>
		</div>`;
        content += '<a class="btn btn-danger my-2" href="javascript:;" onclick="hapus(this)"><i class="fas fa-fw fa-trash"></i> Hapus Pesanan</a><br />';
        content += '<hr />';

        var x = document.createElement('div');
        x.innerHTML = content;
        document.getElementById('record').appendChild(x);
    }

    function hapus(element) {
        var x = document.getElementById('record');
        x.removeChild(element.parentNode);
    }

    function add2() {
        var content = '';
        content += `
		<div class="row">
			<div class="col-lg-4">
				<div class="form-group">
	      		<label for="kuantitas[]">Kuantitas</label>
	      		<input type="number" min="1" id="kuantitas[]" class="form-control" placeholder="Masukkan Kuantitas" name="kuantitas[]" required>
	      	</div>
			</div>
			<div class="col-lg-8">
				<div class="form-group">
	      		<label for="id_menu[]">Nama Menu</label>
	      		<select name="id_menu[]" id="id_menu[]" class="form-control">
	      			<?php foreach ($menu as $dm) : ?>
		      		<option value="<?= $dm['id_menu']; ?>"><?= $dm['nama_menu']; ?> | Rp. <?= ucwords($dm['harga_menu']); ?></option>
	      			<?php endforeach ?>
	      		</select>
	      	</div>
			</div>
		</div>`;
        content += '<a class="btn btn-danger my-2" href="javascript:;" onclick="hapus2(this)"><i class="fas fa-fw fa-trash"></i> Hapus Pesanan</a><br />';
        content += '<hr />';

        var x2 = document.createElement('div');
        x2.innerHTML = content;
        document.getElementById('record2').appendChild(x2);
    }

    function hapus2(element) {
        var x2 = document.getElementById('record2');
        x2.removeChild(element.parentNode);
    }
</script>