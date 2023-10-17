-- Buat database
CREATE DATABASE bank;

-- Masuk ke database
\c bank;

CREATE TABLE nasabah (
    costumer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    date_of_birth DATE
);

CREATE TABLE akun (
    account_id SERIAL PRIMARY KEY,
    account_type VARCHAR(50),
    balance DECIMAL(12, 2),
    account_creation_date DATE,
    costumer_id INT,
    FOREIGN KEY (costumer_id) REFERENCES nasabah(costumer_id)
);

CREATE TABLE transaksi (
    transaction_id SERIAL PRIMARY KEY,
    transaction_type VARCHAR(50),
    transaction_amount DECIMAL(12, 2),
    transaction_date DATE,
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES akun(account_id)
);

-- Indexing tabel
CREATE INDEX nasabah_name ON nasabah (address);
CREATE INDEX akun_account_type ON akun (account_type);
CREATE INDEX transaksi_transaction_type ON transaksi (transaction_type);

-- Menambahkan nasabah baru
INSERT INTO nasabah (name, address, phone_number, email, date_of_birth)
VALUES ('Muhamad Dedi', 'Mlati, Sleman', '555-123-4567', 'muhamad@example.com', '1985-03-15'),
        ('Rina', 'Jakarta Pusat', '555-987-6543', 'rina@example.com', '1990-07-20'),
        ('Budi', 'Surabaya, Jawa Timur', '555-456-7890', 'budi@example.com', '1982-11-10'),
        ('Siti', 'Bandung, Jawa Barat', '555-111-2222', 'siti@example.com', '1995-04-25'),
        ('Ahmad', 'Yogyakarta', '555-555-5555', 'ahmad@example.com', '1978-09-30'),
        ('Rita', 'Semarang, Jawa Tengah', '555-222-3333', 'rita@example.com', '1987-12-05'),
        ('Dewi', 'Malang, Jawa Timur', '555-333-4444', 'dewi@example.com', '1992-02-15'),
        ('Adi', 'Palembang, Sumatera Selatan', '555-777-8888', 'adi@example.com', '1980-06-08'),
        ('Eka', 'Medan, Sumatera Utara', '555-444-5555', 'eka@example.com', '1998-10-10'),
        ('Nina', 'Pontianak, Kalimantan Barat', '555-999-0000', 'nina@example.com', '1989-07-01');


-- Membuat akun baru untuk nasabah
INSERT INTO akun (account_type, balance, account_creation_date, costumer_id)
VALUES ('Giro', 10000, '2023-01-20', 1),
        ('Tabungan', 5000, '2023-02-10', 2),
        ('Giro', 7500, '2023-03-05', 3),
        ('Tabungan', 3000, '2023-04-15', 4),
        ('Giro', 12000, '2023-05-02', 5),
        ('Tabungan', 6000, '2023-06-08', 6),
        ('Giro', 9000, '2023-07-12', 7),
        ('Tabungan', 4000, '2023-08-20', 8),
        ('Giro', 11000, '2023-09-25', 9),
        ('Tabungan', 7000, '2023-10-05', 10);


-- Mencatat transaksi
INSERT INTO transaksi (transaction_type, transaction_amount, transaction_date, account_id)
VALUES ('Deposit', 5000, '2023-02-05', 1),
        ('Withdrawal', 2000, '2023-02-15', 1),
        ('Deposit', 3000, '2023-03-10', 2),
        ('Withdrawal', 1000, '2023-03-20', 2),
        ('Deposit', 4000, '2023-04-15', 3),
        ('Withdrawal', 1500, '2023-04-25', 3),
        ('Deposit', 2000, '2023-05-10', 4),
        ('Withdrawal', 500, '2023-05-20', 4),
        ('Deposit', 3000, '2023-06-15', 5),
        ('Withdrawal', 1000, '2023-06-25', 5);