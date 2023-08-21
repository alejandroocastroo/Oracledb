--DB AIRBNB ALEJANDRO CASTRO 

-- Usuarios
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(20),
    email VARCHAR(20) UNIQUE,
    fecha_registro DATE
);

-- Propiedades
-- Crear la tabla 'Propiedades'
CREATE TABLE Propiedades (
    id NUMBER PRIMARY KEY,
    titulo VARCHAR2(200),
    descripcion CLOB,
    precio NUMBER(10, 2),
    id_propietario NUMBER,
    CONSTRAINT FK_Propietario FOREIGN KEY (id_propietario) REFERENCES Usuarios(id)
);


-- Crear la tabla 'Reservas'
CREATE TABLE Reservas (
    id INT PRIMARY KEY,
    id_usuario INT,
    id_propiedad INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_propiedad) REFERENCES Propiedades(id)
);


-- Restricciones






