CREATE DATABASE pd_john_doe_alpha;
USE pd_john_doe_alpha;

-- Tabla: clients
CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla: invoices
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

-- Tabla: platforms
CREATE TABLE platforms (
    platform_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: transactions
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    platform_id INT NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id),
    FOREIGN KEY (platform_id) REFERENCES platforms(platform_id)
);