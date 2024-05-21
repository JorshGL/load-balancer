CREATE DATABASE myflaskapp;
use myflaskapp;

CREATE TABLE users (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    email varchar(255),
    username varchar(255),
    password varchar(255)
);

CREATE TABLE products (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    description text,
    price decimal(10,2) NOT NULL
);

INSERT INTO users VALUES(null, "juan", "juan@gmail.com", "juan", "123"),
    (null, "maria", "maria@gmail.com", "maria", "456");

INSERT INTO products (name, description, price) VALUES
('Cámara Digital', 'Cámara de 20MP con zoom óptico de 10x y grabación en 4K.', 450.00),
('Smartwatch', 'Reloj inteligente con monitor de actividad física y notificaciones móviles.', 199.99),
('Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido y hasta 12 horas de batería.', 130.00);