USE TerrorGamingDB;
GO

-- ELIMINA TABLA SI EXISTE
IF OBJECT_ID('Juegos', 'U') IS NOT NULL
DROP TABLE Juegos;
GO

-- CREA TABLA
CREATE TABLE Juegos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    imagen VARCHAR(255),
    descripcion VARCHAR(255)
);
GO

-- INSERT DE PRUEBA (RECOMENDADO PARA DEMOSTRACIÓN)
INSERT INTO Juegos (titulo, categoria, imagen, descripcion)
VALUES 
('Resident Evil', 'Terror', 'https://img1.jpg', 'Juego de terror'),
('Outlast', 'Terror', 'https://img2.jpg', 'Juego psicológico');
GO

-- VERIFICAR DATOS
SELECT * FROM Juegos;
GO
