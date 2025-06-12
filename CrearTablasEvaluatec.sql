--DAR CLICK EN BOTON EJECUTAR O PRESIONAR "ALT+X"
USE MASTER
IF EXISTS 
	( SELECT name FROM sysdatabases WHERE name = 'DB_Evaluatec' )
	DROP DATABASE DB_Evaluatec;

CREATE DATABASE DB_Evaluatec;
GO

USE DB_Evaluatec
GO 

CREATE TABLE Roles (
    id_rol INT PRIMARY KEY,
    nombre_rol NVARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    apellido NVARCHAR(100) NOT NULL,
    correo NVARCHAR(100) UNIQUE NOT NULL,
    contrasena NVARCHAR(100) NOT NULL,
    id_rol INT, 
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol) ON DELETE SET NULL
);

CREATE TABLE NivelesEducativos (
		id_nivel INT PRIMARY KEY,				
		nombre_nivel NVARCHAR(50) NOT NULL	--PRIMARIA/ SECUNDARIA
);

CREATE TABLE Grados (
		id_grado INT PRIMARY KEY,
		id_nivel INT,-- Especifica el nivel primaria o secundaria
		nombre_grado NVARCHAR(50) NOT NULL, -- 1°grado, 2° grado
		FOREIGN KEY (id_nivel) REFERENCES NivelesEducativos(id_nivel)
)

CREATE TABLE AnioEscolar (
    id_anio_escolar INT IDENTITY(1,1) PRIMARY KEY,
    anio INT NOT NULL,
    activo BIT DEFAULT 1 
);

CREATE TABLE EstudianteGrado (
    id_estudiante_grado INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario_estudiante INT,				
    id_grado INT,			--id del grado al que pertenece el estudiantes
    id_anio_escolar INT,    --id del año escolar al que pertenece el estudiante
    FOREIGN KEY (id_usuario_estudiante) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_grado) REFERENCES Grados(id_grado),
    FOREIGN KEY (id_anio_escolar) REFERENCES AnioEscolar(id_anio_escolar)
);


CREATE TABLE Cursos (
		id_curso INT IDENTITY(1,1) PRIMARY KEY, --Nombre de los cursos generales MATEMATICA COMUNICACION ...
		nombre_curso NVARCHAR(100) NOT NULL
);

	CREATE TABLE RamasCurso (
		id_rama INT IDENTITY(1,1) PRIMARY KEY, 
		id_curso INT,					-- id de los cursos generales 
		nombre NVARCHAR(100) NOT NULL,	--Nombre de los cursos especificos: algebra geometria, literatura lengauje
		FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
	);
	CREATE TABLE TemasCurso (
		id_tema INT IDENTITY(1,1) PRIMARY KEY, -- id de los temas por curso especifico
		id_rama INT,				--id de los cursos especificos
		id_grado INT NOT NULL,      -- Grado específico: 1° Primaria, 2° Secundaria, etc.
    nombre NVARCHAR(255) NOT NULL,  -- Nombre del tema
    FOREIGN KEY (id_rama) REFERENCES RamasCurso(id_rama),
    FOREIGN KEY (id_grado) REFERENCES Grados(id_grado)
	);


CREATE TABLE Notas (
    id_nota INT IDENTITY(1,1) PRIMARY KEY,
    id_tema INT,  -- Relaciona la calificación con el tema
    id_usuario_estudiante INT NOT NULL, -- Id del estudiante al que va dirigida la nota
    nota VARCHAR(10) NOT NULL,  -- Nota de cada estudiante en un tema específico o examen
    id_anio_escolar INT NOT NULL,  -- Año escolar
	id_usuario_docente INT,
	comentario VARCHAR(500),
    FOREIGN KEY (id_usuario_estudiante) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_anio_escolar) REFERENCES AnioEscolar(id_anio_escolar),
    FOREIGN KEY (id_tema) REFERENCES TemasCurso(id_tema),
	FOREIGN KEY (id_usuario_docente) REFERENCES Usuarios(id_usuario),
    -- Ponemos una restriccion para que no haya dos notas de un estudianate para un mismo tema
    UNIQUE (id_usuario_estudiante, id_tema, id_anio_escolar)
);

CREATE TABLE AsignacionesDocente (
    id_asignacion INT IDENTITY(1,1) PRIMARY KEY,  
    id_usuario_docente INT NOT NULL,    --USUARIO DEL PROFESOR (1)
    id_asignador INT NOT NULL,  --Id de la persona que asigna los roles al profesor	
    id_rama INT NOT NULL,		--Id del cursos asignado a cada profesor
    id_grado INT NOT NULL,		--Id del grado asignado a cada profesor
    id_anio_escolar INT NOT NULL, --Id del año 
    FOREIGN KEY (id_usuario_docente) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_rama) REFERENCES RamasCurso(id_rama),
    FOREIGN KEY (id_grado) REFERENCES Grados(id_grado),
    FOREIGN KEY (id_anio_escolar) REFERENCES AnioEscolar(id_anio_escolar),
    FOREIGN KEY (id_asignador) REFERENCES Usuarios(id_usuario)
);



CREATE TABLE Historial(
 id_historial INT IDENTITY(1,1) PRIMARY KEY,
 id_nota INT,
 id_tema INT,
 id_usuario_estudiante INT,
 id_usuario_docente INT, 
 id_grado INT, 
 id_rama INT,
 FOREIGN KEY (id_nota) REFERENCES Notas(id_nota),
 FOREIGN KEY (id_tema) REFERENCES TemasCurso(id_tema),
 FOREIGN KEY (id_usuario_estudiante) REFERENCES Usuarios(id_usuario),
 FOREIGN KEY (id_usuario_docente) REFERENCES Usuarios(id_usuario),
 FOREIGN KEY (id_grado) REFERENCES Grados(id_grado),
 FOREIGN KEY (id_rama) REFERENCES RamasCurso(id_rama)
);










