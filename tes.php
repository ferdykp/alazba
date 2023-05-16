<div class="row">
    <div class="col-lg-4">
        <div class="form-group">
            <label for="kuantitas[]">Kuantitas</label>
            <input type="number" min="1" id="kuantitas[]" class="form-control" placeholder="Masukkan Kuantitas" name="kuantitas[]" required value="<?= set_value('kuantitas[]'); ?>" />
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