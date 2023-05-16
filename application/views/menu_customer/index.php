<div class="container">
    <div class="row my-2">
        <div class="col-lg my-2 py-2 header-title">
            <h3><i class="fas fa-sharp fa-solid fa-wine-glass"></i> Daftar Menu</h3>
        </div>

    </div>
    <form action="<?= base_url('transaksi/addTransaksi'); ?>" method="post">
        <div class="row my-2">
            <div class="col-lg">
                <div class="table-responsive">
                    <table class="text-center table table-bordered table-hover table-striped" id="table_id">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama Minuman</th>
                                <th>Harga Minuman</th>
                                <th>Pesanan</th>
                                <!-- <th> ada Outlet</th> -->
                                <?php if ($dataUser['jabatan'] == 'administrator') : ?>
                                    <th>Aksi</th>
                                <?php endif ?>
                            </tr>
                        </thead>
                        <tbdody>
                            <?php $i = 1; ?>
                            <?php foreach ($menu as $dm) : ?>
                                <tr>
                                    <td><?= $i++; ?></td>
                                    <td class="text-left"><?= $dm['nama_menu']; ?></td>
                                    <td class="text-left">Rp. <?= number_format($dm['harga_menu']); ?></td>
                                    <td>
                                        <input type="number" min="1" id="kuantitas[]" class="form-control" placeholder="Masukkan Jumlah Pesanan" name="kuantitas[]" value="<?= set_value('kuantitas[]'); ?>" />
                                        <?= form_error('kuantitas[]', '<small class="form-text text-danger">', '</small>'); ?>
                                    </td>
                                    <!-- <td class="text-left"><?= $dm['nama_outlet']; ?></td> -->
                                </tr>
                            <?php endforeach ?>
                        </tbdody>
                    </table>
                </div>
                <button type="submit" class="btn btn-success"><i class="fas fa-fw fa-save" class="text-right"></i> Simpan</button>
            </div>
        </div>
    </form>
</div>