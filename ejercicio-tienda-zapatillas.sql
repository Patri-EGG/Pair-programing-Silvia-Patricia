CREATE TABLE Zapatillas (
id_zapatilla INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatilla)
);

CREATE TABLE Clientes(
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL
);



CREATE TABLE Empleados(
id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL
);

CREATE TABLE Facturas(
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente),
FOREIGN KEY (id_zapatilla) REFERENCES Zapatillas (id_zapatilla),
FOREIGN KEY (id_empleado) REFERENCES Empleados (id_empleado)
);

ALTER TABLE Zapatillas 
ADD COLUMN marca VARCHAR (45), 
ADD COLUMN talla INT NOT NULL;

ALTER TABLE Empleados 
MODIFY COLUMN salario DECIMAL;

ALTER TABLE Clientes 
DROP COLUMN pais;

ALTER TABLE Facturas
ADD COLUMN total DECIMAL;

INSERT INTO Zapatillas (
id_zapatilla,
modelo,
color,
marca,
talla
)
VALUES 
(1,'XQYUN','Negro','Nike',42),
(2,'UOPMN','Rosas','Nike',39),
(3,'OPNYT','Verdes', 'Adidas', 35);

INSERT INTO Empleados (
id_empleado,
nombre,
tienda,
salario,
fecha_incorporacion
)VALUES
(1,'Laura','Alcobendas', 25.987, '2010-09-03'),
(2,'Maria', 'Sevilla',NULL, '2001-04-11'),
(3,'Ester','Oviedo',30, '2020-11-29');

INSERT INTO Clientes (
id_cliente,
nombre,
numero_telefono,
email,
direccion,
ciudad,
provincia,
codigo_postal
) VALUES
(1,'Monica',123456789,'monica@email.com','Calle Felicidad','Móstoles','Madrid',28176),
(2,'Lorena',289345678,'lorena@email.com','Calle Alegria','Barcelona','Barcelona',123456),
(3,'Carmen',298463759,'carmen@email.com','Calle del color','Vigo','Pontevedra',23456);

INSERT INTO Facturas(
id_factura,
numero_factura,
fecha,
id_zapatilla,
id_empleado,
id_cliente,
total
)VALUES
(1,123,'2001-12-11',1,2,1,54.98),
(2,1234,'2005-06-23',1,1,3,89.91),
(3,12345,'2015-09-18',2,3,3,76.23);

UPDATE Zapatillas
SET color = 'Amarillo'
WHERE color = 'Rosas';

UPDATE Empleados
SET tienda = 'A Coruña'
WHERE tienda = 'Alcobendas';

UPDATE Clientes
SET numero_telefono = 123456728
WHERE numero_telefono = 123456789;

UPDATE Facturas
SET total = 89.91
WHERE total = 2;



















)






























