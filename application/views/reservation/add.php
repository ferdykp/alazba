<div class="container pt-5">
    <h3><?= $title ?></h3>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a>Booking Meja</a></li>
            <li class="breadcrumb-item "><a href="<?= base_url('reservation'); ?>">List Data</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Data</li>
        </ol>
    </nav>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <?php
                    //create form
                    $attributes = array('id' => 'FrmAddBooking', 'method' => "post", "autocomplete" => "off");
                    echo form_open('', $attributes);
                    ?>
                    <div class="form-group row">
                        <label for="nama_konsumen" class="col-sm-2 col-form-label">Nama Pemesan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nama_konsumen" name="nama_konsumen" value=" <?= set_value('nama_konsumen'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('nama_konsumen') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="jumlah_konsumen" class="col-sm-2 col-form-label">Jumlah Orang</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="jumlah_konsumen" name="jumlah_konsumen" value=" <?= set_value('nama_konsumen'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('jumlah_konsumen') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="pesanan" class="col-sm-2 col-form-label">Pesanan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="pesanan" name="pesanan" value=" <?= set_value('pesanan'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('pesanan') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="NoHp" class="col-sm-2 col-form-label">No. Hp</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="NoHp" name="NoHp" value=" <?= set_value('NoHp'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('NoHp') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="tanggal" class="col-sm-2 col-form-label">Untuk Tanggal Berapa</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="tanggal" name="tanggal" value=" <?= set_value('tanggal'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('tanggal') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="waktu" class="col-sm-2 col-form-label">Pukul Berapa</label>
                        <div class="col-sm-10">
                            <input type="time" class="form-control" id="waktu" name="waktu" value=" <?= set_value('waktu'); ?>">
                            <small class="text-danger">
                                <?php echo form_error('waktu') ?>
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-10 offset-md-2">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a class="btn btn-secondary" href="javascript:history.back()">Kembali</a>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>