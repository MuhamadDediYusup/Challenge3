# Desain Basis Data Sistem Perbankan

## Deskripsi

Sistem perbankan ini memiliki tiga entitas utama: Nasabah, Akun, dan Transaksi. Dalam README ini, kami akan menjelaskan struktur basis data, atribut-atribut yang relevan, serta hubungan antara entitas-entitas ini.

## Entitas

### Nasabah (Customer)

- **costumer_id (Primary Key)**: Nomor identifikasi unik untuk setiap nasabah.
- **name**: Nama lengkap nasabah.
- **address**: Alamat tempat tinggal nasabah.
- **phone_number**: Nomor telepon yang dapat dihubungi nasabah.
- **email**: Alamat email nasabah.
- **date_of_birth**: Tanggal lahir nasabah.

### Akun (Account)

- **account_id (Primary Key)**: Nomor identifikasi unik untuk setiap akun.
- **account_type**: Jenis atau tipe akun (misalnya, tabungan, giro, deposito, dll.).
- **balance**: Saldo atau jumlah uang dalam akun.
- **account_creation_date**: Tanggal ketika akun dibuat.
- **costumer_id (Foreign Key)**: Mengacu ke costumer_id nasabah yang memiliki akun ini.

### Transaksi (Transaction)

- **transaction_id (Primary Key)**: Nomor identifikasi unik untuk setiap transaksi.
- **transaction_type**: Jenis transaksi (misalnya, setoran, penarikan, transfer, dll.).
- **transaction_amount**: Jumlah uang yang terlibat dalam transaksi.
- **transaction_date**: Tanggal kapan transaksi dilakukan.
- **account_id (Foreign Key)**: Mengacu ke account_id yang terkait dengan transaksi ini.

## Hubungan

- Hubungan antara Nasabah dan Akun: Satu Nasabah dapat memiliki beberapa Akun, tetapi setiap Akun hanya dimiliki oleh satu Nasabah (One-to-Many relationship).
- Hubungan antara Akun dan Transaksi: Satu Akun dapat memiliki banyak Transaksi, tetapi setiap Transaksi hanya terkait dengan satu Akun (One-to-Many relationship).

## Contoh Penggunaan

Berikut ini adalah contoh cara menggunakan entitas dan hubungan ini dalam basis data perbankan:

### Menambahkan Nasabah Baru

Untuk menambahkan nasabah baru ke sistem, Anda akan memasukkan data nasabah ke tabel Nasabah (costumer). Kemudian, Anda dapat menambahkan akun-akun yang dimiliki nasabah tersebut ke tabel Akun (account) dengan merujuk ke ID Nasabah yang sesuai.

### Melakukan Transaksi

Setiap kali nasabah melakukan transaksi seperti setoran, penarikan, atau transfer, Anda akan mencatat detail transaksi tersebut dalam tabel Transaksi (transaction). Anda akan merujuk ke ID Akun yang sesuai untuk mengaitkan transaksi tersebut dengan akun tertentu.

### Menampilkan Informasi

Anda dapat menggunakan SQL query untuk mengambil data, misalnya, untuk menampilkan saldo akun, riwayat transaksi nasabah, atau informasi nasabah berdasarkan ID Nasabah.
