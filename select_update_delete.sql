-- select database
SELECT * FROM akun;
SELECT * FROM nasabah;
SELECT * FROM transaksi;

-- select nasabah dengan nama Muhamad
SELECT * FROM nasabah WHERE name LIKE '%Muhamad%';

-- select nasabah dengan nama Muhamad dan Ahmad
SELECT * FROM nasabah WHERE name LIKE '%Muhamad%' OR name LIKE '%Ahmad%';

-- select akun dengan tipe Giro
SELECT * FROM akun WHERE account_type = 'Giro';

-- select akun dengan nasabah bernama Muhamad
SELECT * FROM akun JOIN nasabah ON akun.costumer_id = nasabah.costumer_id WHERE nasabah.name LIKE '%Muhamad%';
SELECT * FROM nasabah JOIN transaksi ON nasabah.costumer_id = transaksi.account_id WHERE nasabah.name LIKE '%Muhamad%';

-- update akun dengan id 1
UPDATE akun SET balance = 20000 WHERE account_id = 1;

-- delete transaksi dengan id 1
DELETE FROM transaksi WHERE transaction_id = 1;

-- ubah nama tabel nasabah menjadi customer
ALTER TABLE nasabah RENAME TO customer;

-- hapus tabel
DROP TABLE transaksi;
DROP TABLE akun;
DROP TABLE nasabah;

-- hapus database
DROP DATABASE bank;