-- Crear la base de datos Veterinaria
CREATE DATABASE Veterinaria;
GO

-- Seleccionar la base de datos
USE Veterinaria;
GO

-- Crear la tabla Mae_Usuarios
CREATE TABLE Mae_Usuarios (
    Login_Usuario varchar(50) PRIMARY KEY,
    Clave_Usuario varchar(50) NOT NULL,
    Nombre_Usuario varchar(100) NOT NULL
);
GO

-- Insertar datos en la tabla Mae_Usuarios
INSERT INTO Mae_Usuarios (Login_Usuario, Clave_Usuario, Nombre_Usuario) VALUES
('juan123', 'contrase�a1', 'Juan P�rez'),
('maria456', 'contrase�a2', 'Mar�a Gonz�lez'),
('pedro789', 'contrase�a3', 'Pedro Garc�a'),
('laura012', 'contrase�a4', 'Laura S�nchez');
GO

-- Crear la tabla Mae_Mascotas
CREATE TABLE Mae_Mascotas (
    ID_Mascota int PRIMARY KEY IDENTITY(1,1),
    Nombre_Mascota varchar(50) UNIQUE,
    Tipo_Mascota varchar(50),
    Comida_Favorita varchar(50)
);
GO

-- Insertar datos en la tabla Mae_Mascotas
INSERT INTO Mae_Mascotas (Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES
('Max', 'Perro', 'Croquetas'),
('Luna', 'Gato', 'At�n'),
('Rufus', 'Perro', 'Pollo'),
('Mimi', 'Gato', 'Salm�n');
GO

-- Crear la tabla Control_Citas
CREATE TABLE Control_Citas (
    ID_Cita int PRIMARY KEY IDENTITY(1,1),
    ID_Mascota int FOREIGN KEY REFERENCES Mae_Mascotas(ID_Mascota),
    Proxima_fecha date,
    Medico_Asignado varchar(100)
);
GO

-- Insertar datos en la tabla Control_Citas
INSERT INTO Control_Citas (ID_Mascota, Proxima_fecha, Medico_Asignado) VALUES
(1, '2023-05-15', 'Dr. P�rez'),
(2, '2023-06-10', 'Dr. Gonz�lez'),
(3, '2023-07-20', 'Dr. Garc�a'),
(4, '2023-08-05', 'Dra. S�nchez');
GO