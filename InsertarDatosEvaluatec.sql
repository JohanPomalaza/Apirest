--DAR CLICK EN BOTON EJECUTAR O PRESIONAR "ALT+X"
--USE MASTER
use DB_Evaluatec
INSERT INTO Roles (id_rol, nombre_rol) VALUES
(1, 'Profesor'),
(2, 'Estudiante'),
(3, 'Entidad');

INSERT INTO Usuarios (nombre, apellido, correo, contrasena, id_rol) VALUES
('Joseph', 'Perez', 'joseph@gmail.com', '1234', 3),
('Ricardo', 'Vega', 'ricardoR@gmail.com', '1234', 1), 
('Isabel', 'Diaz', 'isabel@gmail.com', '1234', 1),
('Jos�', 'Guti�rrez', 'jose@gmail.com', '1234', 1), 
('Sof�a', 'Hern�ndez', 'sofia@gmail.com', '1234', 1),
('Luis', 'Mart�nez', 'luis@gmail.com', '1234', 1), 
('Marta', 'Gonz�lez', 'marta@gmail.com', '1234', 1),
('Juan', 'P�rez', 'juan@gmail.com', '1234', 1),
('Ra�l', 'Jim�nez', 'raulJ@gmail.com', '1234', 1),
('Elena', 'L�pez', 'elena@gmail.com', '1234', 1),
('Mar�a', 'Garc�a', 'mariaG@gmail.com', '1234', 1),
('Gabriel', 'Torres', 'gabriel@gmail.com', '1234', 1),
('Ana', 'Gomez', 'ana1@gmail.com', '1234', 2),
('Carlos', 'Ramirez', 'carlos@gmail.com', '1234', 2),
('Cristina', 'Fernandez', 'cristina@gmail.com', '1234', 2),
('Karen', 'Rocio', 'karen@gmail.com', '1234', 2),
('Alberto', 'Martinez', 'alberto@gmail.com', '1234', 2),
('Lucia', 'Rubi', 'lucia@gmail.com', '1234', 2),
('Fabiola', 'Nu�ez', 'fabiola@gmail.com', '1234', 2),
('Santiago', 'Mart�nez', 'santiago@gmail.com', '1234', 2), 
('Valeria', 'Serrano', 'valeria@gmail.com', '1234', 2), 
('Pedro', '�lvarez', 'pedro@gmail.com', '1234', 2),
('Manuel', 'Gonz�lez', 'manuel@gmail.com', '1234', 2), 
('Patricia', 'Morales', 'patricia@gmail.com', '1234', 2), 
('Luis', 'Rivera', 'luisR@gmail.com', '1234', 2), 
('Luisana', 'Ram�rez', 'luisana@gmail.com', '1234', 2),
('Eduardo', 'Salazar', 'eduardo@gmail.com', '1234', 2),
('Natalia', 'Vargas', 'natalia@gmail.com', '1234', 2),
('Ricardo', 'Castro', 'ricardo1@gmail.com', '1234', 2),
('Juliana', 'Mendoza', 'juliana@gmail.com', '1234', 2),
('Victor', 'Ortiz', 'victor@gmail.com', '1234', 2),
('Catalina', 'Moreno', 'catalina@gmail.com', '1234', 2),
('Luis', 'Gonz�lez', 'luisG@gmail.com', '1234', 2),
('Andrea', 'Paredes', 'andrea@gmail.com', '1234', 2),
('Javier', 'Hern�ndez', 'javier@gmail.com', '1234', 2),
('Carolina', 'Mart�nez', 'carolina@gmail.com', '1234', 2),
('Felipe', 'Ruiz', 'felipe@gmail.com', '1234', 2),
('Paola', 'Garc�a', 'paola@gmail.com', '1234', 2),
('Miguel', 'S�nchez', 'miguel@gmail.com', '1234', 2),
('Rosa', 'P�rez', 'rosa@gmail.com', '1234', 2), 
('Antonio', 'Lopez', 'antonio@gmail.com', '1234', 2),
('Silvia', 'Ramos', 'silvia@gmail.com', '1234', 2),
('Diego', 'Mart�n', 'diego@gmail.com', '1234', 2),
('Lorena', 'D�az', 'lorena@gmail.com', '1234', 2),
('Esteban', 'Quispe', 'esteban@gmail.com', '1234', 2),
('Marina', 'Flores', 'marina@gmail.com', '1234', 2),
('Diego', 'Salinas', 'diego1@gmail.com', '1234', 2),
('Luciana', 'Rojas', 'luciana@gmail.com', '1234', 2),
('Andr�s', 'Cruz', 'andres@gmail.com', '1234', 2),
('Camila', 'Vargas', 'camila@gmail.com', '1234', 2),
('Mario', 'Morales', 'mario1@gmail.com', '1234', 1),
('Ana', 'Ram�rez', 'anaR@gmail.com', '1234', 1),
('Javier', 'Vega', 'javierV@gmail.com', '1234', 1),
('Silvia', 'D�az', 'silviaD@gmail.com', '1234', 1),
('Patricia', 'Vargas', 'patriciaV@gmail.com', '1234', 1),
('Mar�a', 'L�pez', 'mariaL@gmail.com', '1234', 1),
('Eduardo', 'S�nchez', 'eduardoS@gmail.com', '1234', 1),
('Claudia', 'G�mez', 'claudiaG@gmail.com', '1234', 1),
('Ra�l', 'P�rez', 'raulP@gmail.com', '1234', 1),
('Marcela', 'Reyes', 'marcela@gmail.com', '1234', 1),
('Andr�s', 'Luna', 'andres.luna@gmail.com', '1234', 1),
('Tatiana', 'Campos', 'tatiana@gmail.com', '1234', 1),
('Rodrigo', 'Delgado', 'rodrigo.delgado@gmail.com', '1234', 1),
('Valentina', 'Silva', 'valentina.silva@gmail.com', '1234', 1),
('Sebasti�n', 'Mej�a', 'sebastian.mejia@gmail.com', '1234', 1),
('Paula', 'C�rdenas', 'paula.cardenas@gmail.com', '1234', 1),
('Gonzalo', 'Estrada', 'gonzalo.estrada@gmail.com', '1234', 1);


SELECT * FROM Usuarios WHERE id_rol=1
INSERT INTO NivelesEducativos (id_nivel, nombre_nivel) VALUES
(1, 'Primaria'),
(2, 'Secundaria');


-- PRIMARIA
INSERT INTO Grados (id_grado, id_nivel, nombre_grado) VALUES
(1, 1, '1� Primaria'),
(2, 1, '2� Primaria'),
(3, 1, '3� Primaria'),
(4, 1, '4� Primaria'),
(5, 1, '5� Primaria'),
(6, 1, '6� Primaria'),
-- SECUNDARIA
(7, 2, '1� Secundaria'),
(8, 2, '2� Secundaria'),
(9, 2, '3� Secundaria'),
(10, 2, '4� Secundaria'),
(11, 2, '5� Secundaria');


INSERT INTO AnioEscolar (anio, activo) VALUES
(2021, 0),
(2022, 0),
(2023,0),
(2024,1);

-- Asignaci�n de estudiantes a grados para el a�o escolar 2024
INSERT INTO EstudianteGrado (id_usuario_estudiante, id_grado, id_anio_escolar) VALUES
(13, 1, 4),  -- Ana G�mez 
(14, 1, 4),  -- Carlos Ram�rez 
(15, 1, 4),  -- Cristina Fern�ndez 
(16, 2, 4),  -- Karen Rocio 
(17, 2, 4),  -- Alberto Mart�nez
(18, 2, 4),  -- Luc�a Rub� 
(19, 3, 4),  -- Fabiola Nu�ez 
(20, 3, 4),  -- Santiago Mart�nez 
(21, 3, 4),  -- Valeria Serrano 
(22, 4, 4),  -- Pedro �lvarez 
(23, 4, 4),  -- Manuel Gonz�lez 
(24, 4, 4),  -- Patricia Morales 
(25, 5, 4),  -- Luis Rivera 
(26, 5, 4),  -- Luisana Ram�rez 
(27, 5, 4),  -- Eduardo Salazar 
(28, 6, 4),  -- Natalia Vargas 
(29, 6, 4),  -- Ricardo Castro 
(30, 6, 4),  -- Juliana Mendoza 
(31, 7, 4),  -- Victor Ortiz
(32, 7, 4), -- Catalina Moreno
(33, 7, 4), -- Luis Gonz�lez 
(34, 8, 4), -- Andrea Paredes 
(35,8, 4),   --Javier Hern�ndez
(36,8, 4),   --Carolina Mart�nez
(37,9, 4),   --Felipe Ruiz
(38,9, 4),   --Paola Garc�a
(39,9, 4),   --Miguel S�nchez
(40,10,4),   --Rosa P�rez
(41,10,4),   --Antonio Lopez
(42,10,4),   --Silvia Ramos
(43,10,4),   --Diego Mart�n
(44,10,4),   --Lorena D�az
(45,11,4),   --Esteban Quispe
(46, 11, 4), --Marina Flores
(47, 11, 4), --Diego Salinas
(48, 11, 4), --Luciana Rojas
(49, 11, 4), --Andr�s Cruz
(50, 11, 4); --Camila Vargas

INSERT INTO Cursos (nombre_curso) VALUES
('Matem�ticas'),
('Comunicaci�n'),
('Ciencia y Tecnolog�a'),
('Personal Social'),
('Educaci�n F�sica'),
('Arte y Cultura'),
('Ingl�s'),
('Educaci�n Religiosa'),
('Educaci�n para el Trabajo'),
('Tutor�a y Orientaci�n Educativa');

-- Inserci�n de ramas de curso
INSERT INTO RamasCurso (id_curso, nombre) VALUES 
-- MATEM�TICAS (id_curso = 1)
(1, '�lgebra'),
(1, 'Geometr�a'),
(1, 'Aritm�tica'),
(1,'Trigonometria'),
(1, 'Razonamiento Matem�tico'),
-- COMUNICACI�N (id_curso = 2)
(2, 'Lenguaje'),
(2, 'Literatura'),
(2, 'Razonamiento Verbal'),
-- CIENCIA Y TECNOLOG�A (id_curso = 3)
(3,'Ciencia Tecnologia y Ambiente'),
(3, 'Biolog�a'),
(3, 'Qu�mica'),
(3, 'F�sica'),
-- PERSONAL SOCIAL (id_curso = 4)
(4, 'Educaci�n C�vica'),
-- EDUCACI�N F�SICA (id_curso = 5)
(5, 'Educaci�n F�sica'),
-- ARTE Y CULTURA (id_curso = 6)
(6, 'Arte'),
-- INGL�S (id_curso = 7)
(7, 'Ingl�s'),
-- EDUCACI�N RELIGIOSA (id_curso = 8)
(8, 'Religion'),
-- EDUCACI�N PARA EL TRABAJO (id_curso = 9)
(9, 'Educaci�n para el Trabajo'),
-- TUTOR�A Y ORIENTACI�N EDUCATIVA (id_curso = 10)
(10, 'Tutor�a');

--PRIMARIA
--primero de primaria
INSERT INTO TemasCurso (id_rama, id_grado , nombre) VALUES
-- Aritm�tica
(3, 1, 'Contar del 1 al 100'),
(3, 1, 'Sumas b�sicas'),
(3, 1, 'Restas b�sicas'),
(3, 1, 'Uso del n�mero cero'),
(3, 1, 'N�meros pares e impares'),
(3, 1, 'Descomposici�n de n�meros'),
(3, 1, 'Valor posicional'),
(3, 1, 'Resolver problemas simples'),
(3, 1, 'Uso de objetos para sumar'),
(3, 1, 'Comparar n�meros'),

-- Lenguaje
(5, 1, 'Sonidos de letras'),
(5, 1, 'S�labas y palabras'),
(5, 1, 'Lectura de palabras simples'),
(5, 1, 'Comprensi�n de instrucciones'),
(5, 1, 'Diferenciaci�n de letras'),
(5, 1, 'Escucha activa'),
(5, 1, 'Relato de experiencias'),
(5, 1, 'Uso del lenguaje en di�logos'),
(5, 1, 'Descripciones orales'),
(5, 1, 'Canciones infantiles'),

-- Ciencia, Tecnolog�a y Ambiente
(6, 1, 'Partes del cuerpo humano'),
(6, 1, 'Los sentidos'),
(6, 1, 'Alimentos y salud'),
(6, 1, 'Las plantas'),
(6, 1, 'Los animales'),
(6, 1, 'H�bitats de los seres vivos'),
(6, 1, 'El ciclo de vida'),
(6, 1, 'El agua, aire y suelo'),
(6, 1, 'Materiales y sus usos'),
(6, 1, 'La energ�a'),
-- Educaci�n F�sica
(7, 1, 'Movimientos b�sicos: correr, saltar, lanzar'),
(7, 1, 'Juegos tradicionales'),
(7, 1, 'Coordinaci�n y equilibrio'),
(7, 1, 'Desarrollo de habilidades motrices gruesas'),
(7, 1, 'Respeto por las reglas y trabajo en equipo'),
-- Arte y Cultura
(9, 1, 'Dibujo y pintura con diferentes materiales'),
(9, 1, 'Modelado con arcilla o plastilina'),
(9, 1, 'Reconocimiento de obras y artistas peruanos'),
(9, 1, 'Expresi�n corporal y danza'),
(9, 1, 'M�sica: ritmos y sonidos'),
-- Religi�n
(10, 1, 'Conocimiento de Dios a trav�s de la creaci�n'),
(10, 1, 'Historias b�blicas adaptadas'),
(10, 1, 'Valores: amor, respeto, solidaridad'),
(10, 1, 'Celebraciones religiosas importantes'),
(10, 1, 'Agradecimiento y cuidado del entorno'),
-- Tutor�a
(11, 1, 'Conocimiento de s� mismo'),
(11, 1, 'Relaciones interpersonales'),
(11, 1, 'Resoluci�n de conflictos'),
(11, 1, 'Importancia de la familia y la escuela'),
(11, 1, 'H�bitos de higiene y cuidado personal'),



--2� PRIMARIA
-- Insertar Temas para Matem�tica - Aritm�tica
(3, 2, 'Suma y resta con n�meros hasta 999'),
(3, 2, 'Multiplicaci�n por una cifra'),
(3, 2, 'Multiplicaci�n por dos cifras'),
(3, 2, 'Divisi�n exacta'),
(3, 2, 'Divisi�n con residuo'),
(3, 2, 'Resoluci�n de problemas de suma y resta'),
(3, 2, 'Resoluci�n de problemas de multiplicaci�n'),
(3, 2, 'Resoluci�n de problemas de divisi�n'),
(3, 2, 'Uso de la calculadora en operaciones b�sicas'),
(3, 2, 'Estimaci�n de resultados'),

-- Insertar Temas para Comunicaci�n - Lenguaje
(6, 2, 'Comprensi�n de textos narrativos'),
(6, 2, 'Identificaci�n de personajes y escenarios'),
(6, 2, 'Secuencia de eventos en una historia'),
(6, 2, 'Uso de conectores temporales'),
(6, 2, 'Producci�n de textos narrativos'),
(6, 2, 'Revisi�n y correcci�n de textos escritos'),
(6, 2, 'Lectura en voz alta y expresi�n oral'),
(6, 2, 'Interpretaci�n de ilustraciones en textos'),
(6, 2, 'Uso adecuado del vocabulario'),
(6, 2, 'Desarrollo de la creatividad en la escritura'),

-- Insertar Temas para Ciencia, Tecnolog�a y Ambiente
(9, 2, 'El cuerpo humano y sus funciones'),
(9, 2, 'Las plantas y sus partes'),
(9, 2, 'El ciclo del agua'),
(9, 2, 'El clima y las estaciones del a�o'),
(9, 2, 'El medio ambiente y su conservaci�n'),
(9, 2, 'Los animales y sus h�bitats'),
(9, 2, 'La importancia del aire'),
(9, 2, 'La energ�a y sus fuentes'),
(9, 2, 'Los recursos naturales y su uso responsable'),
(9, 2, 'La contaminaci�n y c�mo prevenirla'),
-- Insertar Temas para Personal Social - Educaci�n C�vica
(13, 2, 'Derechos y deberes de los ni�os'),
(13, 2, 'La convivencia en la escuela'),
(13, 2, 'El respeto a los dem�s'),
(13, 2, 'La importancia de la solidaridad'),
(13, 2, 'La importancia de la paz y la tolerancia'),
(13, 2, 'La familia y sus roles'),
(13, 2, 'El respeto por las normas de convivencia'),
(13, 2, 'Los valores en la sociedad'),
(13, 2, 'La democracia y participaci�n ciudadana'),
(13, 2, 'Los s�mbolos patrios y su importancia'),
-- Insertar Temas para Educaci�n F�sica
(14, 2, 'Juegos y deportes de equipo'),
(14, 2, 'La importancia de la actividad f�sica'),
(14, 2, 'La coordinaci�n motora gruesa'),
(14, 2, 'Ejercicios de fuerza y resistencia'),
(14, 2, 'La importancia de la nutrici�n en el deporte'),
(14, 2, 'Respiraci�n y t�cnicas de relajaci�n'),
(14, 2, 'Juegos de habilidades motrices b�sicas'),
(14, 2, 'La importancia de la higiene personal'),
(14, 2, 'El calentamiento y estiramiento'),
(14, 2, 'La actividad f�sica y la salud'),
-- Insertar Temas para Arte y Cultura
(15, 2, 'La pintura y sus estilos'),
(15, 2, 'Los colores primarios y secundarios'),
(15, 2, 'El dibujo y la forma'),
(15, 2, 'La m�sica y los instrumentos'),
(15, 2, 'El teatro y la expresi�n corporal'),
(15, 2, 'La danza y el movimiento'),
(15, 2, 'La escultura y las formas en 3D'),
(15, 2, 'El arte en la naturaleza'),
(15, 2, 'El valor cultural de las artes'),
(15, 2, 'Creaci�n de obras art�sticas propias'),
-- Insertar Temas para Religi�n
(17, 2, 'Los valores en la religi�n'),
(17, 2, 'El respeto y la ayuda al pr�jimo'),
(17, 2, 'Los milagros de Jes�s'),
(17, 2, 'El amor y la compasi�n'),
(17, 2, 'La vida de los santos'),
(17, 2, 'Las ense�anzas de la Biblia'),
(17, 2, 'La oraci�n y su importancia'),
(17, 2, 'El perd�n y la reconciliaci�n'),
(17, 2, 'Los sacramentos en la religi�n cat�lica'),
(17, 2, 'La paz y la unidad en la fe'),
-- Insertar Temas para Tutor�a
(19, 2, 'El desarrollo emocional en los ni�os'),
(19, 2, 'La importancia de la autoestima'),
(19, 2, 'La resoluci�n de conflictos'),
(19, 2, 'La importancia de la amistad'),
(19, 2, 'Los derechos y responsabilidades del ni�o'),
(19, 2, 'La importancia de la salud mental'),
(19, 2, 'La empat�a y el respeto hacia los dem�s'),
(19, 2, 'La gesti�n de emociones'),
(19, 2, 'El trabajo en equipo y la colaboraci�n'),
(19, 2, 'El rol de la familia en el bienestar del ni�o'),

--3� PRIMARIA
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 3, 'Figuras geom�tricas planas y espaciales'),
(2, 3, 'Propiedades de los tri�ngulos y cuadril�teros'),
(2, 3, 'Clasificaci�n de �ngulos: agudos, rectos y obtusos'),
(2, 3, 'Simetr�a en figuras geom�tricas'),
(2, 3, 'Per�metro y �rea de figuras planas'),
(2, 3, 'Construcci�n de figuras con regla y comp�s'),
(2, 3, 'Relaci�n entre �reas y per�metros'),
(2, 3, 'Identificaci�n de l�neas rectas, curvas y segmentos'),
(2, 3, 'El concepto de �ngulos interiores y exteriores'),
(2, 3, 'Transformaciones geom�tricas: traslaciones, rotaciones y simetr�a'),

-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 3, 'Suma y resta con n�meros hasta 1000'),
(3, 3, 'Multiplicaci�n por una y dos cifras'),
(3, 3, 'Divisi�n exacta y con residuo'),
(3, 3, 'Resoluci�n de problemas de multiplicaci�n y divisi�n'),
(3, 3, 'Uso de la calculadora para operaciones b�sicas'),
(3, 3, 'Estimaci�n de resultados en operaciones'),
(3, 3, 'Fracciones: comprensi�n y operaciones'),
(3, 3, 'Resoluci�n de problemas con fracciones'),
(3, 3, 'Descomposici�n de n�meros en sumandos'),
(3, 3, 'Operaciones con n�meros decimales'),

-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 3, 'Problemas de l�gica matem�tica'),
(5, 3, 'Identificaci�n de patrones num�ricos y geom�tricos'),
(5, 3, 'Desarrollo del pensamiento l�gico y cr�tico'),
(5, 3, 'Uso de tablas, gr�ficos y diagramas para organizar informaci�n'),
(5, 3, 'Secuencias l�gicas y num�ricas'),
(5, 3, 'Clasificaci�n y seriaci�n de objetos'),
(5, 3, 'Resoluci�n de problemas con estrategias matem�ticas'),
(5, 3, 'Razonamiento deductivo e inductivo en problemas'),
(5, 3, 'Problemas con relaciones espaciales y num�ricas'),
(5, 3, 'Pensamiento l�gico en situaciones cotidianas'),

-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 3, 'Comprensi�n de textos narrativos y descriptivos'),
(6, 3, 'Estructura de una narraci�n: inicio, desarrollo y conclusi�n'),
(6, 3, 'Uso de conectores l�gicos en la redacci�n'),
(6, 3, 'Producci�n de textos narrativos y descriptivos'),
(6, 3, 'Lectura en voz alta y pronunciaci�n clara'),
(6, 3, 'Revisi�n y correcci�n de textos escritos'),
(6, 3, 'Expresi�n de ideas en forma escrita y oral'),
(6, 3, 'Redacci�n de cartas, correos y mensajes'),
(6, 3, 'Identificaci�n de ideas principales y secundarias en un texto'),
(6, 3, 'Elaboraci�n de res�menes y esquemas'),

-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 3, 'Sin�nimos y ant�nimos'),
(8, 3, 'Diminutivos y aumentativos'),
(8, 3, 'Analog�as verbales'),
(8, 3, 'Clasificaci�n de palabras'),
(8, 3, 'Formaci�n de palabras compuestas'),
(8, 3, 'Orden alfab�tico'),
(8, 3, 'Uso de diccionarios'),
(8, 3, 'Comprensi�n de instrucciones orales'),
(8, 3, 'Expresi�n de ideas de manera clara'),
(8, 3, 'Participaci�n en conversaciones grupales'),

-- Insertar Temas para Ciencia, Tecnolog�a y Ambiente (id_rama = 9)
(9, 3, 'El cuerpo humano y sus funciones'),
(9, 3, 'Las plantas y sus partes'),
(9, 3, 'El ciclo del agua'),
(9, 3, 'El clima y las estaciones del a�o'),
(9, 3, 'El medio ambiente y su conservaci�n'),
(9, 3, 'Los animales y sus h�bitats'),
(9, 3, 'La importancia del aire'),
(9, 3, 'La energ�a y sus fuentes'),
(9, 3, 'Los recursos naturales y su uso responsable'),
(9, 3, 'La contaminaci�n y c�mo prevenirla'),

-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 3, 'Derechos y deberes de los ni�os'),
(13, 3, 'La convivencia en la escuela'),
(13, 3, 'El respeto a los dem�s'),
(13, 3, 'La importancia de la solidaridad'),
(13, 3, 'La importancia de la paz y la tolerancia'),
(13, 3, 'La democracia y la participaci�n'),
(13, 3, 'Los valores en la familia y la sociedad'),
(13, 3, 'Las leyes y su cumplimiento'),
(13, 3, 'La igualdad de derechos'),
(13, 3, 'La importancia de cuidar el medio ambiente'),

-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 3, 'Ejercicios para mejorar la coordinaci�n motora'),
(14, 3, 'Juegos deportivos y su reglamento'),
(14, 3, 'La importancia de la actividad f�sica'),
(14, 3, 'El calentamiento y estiramientos antes de ejercitarse'),
(14, 3, 'Juegos tradicionales'),
(14, 3, 'La salud y el ejercicio f�sico'),
(14, 3, 'Deportes en equipo y cooperaci�n'),
(14, 3, 'La respiraci�n y el ejercicio f�sico'),
(14, 3, 'La higiene personal y la actividad f�sica'),
(14, 3, 'Los deportes de aventura'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 3, 'Dibujo y pintura'),
(15, 3, 'La expresi�n art�stica a trav�s de la m�sica'),
(15, 3, 'La escultura y su historia'),
(15, 3, 'El teatro y la interpretaci�n'),
(15, 3, 'La importancia del arte en la sociedad'),
(15, 3, 'El arte como medio de comunicaci�n'),
(15, 3, 'Las t�cnicas de grabado y collage'),
(15, 3, 'El dise�o gr�fico y la creatividad'),
(15, 3, 'La historia del arte'),
(15, 3, 'La interpretaci�n musical y la danza'),

-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 3, 'Vocabulario b�sico en ingl�s'),
(16, 3, 'Expresi�n oral en ingl�s: preguntas y respuestas'),
(16, 3, 'El alfabeto en ingl�s'),
(16, 3, 'Frases comunes en ingl�s'),
(16, 3, 'La familia en ingl�s'),
(16, 3, 'La casa en ingl�s'),
(16, 3, 'Los n�meros en ingl�s'),
(16, 3, 'La comida en ingl�s'),
(16, 3, 'Las estaciones del a�o en ingl�s'),
(16, 3, 'El tiempo y el clima en ingl�s'),

-- Insertar Temas para Religi�n (id_rama = 17)
(17, 3, 'El amor y el respeto en la religi�n'),
(17, 3, 'Los valores cristianos'),
(17, 3, 'La vida de Jes�s'),
(17, 3, 'La oraci�n y sus tipos'),
(17, 3, 'Los mandamientos'),
(17, 3, 'La solidaridad en la religi�n'),
(17, 3, 'La importancia del perd�n'),
(17, 3, 'Las ense�anzas de la Biblia'),
(17, 3, 'La importancia de la paz y la armon�a'),
(17, 3, 'La participaci�n en la comunidad religiosa'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 3, 'La importancia de la autoestima'),
(19, 3, 'C�mo trabajar en equipo'),
(19, 3, 'La importancia de la comunicaci�n efectiva'),
(19, 3, 'La resoluci�n de conflictos'),
(19, 3, 'El manejo de las emociones'),
(19, 3, 'Los derechos y responsabilidades de los estudiantes'),
(19, 3, 'La importancia del esfuerzo en el estudio'),
(19, 3, 'La organizaci�n y planificaci�n del tiempo'),
(19, 3, 'La importancia de los h�bitos saludables'),
(19, 3, 'La convivencia escolar y el respeto a los dem�s'),
--4� PRIMARIA
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 4, 'Pol�gonos y sus propiedades'),
(2, 4, 'Per�metro de pol�gonos regulares e irregulares'),
(2, 4, '�rea de tri�ngulos, rect�ngulos y cuadril�teros'),
(2, 4, 'Volumen de cuerpos geom�tricos: cubos y prismas'),
(2, 4, 'Simetr�a axial y central en figuras geom�tricas'),
(2, 4, 'Propiedades de los �ngulos en tri�ngulos y cuadril�teros'),
(2, 4, '�ngulos interiores y exteriores de un tri�ngulo'),
(2, 4, 'Construcci�n de figuras geom�tricas con herramientas b�sicas'),
(2, 4, 'El concepto de diagonales en pol�gonos'),
(2, 4, 'Uso de la regla y comp�s en construcciones geom�tricas'),

-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 4, 'Divisi�n larga y corta'),
(3, 4, 'Multiplicaci�n de n�meros con m�s de dos cifras'),
(3, 4, 'Operaciones con n�meros decimales'),
(3, 4, 'Redondeo y aproximaci�n de n�meros decimales'),
(3, 4, 'Fracciones equivalentes'),
(3, 4, 'Conversi�n entre fracciones, decimales y porcentajes'),
(3, 4, 'Uso de fracciones en problemas de la vida cotidiana'),
(3, 4, 'Estimaci�n de resultados en operaciones de c�lculo'),
(3, 4, 'Problemas de mezcla y fracciones en proporciones'),
(3, 4, 'Uso de la calculadora para operaciones complejas'),

-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 4, 'Secuencias num�ricas y l�gicas'),
(5, 4, 'Patrones en n�meros y figuras geom�tricas'),
(5, 4, 'Resoluci�n de problemas mediante l�gica deductiva'),
(5, 4, 'Razonamiento inductivo y patrones matem�ticos'),
(5, 4, 'Uso de tablas y diagramas para organizar informaci�n matem�tica'),
(5, 4, 'Problemas con razonamiento num�rico y algebraico'),
(5, 4, 'Razonamiento l�gico en problemas de la vida diaria'),
(5, 4, 'Soluci�n de problemas con diagramas de Venn y tablas de verdad'),
(5, 4, 'Estrategias para resolver problemas complejos'),
(5, 4, 'Desarrollo de habilidades para pensar de manera l�gica y cr�tica'),

-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 4, 'Comprensi�n lectora de textos narrativos y expositivos'),
(6, 4, 'Desarrollo de la expresi�n oral y escrita'),
(6, 4, 'Estructura de un texto: introducci�n, desarrollo y conclusi�n'),
(6, 4, 'Uso adecuado de conectores y nexos en la redacci�n'),
(6, 4, 'Elaboraci�n de res�menes y esquemas a partir de textos'),
(6, 4, 'Comprensi�n y an�lisis de textos argumentativos'),
(6, 4, 'Producci�n de textos expositivos y descriptivos'),
(6, 4, 'Lectura de textos de distintos g�neros literarios'),
(6, 4, 'Vocabulario en la redacci�n de textos'),
(6, 4, 'Uso adecuado de la puntuaci�n y la ortograf�a en la escritura'),

-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 4, 'Sin�nimos y ant�nimos de palabras comunes'),
(8, 4, 'Formaci�n de analog�as verbales'),
(8, 4, 'Identificaci�n de errores en la concordancia verbal y nominal'),
(8, 4, 'Uso de adjetivos y sustantivos en contextos orales y escritos'),
(8, 4, 'Clasificaci�n de palabras por su significado'),
(8, 4, 'Construcci�n de frases y oraciones con diferentes estructuras gramaticales'),
(8, 4, 'El uso correcto de los tiempos verbales'),
(8, 4, 'Interpretaci�n de instrucciones orales'),
(8, 4, 'Desarrollo de habilidades para participar en conversaciones grupales'),
(8, 4, 'Desarrollo del vocabulario mediante lectura y actividades pr�cticas'),

-- Insertar Temas para Ciencia, Tecnolog�a y Ambiente (id_rama = 9)
(9, 4, 'Los ecosistemas y la biodiversidad'),
(9, 4, 'El ciclo del agua en la naturaleza'),
(9, 4, 'La contaminaci�n y sus efectos en el medio ambiente'),
(9, 4, 'El cambio clim�tico y su impacto'),
(9, 4, 'La energ�a y sus fuentes renovables y no renovables'),
(9, 4, 'La clasificaci�n de los seres vivos'),
(9, 4, 'Los recursos naturales y su conservaci�n'),
(9, 4, 'Los sistemas ecol�gicos y su funcionamiento'),
(9, 4, 'El reciclaje y la importancia del cuidado ambiental'),
(9, 4, 'La importancia de la agricultura sostenible'),

-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 4, 'Los derechos y deberes de los ni�os en la sociedad'),
(13, 4, 'El concepto de justicia y equidad'),
(13, 4, 'La importancia de la solidaridad y el respeto'),
(13, 4, 'La convivencia pac�fica en la escuela y la comunidad'),
(13, 4, 'Los valores c�vicos: honestidad, responsabilidad y respeto'),
(13, 4, 'La participaci�n en la vida p�blica'),
(13, 4, 'Los s�mbolos patrios y su significado'),
(13, 4, 'La igualdad ante la ley'),
(13, 4, 'La democracia y los derechos humanos'),
(13, 4, 'El respeto por la diversidad cultural'),

-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 4, 'Desarrollo de habilidades motrices gruesas y finas'),
(14, 4, 'La importancia de la actividad f�sica para la salud'),
(14, 4, 'Los deportes: reglas y pr�cticas'),
(14, 4, 'El trabajo en equipo en actividades deportivas'),
(14, 4, 'La coordinaci�n y el equilibrio en los ejercicios f�sicos'),
(14, 4, 'La higiene y los cuidados personales en el deporte'),
(14, 4, 'Los juegos tradicionales y populares'),
(14, 4, 'El calentamiento y enfriamiento antes y despu�s del ejercicio'),
(14, 4, 'La nutrici�n y su relaci�n con el rendimiento f�sico'),
(14, 4, 'El respeto por las reglas en los deportes'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 4, 'El dibujo y la pintura como forma de expresi�n'),
(15, 4, 'La m�sica como expresi�n art�stica'),
(15, 4, 'La danza y su significado en las diferentes culturas'),
(15, 4, 'La escultura y el modelado de formas'),
(15, 4, 'Los colores, texturas y formas en el arte'),
(15, 4, 'El arte y la comunicaci�n visual'),
(15, 4, 'Los g�neros art�sticos: pintura, m�sica, danza y teatro'),
(15, 4, 'La interpretaci�n y creaci�n de obras de arte'),
(15, 4, 'El arte en la historia y las civilizaciones'),
(15, 4, 'La creaci�n de proyectos art�sticos'),

-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 4, 'Vocabulario b�sico en ingl�s relacionado con la familia'),
(16, 4, 'Frases y expresiones comunes en ingl�s'),
(16, 4, 'La familia y los miembros del hogar en ingl�s'),
(16, 4, 'Los d�as de la semana y las estaciones del a�o en ingl�s'),
(16, 4, 'La hora y la fecha en ingl�s'),
(16, 4, 'Las profesiones y ocupaciones en ingl�s'),
(16, 4, 'Las actividades diarias en ingl�s'),
(16, 4, 'Los verbos de acci�n m�s comunes en ingl�s'),
(16, 4, 'Frases para dar direcciones en ingl�s'),
(16, 4, 'El uso de adjetivos y sustantivos en ingl�s'),

-- Insertar Temas para Religi�n (id_rama = 17)
(17, 4, 'El amor y la paz en la religi�n'),
(17, 4, 'La solidaridad y la ayuda al pr�jimo'),
(17, 4, 'La oraci�n y la meditaci�n como medios de comunicaci�n con Dios'),
(17, 4, 'Los principales personajes b�blicos'),
(17, 4, 'La vida de Jes�s y sus ense�anzas'),
(17, 4, 'El respeto a la vida y la creaci�n divina'),
(17, 4, 'Los sacramentos en la iglesia'),
(17, 4, 'La importancia de la fe y la esperanza'),
(17, 4, 'La familia como n�cleo de la vida cristiana'),
(17, 4, 'Los valores cristianos en la vida cotidiana'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 4, 'La importancia de la autoestima y la confianza'),
(19, 4, 'C�mo gestionar el tiempo de manera eficaz'),
(19, 4, 'La resoluci�n de conflictos en el entorno escolar'),
(19, 4, 'El respeto y la empat�a con los dem�s'),
(19, 4, 'La importancia de las decisiones responsables'),
(19, 4, 'El trabajo en equipo y la cooperaci�n'),
(19, 4, 'La gesti�n de las emociones en situaciones conflictivas'),
(19, 4, 'La participaci�n activa en actividades escolares'),
(19, 4, 'La importancia del esfuerzo personal'),
(19, 4, 'La convivencia escolar y la relaci�n con los compa�eros'),

--5� PRIMARIA
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 5, 'Propiedades de los pol�gonos regulares e irregulares'),
(2, 5, 'Per�metro y �rea de tri�ngulos, cuadril�teros y pol�gonos'),
(2, 5, '�ngulos internos y externos en los pol�gonos'),
(2, 5, 'El c�lculo del volumen de cuerpos geom�tricos como prismas y pir�mides'),
(2, 5, 'El teorema de Pit�goras en tri�ngulos rect�ngulos'),
(2, 5, 'Construcci�n de figuras geom�tricas con comp�s y regla'),
(2, 5, 'Simetr�a en las figuras geom�tricas'),
(2, 5, 'Descomposici�n de figuras geom�tricas en otras m�s simples'),
(2, 5, 'El concepto de coordenadas cartesianas en el plano'),
(2, 5, 'Transformaciones geom�tricas: traslaciones, rotaciones y reflexiones'),
-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 5, 'Operaciones con n�meros decimales'),
(3, 5, 'Multiplicaci�n y divisi�n de fracciones'),
(3, 5, 'Operaciones con porcentajes'),
(3, 5, 'C�lculo de porcentajes de un n�mero'),
(3, 5, 'Descuento y aumento porcentual'),
(3, 5, 'Problemas de proporciones y razones'),
(3, 5, 'La relaci�n entre fracciones, decimales y porcentajes'),
(3, 5, 'Estimaci�n de resultados en operaciones con grandes n�meros'),
(3, 5, 'C�lculo de intereses simples y compuestos'),
(3, 5, 'El uso de la regla de tres en problemas pr�cticos'),
-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 5, 'Patrones num�ricos y secuencias'),
(5, 5, 'Problemas de l�gica con n�meros'),
(5, 5, 'Razonamiento inductivo y deductivo'),
(5, 5, 'El uso de tablas y gr�ficos para resolver problemas matem�ticos'),
(5, 5, 'Resoluci�n de problemas mediante el an�lisis l�gico'),
(5, 5, 'Combinaciones y permutaciones'),
(5, 5, 'Estrategias para la soluci�n de problemas complejos'),
(5, 5, 'Soluci�n de problemas con diagramas de Venn y redes de relaciones'),
(5, 5, 'Desarrollo de razonamiento anal�tico y abstracto'),
(5, 5, 'Resoluci�n de problemas de �lgebra mediante razonamiento l�gico'),
-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 5, 'Comprensi�n lectora de textos narrativos y expositivos'),
(6, 5, 'Uso adecuado de la puntuaci�n y ortograf�a en los textos escritos'),
(6, 5, 'Estructura de los textos narrativos y expositivos'),
(6, 5, 'Redacci�n de ensayos, res�menes y cartas formales'),
(6, 5, 'Desarrollo de la expresi�n oral y escrita'),
(6, 5, 'An�lisis de textos argumentativos'),
(6, 5, 'Desarrollo del vocabulario mediante la lectura de textos variados'),
(6, 5, 'Escritura de textos descriptivos, narrativos y expositivos'),
(6, 5, 'El uso de conectores l�gicos para la organizaci�n de las ideas'),
(6, 5, 'Lectura cr�tica y an�lisis de diversos g�neros literarios'),
-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 5, 'Formaci�n de analog�as verbales'),
(8, 5, 'Sin�nimos, ant�nimos y hom�nimos'),
(8, 5, 'Uso de la concordancia verbal y nominal en textos escritos'),
(8, 5, 'El uso adecuado de adjetivos, sustantivos y verbos en los textos'),
(8, 5, 'Interpretaci�n de textos narrativos y expositivos'),
(8, 5, 'Clasificaci�n de oraciones seg�n su estructura gramatical'),
(8, 5, 'Completaci�n de oraciones con palabras adecuadas'),
(8, 5, 'Desarrollo de habilidades de expresi�n oral en debates y discusiones'),
(8, 5, 'Comprensi�n de textos argumentativos'),
(8, 5, 'El uso de los tiempos verbales en la narraci�n y descripci�n'),
-- Insertar Temas para CTA (id_rama = 9)
(9, 5, 'Los sistemas del cuerpo humano: digestivo, respiratorio, circulatorio'),
(9, 5, 'El aparato reproductor humano y los ciclos reproductivos'),
(9, 5, 'La c�lula: tipos y funciones'),
(9, 5, 'Los procesos biol�gicos en las plantas y animales'),
(9, 5, 'Los ecosistemas: factores bi�ticos y abi�ticos'),
(9, 5, 'La gen�tica y la herencia en los seres vivos'),
(9, 5, 'La clasificaci�n de los seres vivos seg�n sus caracter�sticas'),
(9, 5, 'El ciclo de vida de los organismos'),
(9, 5, 'La biodiversidad y su importancia en la estabilidad del ecosistema'),
(9, 5, 'La nutrici�n, respiraci�n y circulaci�n en los seres vivos'),
-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 5, 'Los derechos humanos y su importancia'),
(13, 5, 'La responsabilidad social y la participaci�n activa'),
(13, 5, 'La importancia del respeto y la tolerancia en la convivencia'),
(13, 5, 'La justicia y la equidad en la sociedad'),
(13, 5, 'El respeto por la diversidad cultural y de opiniones'),
(13, 5, 'La democracia y la participaci�n ciudadana'),
(13, 5, 'Los valores �ticos y su aplicaci�n en la vida cotidiana'),
(13, 5, 'La resoluci�n pac�fica de conflictos'),
(13, 5, 'La importancia del trabajo en equipo en la comunidad'),
(13, 5, 'La lucha contra la discriminaci�n y el racismo'),
-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 5, 'Desarrollo de habilidades motrices y coordinaci�n'),
(14, 5, 'La importancia de la actividad f�sica en el bienestar general'),
(14, 5, 'Los deportes colectivos e individuales'),
(14, 5, 'Las reglas y estrategias en diferentes deportes'),
(14, 5, 'La higiene y la seguridad en la pr�ctica deportiva'),
(14, 5, 'El trabajo en equipo y el respeto en los deportes'),
(14, 5, 'Los beneficios de una dieta balanceada para los deportistas'),
(14, 5, 'El calentamiento y la prevenci�n de lesiones'),
(14, 5, 'La importancia de la flexibilidad y el estiramiento'),
(14, 5, 'La pr�ctica de deportes al aire libre y la integraci�n social'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 5, 'El arte visual: pintura, escultura y dise�o'),
(15, 5, 'La m�sica y su influencia en las emociones'),
(15, 5, 'La danza y su relaci�n con el movimiento corporal'),
(15, 5, 'La creatividad y la expresi�n art�stica'),
(15, 5, 'El arte en la historia: el arte renacentista, barroco y contempor�neo'),
(15, 5, 'La arquitectura y el dise�o urbano'),
(15, 5, 'Los elementos visuales en el arte: color, forma, textura'),
(15, 5, 'La importancia del arte en las culturas'),
(15, 5, 'Creaci�n y presentaci�n de obras art�sticas'),
(15, 5, 'El arte como medio de comunicaci�n y reflexi�n social'),
-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 5, 'Vocabulario relacionado con las actividades diarias'),
(16, 5, 'Las expresiones de tiempo y lugar en ingl�s'),
(16, 5, 'El uso de verbos modales en diferentes contextos'),
(16, 5, 'La estructura de las oraciones afirmativas, negativas e interrogativas'),
(16, 5, 'El uso de los tiempos verbales en situaciones cotidianas'),
(16, 5, 'El vocabulario de la casa, la escuela y el trabajo'),
(16, 5, 'La descripci�n de lugares y personas en ingl�s'),
(16, 5, 'Las preposiciones de lugar y tiempo en ingl�s'),
(16, 5, 'Las frases �tiles para dar y recibir instrucciones'),
(16, 5, 'Conversaciones cotidianas en ingl�s'),
-- Insertar Temas para Religi�n (id_rama = 17)
(17, 5, 'Los valores cristianos: amor, paz y solidaridad'),
(17, 5, 'La ense�anza de Jes�s y sus par�bolas'),
(17, 5, 'La oraci�n y el significado en la vida cristiana'),
(17, 5, 'Los sacramentos y su importancia en la vida religiosa'),
(17, 5, 'El respeto por la vida y la creaci�n de Dios'),
(17, 5, 'La Iglesia y sus diferentes funciones en la comunidad'),
(17, 5, 'La �tica cristiana en la vida diaria'),
(17, 5, 'El concepto de pecado y perd�n'),
(17, 5, 'La importancia de la comunidad cristiana'),
(17, 5, 'La importancia de las fiestas religiosas en el calendario cristiano'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 5, 'La importancia de la autoestima y el autoconocimiento'),
(19, 5, 'La resoluci�n de conflictos y toma de decisiones'),
(19, 5, 'El respeto por uno mismo y los dem�s'),
(19, 5, 'La gesti�n del tiempo y organizaci�n personal'),
(19, 5, 'La participaci�n en actividades de grupo'),
(19, 5, 'La importancia de la comunicaci�n efectiva'),
(19, 5, 'La prevenci�n del acoso escolar'),
(19, 5, 'La orientaci�n vocacional y el descubrimiento de intereses'),
(19, 5, 'La prevenci�n de conductas de riesgo y salud mental'),
(19, 5, 'El trabajo de equipo y la cooperaci�n en la escuela'),

--6� PRIMARIA
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 6, 'Teorema de Pit�goras y su aplicaci�n en la resoluci�n de problemas'),
(2, 6, '�ngulos internos y externos en figuras geom�tricas'),
(2, 6, 'Per�metros y �reas de figuras geom�tricas complejas'),
(2, 6, 'Volumen de cuerpos tridimensionales: esferas, conos, cilindros'),
(2, 6, 'Simetr�a y transformaciones geom�tricas'),
(2, 6, 'Construcci�n de figuras con comp�s y regla'),
(2, 6, 'Uso de coordenadas cartesianas para ubicar puntos en el plano'),
(2, 6, 'C�lculo de �reas y vol�menes en situaciones cotidianas'),
(2, 6, 'El uso de las propiedades de los tri�ngulos para resolver problemas'),
(2, 6, 'La geometr�a proyectiva y su aplicaci�n en la vida diaria'),
-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 6, 'Operaciones con decimales y fracciones'),
(3, 6, 'Porcentajes y su aplicaci�n en problemas de descuento y aumento'),
(3, 6, 'C�lculo de la media, mediana y moda en un conjunto de datos'),
(3, 6, 'Proporciones y reglas de tres compuestas'),
(3, 6, 'C�lculo de �reas y per�metros en problemas de geometr�a'),
(3, 6, 'Operaciones con n�meros enteros, fracciones y decimales'),
(3, 6, 'El uso de la calculadora cient�fica para resolver problemas complejos'),
(3, 6, 'Conversi�n entre unidades de medida: longitud, masa, tiempo, etc.'),
(3, 6, 'El an�lisis de datos estad�sticos en la vida cotidiana'),
(3, 6, 'Aplicaci�n de fracciones y porcentajes en finanzas personales'),
-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 6, 'Resoluci�n de problemas de l�gica matem�tica'),
(5, 6, 'Uso de estrategias de razonamiento inductivo y deductivo'),
(5, 6, 'Desarrollo de habilidades en el an�lisis de patrones num�ricos'),
(5, 6, 'El razonamiento abstracto y su aplicaci�n en la resoluci�n de problemas complejos'),
(5, 6, 'Combinaciones y permutaciones en la resoluci�n de problemas de probabilidad'),
(5, 6, 'El uso de diagramas de Venn para resolver problemas de l�gica'),
(5, 6, 'El an�lisis de relaciones num�ricas en diferentes contextos'),
(5, 6, 'La resoluci�n de acertijos y problemas matem�ticos desafiantes'),
(5, 6, 'La importancia del razonamiento en el desarrollo de soluciones creativas'),
(5, 6, 'Aplicaci�n del razonamiento l�gico en la resoluci�n de ecuaciones complejas'),
-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 6, 'Comprensi�n lectora de textos expositivos y cient�ficos'),
(6, 6, 'An�lisis de textos narrativos y descriptivos'),
(6, 6, 'Redacci�n de textos argumentativos y persuasivos'),
(6, 6, 'Uso adecuado de la gram�tica y ortograf�a en textos escritos'),
(6, 6, 'El uso de conectores l�gicos y temporales en la escritura'),
(6, 6, 'Desarrollo de la expresi�n escrita a trav�s de ensayos y cartas formales'),
(6, 6, 'Lectura cr�tica de textos literarios, hist�ricos y cient�ficos'),
(6, 6, 'El an�lisis de las estructuras narrativas y su impacto en la audiencia'),
(6, 6, 'El desarrollo del vocabulario mediante la lectura y el uso de diccionarios'),
(6, 6, 'La escritura creativa y la creaci�n de cuentos, relatos y poes�as'),
-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 6, 'El an�lisis de sin�nimos, ant�nimos y hom�nimos en contexto'),
(8, 6, 'La comprensi�n y resoluci�n de analog�as verbales'),
(8, 6, 'La estructura de las oraciones y su impacto en el significado'),
(8, 6, 'El uso adecuado de las figuras ret�ricas en textos literarios'),
(8, 6, 'La interpretaci�n de textos argumentativos y persuasivos'),
(8, 6, 'El uso de los tiempos verbales en la narraci�n y descripci�n'),
(8, 6, 'El desarrollo de la fluidez verbal mediante la lectura y la pr�ctica'),
(8, 6, 'La formaci�n de oraciones complejas y su an�lisis'),
(8, 6, 'La capacidad de sintetizar informaci�n y transmitirla de manera clara'),
(8, 6, 'Desarrollo de habilidades comunicativas en debates y presentaciones'),
-- Insertar Temas para CTA (id_rama = 9)
(9, 6, 'El sistema circulatorio humano y su funcionamiento'),
(9, 6, 'Los sistemas endocrino, nervioso y excretor en los seres humanos'),
(9, 6, 'La biotecnolog�a y sus aplicaciones en la medicina y la agricultura'),
(9, 6, 'La gen�tica, el ADN y las bases de la herencia'),
(9, 6, 'La ecolog�a y la interacci�n entre los seres vivos y su entorno'),
(9, 6, 'El proceso de fotos�ntesis en las plantas'),
(9, 6, 'El ciclo del nitr�geno y su importancia en los ecosistemas'),
(9, 6, 'La clasificaci�n de los seres vivos seg�n su caracter�sticas gen�ticas'),
(9, 6, 'La evoluci�n de las especies y la teor�a de Darwin'),
(9, 6, 'Los seres vivos y su adaptaci�n a diferentes ambientes'),
-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 6, 'El concepto de justicia y derechos humanos'),
(13, 6, 'La democracia y sus principios fundamentales'),
(13, 6, 'La participaci�n ciudadana en la toma de decisiones'),
(13, 6, 'La igualdad de g�nero y el respeto en la sociedad'),
(13, 6, 'La lucha contra la corrupci�n y la importancia de la transparencia'),
(13, 6, 'La importancia de los valores �ticos en la convivencia'),
(13, 6, 'La diversidad cultural y el respeto por otras culturas'),
(13, 6, 'El impacto de las decisiones individuales en la sociedad'),
(13, 6, 'Los derechos de los ni�os y su protecci�n'),
(13, 6, 'La protecci�n del medio ambiente como responsabilidad social'),
-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 6, 'La importancia de la salud f�sica y mental'),
(14, 6, 'El trabajo en equipo y la cooperaci�n en deportes'),
(14, 6, 'El cuidado del cuerpo mediante la actividad f�sica regular'),
(14, 6, 'Las habilidades motrices y su desarrollo en el deporte'),
(14, 6, 'El deporte como forma de expresi�n y comunicaci�n'),
(14, 6, 'La nutrici�n adecuada para el rendimiento f�sico'),
(14, 6, 'La prevenci�n de lesiones deportivas'),
(14, 6, 'El ejercicio como medio de prevenci�n de enfermedades'),
(14, 6, 'Los beneficios de la actividad f�sica en la salud mental'),
(14, 6, 'Las reglas y el fair play en el deporte'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 6, 'La historia del arte en diferentes �pocas'),
(15, 6, 'La pintura: t�cnicas y estilos'),
(15, 6, 'La escultura y su expresi�n en diversas culturas'),
(15, 6, 'La arquitectura: su evoluci�n a trav�s del tiempo'),
(15, 6, 'El arte contempor�neo y sus caracter�sticas'),
(15, 6, 'La m�sica como forma de expresi�n cultural'),
(15, 6, 'La danza y su relaci�n con el movimiento humano'),
(15, 6, 'El cine como arte y medio de comunicaci�n'),
(15, 6, 'La creatividad en el dise�o gr�fico y digital'),
(15, 6, 'La integraci�n del arte en la vida cotidiana'),
-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 6, 'La comprensi�n de textos en ingl�s: narrativos y descriptivos'),
(16, 6, 'Las estructuras verbales en ingl�s: presente, pasado y futuro'),
(16, 6, 'La pronunciaci�n y entonaci�n en ingl�s'),
(16, 6, 'El vocabulario relacionado con temas de la vida cotidiana'),
(16, 6, 'El uso de preposiciones y adverbios de lugar y tiempo'),
(16, 6, 'Las diferencias entre ingl�s formal e informal'),
(16, 6, 'La creaci�n y narraci�n de historias en ingl�s'),
(16, 6, 'La pr�ctica de habilidades de conversaci�n en situaciones cotidianas'),
(16, 6, 'La expresi�n escrita en ingl�s: cartas, correos electr�nicos y ensayos'),
(16, 6, 'El uso de los tiempos verbales en la narraci�n de eventos pasados'),
-- Insertar Temas para Religi�n (id_rama = 17)
(17, 6, 'La vida y ense�anzas de Jesucristo'),
(17, 6, 'El estudio de los Evangelios y otros libros sagrados'),
(17, 6, 'Los valores cristianos: la paz, la solidaridad y el respeto'),
(17, 6, 'La importancia de la oraci�n en la vida cristiana'),
(17, 6, 'La influencia del cristianismo en la cultura y el arte'),
(17, 6, 'La historia de la Iglesia y su rol en la sociedad'),
(17, 6, 'La �tica cristiana y la toma de decisiones morales'),
(17, 6, 'La Navidad y la Semana Santa como fechas religiosas significativas'),
(17, 6, 'La relaci�n entre religi�n y ciencia'),
(17, 6, 'Los valores universales y la convivencia pac�fica'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 6, 'La gesti�n de emociones y la inteligencia emocional'),
(19, 6, 'La importancia de la autoestima en el desarrollo personal'),
(19, 6, 'La resoluci�n de conflictos en el entorno escolar'),
(19, 6, 'La importancia de las metas y objetivos personales'),
(19, 6, 'El trabajo en equipo y la colaboraci�n en la escuela'),
(19, 6, 'El manejo del tiempo y la organizaci�n personal'),
(19, 6, 'La prevenci�n del acoso escolar y la violencia'),
(19, 6, 'La importancia de la comunicaci�n efectiva'),
(19, 6, 'El fomento del respeto y la tolerancia en el aula'),
(19, 6, 'La orientaci�n vocacional y el descubrimiento de intereses');

--1� SECUNDARIA
-- Insertar Temas para Matem�tica - �lgebra (id_rama = 1)
INSERT INTO TemasCurso (id_rama, id_grado , nombre) VALUES
(1, 7, 'Ecuaciones lineales de primer grado con una inc�gnita'),
(1, 7, 'Sistemas de ecuaciones lineales con dos inc�gnitas'),
(1, 7, 'Factorizaci�n de expresiones algebraicas'),
(1, 7, 'Operaciones con polinomios: adici�n, sustracci�n, multiplicaci�n y divisi�n'),
(1, 7, 'Identidades algebraicas y su uso en la resoluci�n de problemas'),
(1, 7, 'Ecuaciones cuadr�ticas y su resoluci�n por factorizaci�n, f�rmula general y completando el cuadrado'),
(1, 7, 'Expresiones algebraicas con fracciones y exponentes'),
(1, 7, 'Propiedades de los exponentes y las ra�ces cuadradas'),
(1, 7, 'Aplicaci�n de �lgebra en situaciones cotidianas y problemas pr�cticos'),
(1, 7, 'La resoluci�n de ecuaciones con fracciones y decimales'),

-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 7, 'Propiedades de los �ngulos en pol�gonos y su clasificaci�n'),
(2, 7, 'Teorema de Pit�goras y sus aplicaciones en la geometr�a euclidiana'),
(2, 7, 'Per�metros, �reas y vol�menes de figuras geom�tricas planas y s�lidas'),
(2, 7, 'La similitud de tri�ngulos y otras figuras geom�tricas'),
(2, 7, 'Transformaciones geom�tricas: traslaciones, rotaciones, simetr�as'),
(2, 7, 'El c�lculo de �reas de figuras irregulares y compuestas'),
(2, 7, 'Uso de coordenadas cartesianas para ubicar puntos y representar figuras'),
(2, 7, 'El concepto de la circunferencia y el c�rculo, y sus propiedades'),
(2, 7, 'C�lculo de �reas y per�metros en figuras con c�rculos y elipses'),
(2, 7, 'La geometr�a tridimensional: vol�menes y �reas superficiales de s�lidos'),

-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 7, 'Operaciones con fracciones, decimales y porcentajes'),
(3, 7, 'El c�lculo de tasas de inter�s simples y compuestas'),
(3, 7, 'Proporciones y su aplicaci�n en situaciones reales'),
(3, 7, 'C�lculo de porcentajes en descuentos, aumentos y problemas financieros'),
(3, 7, 'C�lculo de promedios, mediana, moda y rango de un conjunto de datos'),
(3, 7, 'Resoluci�n de problemas de combinaciones y permutaciones'),
(3, 7, 'Aplicaciones de fracciones y porcentajes en situaciones cotidianas'),
(3, 7, 'El uso de la regla de tres en problemas de proporcionalidad'),
(3, 7, 'Operaciones con n�meros enteros: suma, resta, multiplicaci�n y divisi�n'),
(3, 7, 'Conversi�n entre diferentes unidades de medida y su aplicaci�n en problemas de la vida diaria'),

-- Insertar Temas para Matem�tica - Trigonometr�a (id_rama = 4)
(4, 7, 'Estudio de las razones trigonom�tricas: seno, coseno y tangente'),
(4, 7, 'El c�rculo unitario y sus aplicaciones en trigonometr�a'),
(4, 7, 'Resoluci�n de tri�ngulos rect�ngulos usando trigonometr�a'),
(4, 7, 'Aplicaciones de las funciones trigonom�tricas en la vida cotidiana'),
(4, 7, 'Teorema de Pit�goras en el contexto de la trigonometr�a'),
(4, 7, 'C�lculo de distancias y alturas utilizando trigonometr�a'),
(4, 7, 'Las identidades trigonom�tricas fundamentales'),
(4, 7, 'El uso de la ley de senos y cosenos en tri�ngulos no rect�ngulos'),
(4, 7, 'Aplicaciones de la trigonometr�a en la f�sica y la arquitectura'),
(4, 7, 'Uso de la trigonometr�a para resolver problemas de navegaci�n'),

-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 7, 'Resoluci�n de problemas de l�gica deductiva e inductiva'),
(5, 7, 'El uso de diagramas de Venn para resolver problemas de conjuntos'),
(5, 7, 'An�lisis de secuencias y patrones num�ricos'),
(5, 7, 'El principio de inducci�n matem�tica y su aplicaci�n en la demostraci�n de teoremas'),
(5, 7, 'Resoluci�n de acertijos matem�ticos y problemas complejos'),
(5, 7, 'Razonamiento probabil�stico: c�lculo de probabilidades en eventos simples y compuestos'),
(5, 7, 'El an�lisis combinatorio y sus aplicaciones en la resoluci�n de problemas'),
(5, 7, 'El desarrollo del razonamiento l�gico a trav�s de la resoluci�n de problemas abstractos'),
(5, 7, 'Estudio de las combinaciones y permutaciones en situaciones reales'),
(5, 7, 'Uso de �lgebra y geometr�a en la resoluci�n de problemas matem�ticos complejos'),

-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 7, 'Comprensi�n y an�lisis de textos narrativos, expositivos y descriptivos'),
(6, 7, 'Redacci�n de ensayos y textos argumentativos con estructura coherente'),
(6, 7, 'Uso adecuado de la gram�tica, ortograf�a y puntuaci�n en la redacci�n'),
(6, 7, 'T�cnicas de expresi�n oral y escrita en presentaciones y debates'),
(6, 7, 'Desarrollo de la argumentaci�n l�gica en la escritura de textos'),
(6, 7, 'Comprensi�n de textos cient�ficos y t�cnicos en el contexto escolar'),
(6, 7, 'El uso de conectores textuales para organizar el discurso escrito'),
(6, 7, 'La lectura cr�tica y la evaluaci�n de textos de diferentes g�neros literarios'),
(6, 7, 'La elaboraci�n de res�menes y s�ntesis de textos informativos'),
(6, 7, 'La expresi�n escrita creativa: relatos, cartas, art�culos y cr�nicas'),

-- Insertar Temas para Comunicaci�n - Literatura (id_rama = 7)
(7, 7, 'Estudio de los g�neros literarios: narrativa, poes�a, teatro y ensayo'),
(7, 7, 'La literatura como reflejo de la sociedad y los valores culturales'),
(7, 7, 'An�lisis de textos literarios cl�sicos y contempor�neos'),
(7, 7, 'El estudio de autores representativos de la literatura universal'),
(7, 7, 'La narrativa y sus recursos: personajes, trama, espacio y tiempo'),
(7, 7, 'El simbolismo y las met�foras en la poes�a'),
(7, 7, 'El estudio del teatro: dramaturgia, puesta en escena y personajes'),
(7, 7, 'El ensayo como g�nero literario: estructura y caracter�sticas'),
(7, 7, 'La literatura latinoamericana y su influencia en el mundo'),
(7, 7, 'La relaci�n entre la literatura y otros medios de comunicaci�n, como el cine'),

-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 7, 'La comprensi�n de analog�as verbales'),
(8, 7, 'La interpretaci�n de textos argumentativos y expositivos'),
(8, 7, 'El an�lisis de sin�nimos y ant�nimos en diferentes contextos'),
(8, 7, 'La identificaci�n de las principales ideas en un texto y su relaci�n con el contexto'),
(8, 7, 'La resoluci�n de problemas de l�gica verbal'),
(8, 7, 'El uso de la estructura gramatical para mejorar la comprensi�n lectora'),
(8, 7, 'La construcci�n de oraciones complejas con coherencia y cohesi�n'),
(8, 7, 'El an�lisis de las t�cnicas ret�ricas en discursos y textos persuasivos'),
(8, 7, 'El desarrollo de habilidades en la comprensi�n de textos orales'),
(8, 7, 'La interpretaci�n de textos literarios mediante el an�lisis de sus recursos estil�sticos'),

-- Insertar Temas para Biolog�a (id_rama = 10)
(10, 7, 'El estudio de los sistemas vivos: c�lula, tejidos y �rganos'),
(10, 7, 'La gen�tica y la transmisi�n de caracter�sticas hereditarias'),
(10, 7, 'El sistema nervioso y su relaci�n con la respuesta del organismo'),
(10, 7, 'La biodiversidad: clasificaci�n de los seres vivos y su funci�n ecol�gica'),
(10, 7, 'La nutrici�n y la digesti�n en los seres humanos'),
(10, 7, 'La reproducci�n sexual y asexual en plantas y animales'),
(10, 7, 'El estudio de los ecosistemas y las cadenas tr�ficas'),
(10, 7, 'Las enfermedades infecciosas y su prevenci�n'),
(10, 7, 'La biotecnolog�a y sus aplicaciones en la salud y la industria'),
(10, 7, 'El estudio de los ciclos biogeoqu�micos: carbono, nitr�geno, etc.'),

-- Insertar Temas para Qu�mica (id_rama = 11)
(11, 7, 'La estructura at�mica y la tabla peri�dica de los elementos'),
(11, 7, 'Los enlaces qu�micos: i�nico, covalente y met�lico'),
(11, 7, 'Las reacciones qu�micas y su clasificaci�n: exerg�nicas, endot�rmicas'),
(11, 7, 'La ley de conservaci�n de la masa y los balances de materia'),
(11, 7, 'La qu�mica org�nica: los hidrocarburos y sus derivados'),
(11, 7, 'El estudio de los �cidos, bases y sales en soluciones acuosas'),
(11, 7, 'La qu�mica en la vida cotidiana: alimentos, productos de limpieza, medicamentos'),
(11, 7, 'Las propiedades f�sicas y qu�micas de los materiales'),
(11, 7, 'La qu�mica de los gases y su comportamiento bajo distintas condiciones'),
(11, 7, 'El an�lisis y uso de indicadores qu�micos en la determinaci�n del pH'),

-- Insertar Temas para F�sica (id_rama = 12)
(12, 7, 'El estudio de las leyes del movimiento de Newton'),
(12, 7, 'La energ�a cin�tica y potencial en diferentes sistemas'),
(12, 7, 'El trabajo y la potencia en la f�sica cl�sica'),
(12, 7, 'La ley de la conservaci�n de la energ�a'),
(12, 7, 'Las ondas sonoras y la propagaci�n del sonido'),
(12, 7, 'La �ptica: reflexi�n, refracci�n y lentes'),
(12, 7, 'El estudio de la electricidad: corriente, voltaje y resistencia'),
(12, 7, 'El magnetismo y su relaci�n con la electricidad'),
(12, 7, 'La termodin�mica y los procesos de transferencia de calor'),
(12, 7, 'El uso de la f�sica en la tecnolog�a y los avances cient�ficos'),

-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 7, 'Los derechos humanos y su importancia en la sociedad actual'),
(13, 7, 'El concepto de ciudadan�a y sus responsabilidades'),
(13, 7, 'El sistema pol�tico y electoral en el pa�s'),
(13, 7, 'Los valores democr�ticos y la participaci�n activa en la comunidad'),
(13, 7, 'El respeto a la diversidad cultural y de g�nero'),
(13, 7, 'La lucha contra la corrupci�n y la importancia de la �tica p�blica'),
(13, 7, 'Los derechos y deberes de los adolescentes en la sociedad'),
(13, 7, 'La educaci�n en valores y su impacto en la convivencia pac�fica'),
(13, 7, 'La resoluci�n de conflictos a trav�s del di�logo y el consenso'),
(13, 7, 'El rol de las organizaciones no gubernamentales en la sociedad'),

-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 7, 'Los beneficios del ejercicio f�sico en la salud integral'),
(14, 7, 'Las t�cnicas b�sicas de diversos deportes colectivos e individuales'),
(14, 7, 'La importancia de la actividad f�sica para la prevenci�n de enfermedades'),
(14, 7, 'La alimentaci�n saludable para el rendimiento deportivo'),
(14, 7, 'Las habilidades motoras y su desarrollo en actividades deportivas'),
(14, 7, 'La cooperaci�n y el trabajo en equipo en actividades f�sicas'),
(14, 7, 'La pr�ctica de deportes de resistencia y velocidad'),
(14, 7, 'La seguridad y prevenci�n de lesiones en el deporte'),
(14, 7, 'La importancia de la preparaci�n f�sica en el �mbito competitivo'),
(14, 7, 'El rol de la actividad f�sica en la mejora de la salud mental'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 7, 'La historia del arte desde la Edad Media hasta el Renacimiento'),
(15, 7, 'Las t�cnicas art�sticas: pintura, escultura, grabado y arquitectura'),
(15, 7, 'El an�lisis y la interpretaci�n de obras de arte contempor�neo'),
(15, 7, 'El arte en el cine y la fotograf�a'),
(15, 7, 'La m�sica como expresi�n art�stica y cultural'),
(15, 7, 'La danza y el teatro como formas de expresi�n emocional'),
(15, 7, 'El uso de medios digitales en la creaci�n de arte moderno'),
(15, 7, 'El dise�o gr�fico y su aplicaci�n en los medios de comunicaci�n'),
(15, 7, 'La influencia del arte en la sociedad y en la identidad cultural'),
(15, 7, 'El arte y la creatividad en la vida cotidiana'),

-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 7, 'Desarrollo de habilidades en comprensi�n lectora en ingl�s'),
(16, 7, 'La gram�tica inglesa: tiempos verbales, preposiciones y modismos'),
(16, 7, 'La escritura en ingl�s: redacci�n de cartas, correos electr�nicos y ensayos'),
(16, 7, 'La pronunciaci�n y entonaci�n en el idioma ingl�s'),
(16, 7, 'La comprensi�n de textos literarios en ingl�s: cuentos, novelas y poemas'),
(16, 7, 'El uso del ingl�s en situaciones cotidianas: compras, viajes, entrevistas'),
(16, 7, 'La cultura anglosajona y su influencia en el mundo moderno'),
(16, 7, 'La interpretaci�n y an�lisis de pel�culas y series en ingl�s'),
(16, 7, 'El aprendizaje de vocabulario espec�fico para �reas profesionales'),
(16, 7, 'El ingl�s como herramienta para la comunicaci�n internacional'),

-- Insertar Temas para Religi�n (id_rama = 17)
(17, 7, 'El estudio de las principales religiones del mundo'),
(17, 7, 'La �tica y los valores cristianos en la sociedad moderna'),
(17, 7, 'La historia del cristianismo: origen, evoluci�n y creencias fundamentales'),
(17, 7, 'El rol de la religi�n en la paz y la convivencia mundial'),
(17, 7, 'El estudio de las escrituras sagradas de las principales religiones'),
(17, 7, 'La influencia del cristianismo en el arte, la m�sica y la cultura'),
(17, 7, 'La pr�ctica religiosa en el mundo actual'),
(17, 7, 'Los valores del respeto, la tolerancia y el amor al pr�jimo'),
(17, 7, 'La ense�anza moral de las religiones y su aplicaci�n en la vida cotidiana'),
(17, 7, 'La importancia de la espiritualidad en la vida humana'),

-- Insertar Temas para Educaci�n para el Trabajo (id_rama = 18)
(18, 7, 'Las habilidades y competencias necesarias en el mundo laboral'),
(18, 7, 'La orientaci�n vocacional y el desarrollo profesional'),
(18, 7, 'El desarrollo de proyectos y trabajo en equipo'),
(18, 7, 'La �tica en el trabajo y la responsabilidad social'),
(18, 7, 'La importancia de la educaci�n continua en el �mbito laboral'),
(18, 7, 'El emprendimiento y la creaci�n de peque�as empresas'),
(18, 7, 'La administraci�n del tiempo y la gesti�n de proyectos'),
(18, 7, 'El uso de las tecnolog�as en el mundo del trabajo'),
(18, 7, 'El concepto de trabajo colaborativo y su aplicaci�n en el entorno laboral'),
(18, 7, 'La importancia de la comunicaci�n efectiva en el trabajo'),

-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 7, 'La inteligencia emocional y la gesti�n de las emociones'),
(19, 7, 'La importancia de la autoestima y el autocuidado'),
(19, 7, 'El trabajo en equipo y la resoluci�n de conflictos'),
(19, 7, 'La prevenci�n del acoso escolar y la construcci�n de ambientes saludables'),
(19, 7, 'La orientaci�n profesional y la toma de decisiones sobre estudios y carrera'),
(19, 7, 'El desarrollo de habilidades de liderazgo y toma de decisiones'),
(19, 7, 'La importancia del respeto y la tolerancia en las relaciones interpersonales'),
(19, 7, 'El fomento de la responsabilidad social y el compromiso c�vico'),
(19, 7, 'La gesti�n del tiempo y la organizaci�n personal en la vida escolar'),
(19, 7, 'La prevenci�n de problemas emocionales y de salud mental en los adolescentes'),

--2� SECUNDARIA
-- Insertar Temas para Matem�tica - �lgebra (id_rama = 1)
(1, 8, 'Operaciones con polinomios y fracciones algebraicas'),
(1, 8, 'Ecuaciones cuadr�ticas y sus aplicaciones'),
(1, 8, 'Desigualdades y su resoluci�n en el conjunto de los n�meros reales'),
(1, 8, 'Ecuaciones de segundo grado: resoluci�n por factorizaci�n y f�rmula general'),
(1, 8, 'Aplicaci�n de sistemas de ecuaciones lineales en problemas de la vida cotidiana'),
(1, 8, 'Estudio de funciones lineales y cuadr�ticas'),
(1, 8, 'El concepto de ra�z de una ecuaci�n y su interpretaci�n gr�fica'),
(1, 8, 'Factorizaci�n de expresiones algebraicas y su uso en la resoluci�n de ecuaciones'),
(1, 8, 'Polinomios y su representaci�n gr�fica'),
(1, 8, 'Relaci�n entre los coeficientes y las ra�ces de una ecuaci�n cuadr�tica'),
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 8, 'Estudio de las propiedades de los tri�ngulos y cuadril�teros'),
(2, 8, 'El c�lculo de �reas y vol�menes de figuras tridimensionales'),
(2, 8, 'C�lculo de per�metros y �reas de c�rculos, elipses y otras figuras geom�tricas'),
(2, 8, 'Las propiedades de los �ngulos internos y externos en pol�gonos'),
(2, 8, 'La aplicaci�n del teorema de Pit�goras en la resoluci�n de problemas'),
(2, 8, 'Transformaciones geom�tricas: traslaciones, rotaciones y reflexiones'),
(2, 8, 'El c�lculo de �reas de figuras complejas utilizando integrales y sumas de �reas'),
(2, 8, 'Uso de coordenadas cartesianas para representar figuras en el plano'),
(2, 8, 'C�lculo de �reas y vol�menes de s�lidos geom�tricos con f�rmulas'),
(2, 8, 'El concepto de �ngulos y su aplicaci�n en la resoluci�n de problemas de geometr�a'),
-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 8, 'C�lculo de porcentajes: aumento, descuento y problemas financieros'),
(3, 8, 'Las propiedades de los n�meros racionales e irracionales'),
(3, 8, 'Operaciones con fracciones y decimales'),
(3, 8, 'La resoluci�n de problemas de proporcionalidad directa e inversa'),
(3, 8, 'Los m�todos de aproximaci�n de n�meros y su uso en c�lculos matem�ticos'),
(3, 8, 'Las secuencias num�ricas y su aplicaci�n en situaciones cotidianas'),
(3, 8, 'El uso de la regla de tres en problemas pr�cticos de proporcionalidad'),
(3, 8, 'Estudio de las tasas de crecimiento y decrecimiento en problemas financieros'),
(3, 8, 'La aritm�tica en problemas relacionados con la estad�stica y probabilidades'),
(3, 8, 'La conversi�n entre unidades de medida en situaciones pr�cticas'),
-- Insertar Temas para Matem�tica - Trigonometr�a (id_rama = 4)
(4, 8, 'El uso de la trigonometr�a para resolver tri�ngulos no rect�ngulos'),
(4, 8, 'Aplicaci�n de las identidades trigonom�tricas en la resoluci�n de ecuaciones'),
(4, 8, 'El estudio de las funciones trigonom�tricas: seno, coseno, tangente'),
(4, 8, 'El c�lculo de �ngulos en situaciones de la vida real usando trigonometr�a'),
(4, 8, 'La ley de senos y cosenos en la resoluci�n de tri�ngulos generales'),
(4, 8, 'El c�rculo unitario y su relaci�n con las funciones trigonom�tricas'),
(4, 8, 'Transformaciones trigonom�tricas: ampliaci�n, reducci�n, desplazamiento'),
(4, 8, 'La resoluci�n de problemas de navegaci�n utilizando trigonometr�a'),
(4, 8, 'El c�lculo de distancias y alturas mediante la trigonometr�a'),
(4, 8, 'Aplicaciones de la trigonometr�a en el estudio del sonido y la luz'),
-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 8, 'El razonamiento inductivo y deductivo en la soluci�n de problemas'),
(5, 8, 'El an�lisis de problemas utilizando el principio de inducci�n matem�tica'),
(5, 8, 'La resoluci�n de problemas de l�gica con diagramas de Venn'),
(5, 8, 'An�lisis de secuencias y patrones algebraicos y geom�tricos'),
(5, 8, 'El c�lculo de probabilidades en experimentos sencillos y compuestos'),
(5, 8, 'El uso de combinaciones y permutaciones en la resoluci�n de problemas'),
(5, 8, 'An�lisis de proposiciones l�gicas y su relaci�n con la teor�a de conjuntos'),
(5, 8, 'Estudio de los diferentes tipos de funciones y su interpretaci�n'),
(5, 8, 'Desarrollo de estrategias de resoluci�n de problemas complejos'),
(5, 8, 'La soluci�n de ecuaciones y sistemas de ecuaciones usando t�cnicas algebraicas y gr�ficas'),
-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 8, 'El an�lisis de textos argumentativos y expositivos'),
(6, 8, 'La redacci�n de ensayos, art�culos y cartas formales e informales'),
(6, 8, 'La comprensi�n de textos cient�ficos y literarios'),
(6, 8, 'El uso adecuado de la gram�tica y la ortograf�a en la escritura'),
(6, 8, 'El desarrollo de habilidades de expresi�n oral en debates y exposiciones'),
(6, 8, 'La estructura de un texto narrativo: personajes, trama y ambiente'),
(6, 8, 'La interpretaci�n cr�tica de textos literarios y su relaci�n con la sociedad'),
(6, 8, 'El uso de conectores textuales para mejorar la coherencia en la escritura'),
(6, 8, 'La creaci�n de res�menes y esquemas para una lectura eficiente'),
(6, 8, 'La pr�ctica de la escritura creativa y la narraci�n de historias'),
-- Insertar Temas para Comunicaci�n - Literatura (id_rama = 7)
(7, 8, 'El estudio de las principales corrientes literarias de la Edad Media a la actualidad'),
(7, 8, 'El an�lisis de los g�neros literarios: novela, poes�a, teatro, ensayo'),
(7, 8, 'El estudio de obras literarias fundamentales en la literatura universal'),
(7, 8, 'El an�lisis de los personajes y sus relaciones en las obras literarias'),
(7, 8, 'La influencia del contexto hist�rico en la literatura'),
(7, 8, 'El estudio de la poes�a: m�trica, ritmo y figuras literarias'),
(7, 8, 'El estudio de la narrativa y sus recursos literarios: narrativa en primera y tercera persona'),
(7, 8, 'El teatro y su estructura: actos, escenas, personajes y di�logo'),
(7, 8, 'La literatura latinoamericana y su influencia en la literatura mundial'),
(7, 8, 'La literatura y su relaci�n con otros medios de comunicaci�n como el cine'),
-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 8, 'La interpretaci�n de analog�as verbales y sem�nticas'),
(8, 8, 'La identificaci�n de ideas principales y secundarias en un texto'),
(8, 8, 'El an�lisis de textos argumentativos y su estructura l�gica'),
(8, 8, 'La comprensi�n de met�foras, analog�as y figuras literarias en textos verbales'),
(8, 8, 'El uso de sin�nimos, ant�nimos y par�nimos en la escritura'),
(8, 8, 'La resoluci�n de problemas de l�gica verbal con deducci�n de conclusiones'),
(8, 8, 'La estructura de oraciones complejas y su relaci�n en el contexto del discurso'),
(8, 8, 'La evaluaci�n de la coherencia y cohesi�n de los textos escritos'),
(8, 8, 'El uso de la ret�rica en discursos y textos persuasivos'),
(8, 8, 'El an�lisis de la organizaci�n de un texto y su conexi�n entre p�rrafos'),
-- Insertar Temas para Biolog�a (id_rama = 10)
(10, 8, 'La gen�tica molecular: ADN, ARN y la codificaci�n gen�tica'),
(10, 8, 'La teor�a de la evoluci�n y la selecci�n natural'),
(10, 8, 'La biotecnolog�a y su aplicaci�n en la gen�tica y la salud'),
(10, 8, 'Los sistemas de �rganos en el cuerpo humano y su funcionamiento'),
(10, 8, 'El estudio de los procesos metab�licos en seres vivos'),
(10, 8, 'Las interacciones ecol�gicas: depredaci�n, simbiosis, competencia'),
(10, 8, 'El ciclo de vida de los seres vivos y su importancia en los ecosistemas'),
(10, 8, 'La c�lula: estructura y funciones celulares'),
(10, 8, 'La anatom�a humana y su relaci�n con el cuidado de la salud'),
(10, 8, 'La biodiversidad y su conservaci�n en el planeta'),
-- Insertar Temas para Qu�mica (id_rama = 11)
(11, 8, 'La estructura y propiedades de los elementos qu�micos'),
(11, 8, 'Las reacciones redox y su aplicaci�n en la industria'),
(11, 8, 'El estudio de los �cidos, bases y sales'),
(11, 8, 'La qu�mica org�nica y los compuestos derivados del carbono'),
(11, 8, 'Las leyes de los gases ideales y su comportamiento en condiciones variables'),
(11, 8, 'La disoluci�n de sustancias y sus propiedades coligativas'),
(11, 8, 'La qu�mica en los alimentos y su relaci�n con la nutrici�n'),
(11, 8, 'La qu�mica de los materiales y su uso en tecnolog�a y construcci�n'),
(11, 8, 'Las reacciones qu�micas y el balance de ecuaciones qu�micas'),
(11, 8, 'La separaci�n de mezclas: t�cnicas y aplicaciones pr�cticas'),
-- Insertar Temas para F�sica (id_rama = 12)
(12, 8, 'El estudio del movimiento rectil�neo y las leyes de Newton'),
(12, 8, 'La conservaci�n de la energ�a en sistemas mec�nicos'),
(12, 8, 'Las ondas y sus propiedades: frecuencia, amplitud y velocidad'),
(12, 8, 'La �ptica: reflexi�n, refracci�n y leyes de Snell'),
(12, 8, 'El estudio de la electricidad: corriente, voltaje, resistencia y ley de Ohm'),
(12, 8, 'El magnetismo y su relaci�n con la electricidad'),
(12, 8, 'La termodin�mica y la ley de la conservaci�n de la energ�a t�rmica'),
(12, 8, 'La mec�nica de fluidos y su aplicaci�n en la ingenier�a'),
(12, 8, 'Las m�quinas simples y su funcionamiento en la f�sica cl�sica'),
(12, 8, 'El estudio de la luz y su aplicaci�n en la tecnolog�a moderna'),
-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 8, 'Los derechos y deberes ciudadanos en una democracia'),
(13, 8, 'La importancia de la justicia y la equidad en la sociedad'),
(13, 8, 'El respeto a los derechos humanos y la participaci�n activa en la pol�tica'),
(13, 8, 'La organizaci�n y funcionamiento de las instituciones democr�ticas'),
(13, 8, 'El an�lisis de los conflictos sociales y su resoluci�n pac�fica'),
(13, 8, 'El estudio del sistema electoral y la participaci�n en elecciones'),
(13, 8, 'La importancia del respeto a las leyes y normas en la convivencia social'),
(13, 8, 'Los problemas sociales contempor�neos y su impacto en la sociedad'),
(13, 8, 'El fomento de los valores �ticos y morales en la vida cotidiana'),
(13, 8, 'La defensa de la paz, la justicia y la libertad en el mundo'),
-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 8, 'El desarrollo de habilidades motrices y deportivas'),
(14, 8, 'La importancia de la actividad f�sica en la prevenci�n de enfermedades'),
(14, 8, 'Los principios b�sicos de la higiene postural y su relaci�n con la salud'),
(14, 8, 'El fomento de la actividad f�sica en la vida cotidiana'),
(14, 8, 'La educaci�n f�sica como herramienta para la integraci�n social'),
(14, 8, 'La pr�ctica de deportes colectivos e individuales'),
(14, 8, 'La nutrici�n y el rendimiento deportivo'),
(14, 8, 'El estudio de la anatom�a y el funcionamiento del cuerpo humano en el deporte'),
(14, 8, 'La importancia del trabajo en equipo en las actividades f�sicas'),
(14, 8, 'La pr�ctica de juegos y actividades recreativas'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 8, 'El estudio de las artes visuales: pintura, escultura, fotograf�a'),
(15, 8, 'La importancia del arte en el desarrollo del pensamiento creativo'),
(15, 8, 'Las vanguardias art�sticas y su influencia en el arte contempor�neo'),
(15, 8, 'La relaci�n entre el arte y la cultura popular'),
(15, 8, 'El an�lisis y la cr�tica de obras de arte'),
(15, 8, 'La producci�n art�stica: el proceso creativo desde la concepci�n hasta la obra terminada'),
(15, 8, 'El arte como medio de comunicaci�n y reflexi�n social'),
(15, 8, 'La utilizaci�n de materiales y t�cnicas en las artes visuales'),
(15, 8, 'El arte en la historia: principales per�odos art�sticos'),
(15, 8, 'La influencia del arte en la construcci�n de la identidad cultural'),
-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 8, 'El desarrollo de habilidades para comprender textos literarios en ingl�s'),
(16, 8, 'La estructura gramatical en ingl�s: verbos, tiempos verbales y preposiciones'),
(16, 8, 'La conversaci�n en ingl�s: expresiones cotidianas y situaciones pr�cticas'),
(16, 8, 'La pr�ctica de la escritura en ingl�s: cartas, correos electr�nicos y ensayos'),
(16, 8, 'La pronunciaci�n en ingl�s y la entonaci�n adecuada'),
(16, 8, 'El estudio de la literatura en ingl�s: autores y movimientos literarios'),
(16, 8, 'El an�lisis de las culturas anglosajonas y su influencia global'),
(16, 8, 'El uso de tecnolog�as en la ense�anza del ingl�s'),
(16, 8, 'La integraci�n de actividades l�dicas en el aprendizaje del idioma ingl�s'),
(16, 8, 'El ingl�s en el �mbito acad�mico y profesional'),
-- Insertar Temas para Religi�n (id_rama = 17)
(17, 8, 'La �tica y moral cristiana en el contexto moderno'),
(17, 8, 'El estudio de la religi�n y su impacto en las sociedades contempor�neas'),
(17, 8, 'La historia de la religi�n en el mundo y su relaci�n con la cultura'),
(17, 8, 'Los principios fundamentales del cristianismo y su influencia social'),
(17, 8, 'La relaci�n entre ciencia y religi�n en el mundo contempor�neo'),
(17, 8, 'La reflexi�n �tica en torno al respeto y la dignidad humana'),
(17, 8, 'La espiritualidad y su relaci�n con el bienestar emocional y social'),
(17, 8, 'La religi�n y su papel en la soluci�n de problemas sociales'),
(17, 8, 'La pr�ctica religiosa y su influencia en la vida diaria'),
(17, 8, 'Los valores universales en las principales religiones del mundo'),
-- Insertar Temas para Educaci�n para el Trabajo (id_rama = 18)
(18, 8, 'El emprendimiento y el desarrollo de proyectos profesionales'),
(18, 8, 'La importancia de las habilidades blandas en el �mbito laboral'),
(18, 8, 'El uso de las tecnolog�as en la gesti�n de empresas y negocios'),
(18, 8, 'La �tica profesional en el mundo laboral'),
(18, 8, 'El an�lisis de los derechos laborales y la legislaci�n vigente'),
(18, 8, 'La preparaci�n para la vida profesional y el desarrollo de carrera'),
(18, 8, 'La importancia del trabajo en equipo y la comunicaci�n eficaz'),
(18, 8, 'La gesti�n financiera personal y empresarial'),
(18, 8, 'El an�lisis y evaluaci�n de mercados en el contexto de la globalizaci�n'),
(18, 8, 'La influencia de la globalizaci�n en el mercado laboral'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 8, 'La gesti�n del estr�s y la importancia de la salud mental'),
(19, 8, 'La importancia de la autoestima y la identidad personal'),
(19, 8, 'El trabajo en equipo y las habilidades para la resoluci�n de conflictos'),
(19, 8, 'El uso adecuado de las redes sociales y su impacto en la vida social'),
(19, 8, 'La orientaci�n vocacional y la planificaci�n de la carrera profesional'),
(19, 8, 'La educaci�n en valores y el respeto por la diversidad'),
(19, 8, 'El desarrollo de la empat�a y las habilidades interpersonales'),
(19, 8, 'La importancia de la participaci�n activa en la comunidad'),
(19, 8, 'El fomento de una actitud positiva ante los retos acad�micos y sociales'),
(19, 8, 'La reflexi�n sobre el futuro y el desarrollo integral de los estudiantes'),

--3� SECUNDARIA
-- Insertar Temas para Matem�tica - �lgebra (id_rama = 1)
(1, 9, 'Ecuaciones de primer y segundo grado'),
(1, 9, 'Factores de expresiones algebraicas y su factorizaci�n'),
(1, 9, 'Polinomios y fracciones algebraicas'),
(1, 9, 'Ecuaciones y sistemas de ecuaciones lineales'),
(1, 9, 'Desigualdades algebraicas y su resoluci�n'),
(1, 9, 'Radicaci�n y propiedades de ra�ces'),
(1, 9, 'Funciones y sus representaciones gr�ficas'),
(1, 9, 'Resoluci�n de problemas con ecuaciones cuadr�ticas'),
(1, 9, 'Teorema de Vieta y sus aplicaciones'),
(1, 9, 'Estudio de las ecuaciones racionales'),

-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 9, 'Teorema de Pit�goras y sus aplicaciones en la resoluci�n de tri�ngulos'),
(2, 9, '�ngulos y figuras geom�tricas planas: tri�ngulos, cuadril�teros, c�rculos'),
(2, 9, 'Per�metro, �rea y volumen de figuras geom�tricas'),
(2, 9, 'Transformaciones geom�tricas: traslaciones, reflexiones, rotaciones'),
(2, 9, 'Teorema de Tales y su aplicaci�n en la geometr�a'),
(2, 9, 'Geometr�a anal�tica: ecuaciones de la recta, el c�rculo y otras curvas'),
(2, 9, 'Teorema de Her�n y su aplicaci�n en el c�lculo de �reas de tri�ngulos'),
(2, 9, 'Las coordenadas polares y su uso en la resoluci�n de problemas'),
(2, 9, 'Teor�a de pol�gonos regulares y sus propiedades'),
(2, 9, 'El volumen de s�lidos geom�tricos: cubos, conos, esferas'),

-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 9, 'Operaciones con fracciones, decimales y porcentajes'),
(3, 9, 'El an�lisis de tasas de crecimiento y de variaci�n'),
(3, 9, 'Proporcionalidad directa e inversa'),
(3, 9, 'Inter�s simple y compuesto en problemas financieros'),
(3, 9, 'C�lculo de promedio, mediana, moda y desviaci�n est�ndar'),
(3, 9, 'Resoluci�n de problemas utilizando reglas de tres y porcentajes'),
(3, 9, 'La conversi�n entre unidades de medida'),
(3, 9, 'Estudio de los n�meros enteros y sus propiedades'),
(3, 9, 'C�lculo de descuentos y aumentos'),
(3, 9, 'Resoluci�n de problemas de porcentajes en situaciones cotidianas'),

-- Insertar Temas para Matem�tica - Trigonometr�a (id_rama = 4)
(4, 9, 'El uso de las funciones trigonom�tricas en la resoluci�n de tri�ngulos'),
(4, 9, 'Identidades trigonom�tricas y su aplicaci�n en la resoluci�n de problemas'),
(4, 9, 'Ley de senos y cosenos en tri�ngulos no rect�ngulos'),
(4, 9, '�ngulos y su relaci�n con las funciones trigonom�tricas'),
(4, 9, 'La resoluci�n de tri�ngulos mediante el uso de trigonometr�a'),
(4, 9, 'Teorema de los senos y cosenos en la resoluci�n de tri�ngulos oblicu�ngulos'),
(4, 9, 'Aplicaciones de la trigonometr�a en la vida diaria: navegaci�n, arquitectura'),
(4, 9, 'El c�rculo unitario y su uso en la resoluci�n de problemas trigonom�tricos'),
(4, 9, 'C�lculo de distancias y alturas con trigonometr�a'),
(4, 9, 'Estudio de las ecuaciones trigonom�tricas b�sicas'),

-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 9, 'Resoluci�n de problemas utilizando la l�gica matem�tica'),
(5, 9, 'El razonamiento inductivo y deductivo en la resoluci�n de problemas'),
(5, 9, 'Estudio de proposiciones l�gicas y su equivalencia'),
(5, 9, 'Teor�a de conjuntos y su aplicaci�n en problemas matem�ticos'),
(5, 9, 'El uso de diagramas de Venn en la resoluci�n de problemas de conjuntos'),
(5, 9, 'An�lisis combinatorio: permutaciones y combinaciones'),
(5, 9, 'El principio de inducci�n matem�tica en la resoluci�n de problemas'),
(5, 9, 'El an�lisis de secuencias y patrones num�ricos'),
(5, 9, 'El c�lculo de probabilidades en eventos independientes y dependientes'),
(5, 9, 'La l�gica formal y su aplicaci�n en la resoluci�n de problemas'),

-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 9, 'La lectura y an�lisis de textos narrativos y descriptivos'),
(6, 9, 'Redacci�n de textos argumentativos, expositivos y descriptivos'),
(6, 9, 'La estructura de los textos: introducci�n, desarrollo, conclusi�n'),
(6, 9, 'Comprensi�n y an�lisis de textos literarios y cient�ficos'),
(6, 9, 'Uso de la gram�tica y ortograf�a en la escritura formal e informal'),
(6, 9, 'La expresi�n oral en la exposici�n de ideas y el debate'),
(6, 9, 'T�cnicas de redacci�n: resumen, par�frasis y citas textuales'),
(6, 9, 'El uso de conectores textuales para la cohesi�n y coherencia en un texto'),
(6, 9, 'El an�lisis de obras literarias de autores nacionales e internacionales'),
(6, 9, 'La escritura de informes y cartas formales'),

-- Insertar Temas para Comunicaci�n - Literatura (id_rama = 7)
(7, 9, 'El estudio de los principales movimientos literarios: Renacimiento, Barroco, Romanticismo, Realismo'),
(7, 9, 'El an�lisis de g�neros literarios: narrativa, l�rica, dram�tica'),
(7, 9, 'La obra literaria como espejo de la realidad hist�rica y social'),
(7, 9, 'La poes�a: m�trica, ritmo, figuras literarias y su interpretaci�n'),
(7, 9, 'El teatro y su evoluci�n hist�rica: comedia, tragedia, teatro contempor�neo'),
(7, 9, 'La narrativa: tipos de narradores, estructura de la trama'),
(7, 9, 'El an�lisis de los personajes en la literatura: tipos y funciones'),
(7, 9, 'El an�lisis de los conflictos en las obras literarias'),
(7, 9, 'El ensayo literario: caracter�sticas, estructura y redacci�n'),
(7, 9, 'La literatura latinoamericana: autores y obras destacadas'),

-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 9, 'El an�lisis de analog�as verbales y sem�nticas'),
(8, 9, 'La interpretaci�n de pasajes literarios y argumentativos'),
(8, 9, 'Comprensi�n de textos literarios y cient�ficos mediante estrategias de lectura'),
(8, 9, 'La expresi�n verbal en situaciones de comunicaci�n formal e informal'),
(8, 9, 'El an�lisis de la coherencia y cohesi�n en los textos verbales'),
(8, 9, 'La identificaci�n de figuras literarias y su uso en la comunicaci�n escrita'),
(8, 9, 'La elaboraci�n de argumentos s�lidos en la discusi�n y el debate'),
(8, 9, 'El uso de sin�nimos, ant�nimos y par�nimos en la interpretaci�n de textos'),
(8, 9, 'La organizaci�n y jerarquizaci�n de ideas en un texto argumentativo'),
(8, 9, 'El an�lisis y cr�tica de textos en funci�n de su intenci�n comunicativa'),
-- Insertar Temas para Biolog�a (id_rama = 10)
(10, 9, 'La gen�tica y la herencia: ADN, cromosomas y genes'),
(10, 9, 'El ciclo celular y la divisi�n celular: mitosis y meiosis'),
(10, 9, 'La anatom�a humana: sistema circulatorio, respiratorio y digestivo'),
(10, 9, 'El estudio de los ecosistemas y las cadenas tr�ficas'),
(10, 9, 'La teor�a de la evoluci�n de Darwin y sus pruebas cient�ficas'),
(10, 9, 'El sistema nervioso: estructura y funci�n'),
(10, 9, 'La microbiolog�a: bacterias, virus y su impacto en la salud'),
(10, 9, 'La reproducci�n humana y sus etapas: embarazo, parto'),
(10, 9, 'La salud y el bienestar: prevenci�n de enfermedades'),
(10, 9, 'La biodiversidad y la conservaci�n de especies'),

-- Insertar Temas para Qu�mica (id_rama = 11)
(11, 9, 'La tabla peri�dica de los elementos y sus familias'),
(11, 9, 'Las reacciones qu�micas: tipos, caracter�sticas y balanceo'),
(11, 9, 'El estudio de los �cidos, bases y sales'),
(11, 9, 'La qu�mica del carbono: compuestos org�nicos e hidrocarburos'),
(11, 9, 'La teor�a at�mica: modelos y part�culas subat�micas'),
(11, 9, 'Las soluciones qu�micas: concentraci�n, disoluci�n y disolventes'),
(11, 9, 'La qu�mica en la vida cotidiana: �cidos, bases y productos dom�sticos'),
(11, 9, 'La ley de los gases ideales y sus aplicaciones en la f�sica'),
(11, 9, 'Las reacciones redox y su importancia en la energ�a'),
(11, 9, 'La qu�mica del agua: propiedades y su importancia en los seres vivos'),

-- Insertar Temas para F�sica (id_rama = 12)
(12, 9, 'El estudio de las leyes del movimiento de Newton'),
(12, 9, 'La energ�a: tipos de energ�a y la conservaci�n de la energ�a'),
(12, 9, 'La electricidad y el magnetismo: fen�menos y aplicaciones'),
(12, 9, 'La termodin�mica: calor, temperatura y sus aplicaciones'),
(12, 9, 'Las ondas y sus propiedades: luz, sonido, ondas electromagn�ticas'),
(12, 9, 'La �ptica: reflexi�n, refracci�n y lentes'),
(12, 9, 'La mec�nica de fluidos: principios y aplicaciones'),
(12, 9, 'El trabajo y la potencia en la f�sica'),
(12, 9, 'Las m�quinas simples y su eficiencia'),
(12, 9, 'El estudio de la relatividad en la f�sica moderna'),

-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 9, 'Los derechos humanos y la ciudadan�a global'),
(13, 9, 'La justicia social y los derechos laborales'),
(13, 9, 'La democracia y la participaci�n pol�tica'),
(13, 9, 'La �tica y la responsabilidad en la vida p�blica'),
(13, 9, 'La igualdad de g�nero y la lucha contra la discriminaci�n'),
(13, 9, 'El respeto a las normas y la ley en la sociedad'),
(13, 9, 'La resoluci�n de conflictos y el fortalecimiento de la paz'),
(13, 9, 'La participaci�n juvenil en la comunidad'),
(13, 9, 'El desarrollo sostenible y su importancia para la sociedad'),
(13, 9, 'La convivencia pac�fica y el respeto por la diversidad cultural'),

-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 9, 'El fomento de la actividad f�sica y el bienestar integral'),
(14, 9, 'La salud f�sica y mental en el �mbito educativo'),
(14, 9, 'Los deportes colectivos e individuales: principios y estrategias'),
(14, 9, 'El desarrollo de la resistencia y la fuerza f�sica'),
(14, 9, 'La importancia de la higiene postural en las actividades f�sicas'),
(14, 9, 'La nutrici�n y el rendimiento deportivo'),
(14, 9, 'El trabajo en equipo y la comunicaci�n en deportes colectivos'),
(14, 9, 'La pr�ctica de juegos recreativos y actividades f�sicas'),
(14, 9, 'El an�lisis del cuerpo humano en el deporte'),
(14, 9, 'La prevenci�n de lesiones y su manejo en el deporte'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 9, 'La historia del arte: principales per�odos y movimientos'),
(15, 9, 'El an�lisis de obras de arte y su contexto social y cultural'),
(15, 9, 'La expresi�n art�stica: pintura, escultura, m�sica, danza'),
(15, 9, 'El arte como medio de cr�tica social y pol�tica'),
(15, 9, 'La creatividad y la expresi�n personal en las artes visuales'),
(15, 9, 'La influencia de la tecnolog�a en las manifestaciones art�sticas contempor�neas'),
(15, 9, 'El arte en el cine: an�lisis de los elementos cinematogr�ficos'),
(15, 9, 'La relaci�n entre arte y naturaleza'),
(15, 9, 'La fotograf�a como forma de expresi�n art�stica'),
(15, 9, 'El arte como reflejo de la identidad cultural'),

-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 9, 'El desarrollo de habilidades comunicativas en ingl�s: hablar, escribir, escuchar, leer'),
(16, 9, 'La estructura gramatical avanzada en ingl�s'),
(16, 9, 'La pronunciaci�n y acentuaci�n en ingl�s'),
(16, 9, 'El an�lisis y comprensi�n de textos literarios en ingl�s'),
(16, 9, 'El uso de expresiones idiom�ticas y coloquiales en ingl�s'),
(16, 9, 'La cultura anglosajona: tradiciones, costumbres y su influencia mundial'),
(16, 9, 'La comprensi�n y producci�n de textos acad�micos en ingl�s'),
(16, 9, 'El uso de tecnolog�as para aprender ingl�s'),
(16, 9, 'La literatura en ingl�s: an�lisis de obras y autores cl�sicos'),
(16, 9, 'El ingl�s en el mundo globalizado'),

-- Insertar Temas para Religi�n (id_rama = 17)
(17, 9, 'Los valores cristianos en la vida cotidiana'),
(17, 9, 'La �tica cristiana y su relaci�n con la moral contempor�nea'),
(17, 9, 'La historia del cristianismo y sus influencias en la sociedad'),
(17, 9, 'La espiritualidad y el crecimiento personal'),
(17, 9, 'La importancia del perd�n y la reconciliaci�n'),
(17, 9, 'Los valores universales del cristianismo y su aplicaci�n en el mundo moderno'),
(17, 9, 'La relaci�n entre ciencia y fe en el cristianismo'),
(17, 9, 'El compromiso cristiano en la transformaci�n social'),
(17, 9, 'La religi�n y la �tica en la vida social y profesional'),
(17, 9, 'La solidaridad y el trabajo social desde la perspectiva cristiana'),

-- Insertar Temas para Educaci�n para el Trabajo (id_rama = 18)
(18, 9, 'El emprendimiento y la creaci�n de proyectos'),
(18, 9, 'La �tica en el trabajo y el desarrollo de habilidades profesionales'),
(18, 9, 'La administraci�n y gesti�n de proyectos profesionales'),
(18, 9, 'El uso de las TICs en el �mbito laboral'),
(18, 9, 'La importancia del liderazgo en la vida profesional'),
(18, 9, 'La negociaci�n y resoluci�n de conflictos en el entorno laboral'),
(18, 9, 'El an�lisis de mercados y las estrategias empresariales'),
(18, 9, 'La planificaci�n financiera y el manejo de presupuestos'),
(18, 9, 'El desarrollo de una carrera profesional exitosa'),
(18, 9, 'La influencia de la globalizaci�n en las empresas y el empleo'),

-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 9, 'La gesti�n del tiempo y la organizaci�n personal'),
(19, 9, 'La importancia de la autoestima y la motivaci�n'),
(19, 9, 'El manejo del estr�s y las emociones'),
(19, 9, 'La orientaci�n vocacional y el futuro acad�mico y profesional'),
(19, 9, 'La resoluci�n de conflictos interpersonales'),
(19, 9, 'El trabajo en equipo y las habilidades de comunicaci�n'),
(19, 9, 'El uso de las redes sociales de forma responsable'),
(19, 9, 'La promoci�n del bienestar integral: f�sico, emocional y social'),
(19, 9, 'La importancia del pensamiento cr�tico y la toma de decisiones'),
(19, 9, 'El compromiso social y la participaci�n en actividades comunitarias'),

--4� SECUNDARIA
-- Insertar Temas para Matem�tica - �lgebra (id_rama = 1)
(1, 10, 'Ecuaciones y sistemas de ecuaciones no lineales'),
(1, 10, 'Polinomios y factorizaci�n avanzada'),
(1, 10, 'Funciones cuadr�ticas y sus aplicaciones'),
(1, 10, 'Desigualdades y su resoluci�n en diferentes contextos'),
(1, 10, 'Teorema del binomio de Newton'),
(1, 10, 'Proporcionalidad directa e inversa en funciones algebraicas'),
(1, 10, 'Ra�ces cuadradas y su aplicaci�n en problemas algebraicos'),
(1, 10, 'Estudio de las funciones racionales y sus gr�ficos'),
(1, 10, 'Matrices y determinantes: teor�a y aplicaciones'),
(1, 10, 'Ecuaciones param�tricas y su resoluci�n'),
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 10, 'Estudio de los pol�gonos regulares y sus propiedades'),
(2, 10, 'Teorema de Pit�goras en el espacio tridimensional'),
(2, 10, 'Geometr�a anal�tica: ecuaciones de la recta, el plano y otras superficies'),
(2, 10, 'Transformaciones geom�tricas en el plano cartesiano'),
(2, 10, 'C�nicas: elipse, hip�rbola y par�bola'),
(2, 10, 'Teorema de Apolonio y aplicaciones en la geometr�a de tri�ngulos'),
(2, 10, '�ngulos s�lidos y su relaci�n con los cuerpos geom�tricos'),
(2, 10, 'El volumen de figuras geom�tricas en tres dimensiones'),
(2, 10, 'La resoluci�n de problemas de optimizaci�n en geometr�a'),
(2, 10, 'El uso de coordenadas esf�ricas en la geometr�a anal�tica'),
-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 10, 'Operaciones con fracciones algebraicas y polinomios'),
(3, 10, 'C�lculo de porcentajes en situaciones complejas'),
(3, 10, 'La regla de tres compuesta y su aplicaci�n en problemas'),
(3, 10, 'Problemas de �lgebra financiera: intereses simples y compuestos'),
(3, 10, 'Estudio de las progresiones aritm�ticas y geom�tricas'),
(3, 10, 'C�lculo de promedios ponderados en situaciones de grupo'),
(3, 10, 'La conversi�n de unidades y su uso en la resoluci�n de problemas'),
(3, 10, 'La resoluci�n de problemas de tasas de cambio en situaciones pr�cticas'),
(3, 10, 'Estudio de las ecuaciones exponenciales y logar�tmicas'),
(3, 10, 'La proporci�n y el an�lisis de ratios en diversos contextos'),
-- Insertar Temas para Matem�tica - Trigonometr�a (id_rama = 4)
(4, 10, 'La aplicaci�n de la trigonometr�a en la resoluci�n de tri�ngulos oblicu�ngulos'),
(4, 10, 'Identidades trigonom�tricas avanzadas y su simplificaci�n'),
(4, 10, 'Las ecuaciones trigonom�tricas y su resoluci�n'),
(4, 10, 'El uso de las funciones trigonom�tricas en la resoluci�n de problemas del mundo real'),
(4, 10, 'El an�lisis de ondas sonoras, luz y otras ondas a trav�s de la trigonometr�a'),
(4, 10, 'La ley de los senos y cosenos en el estudio de tri�ngulos no rect�ngulos'),
(4, 10, 'Trigonometr�a en el c�rculo unitario: �ngulos y coordenadas polares'),
(4, 10, 'Aplicaciones de la trigonometr�a en el an�lisis de fen�menos naturales'),
(4, 10, 'Estudio de los �ngulos en 3D y sus aplicaciones'),
(4, 10, 'La relaci�n entre trigonometr�a y geometr�a anal�tica'),
-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 10, 'El razonamiento l�gico en la resoluci�n de problemas matem�ticos'),
(5, 10, 'Estudio de las estructuras algebraicas: grupos, anillos y cuerpos'),
(5, 10, 'L�gica matem�tica aplicada a la resoluci�n de sistemas complejos'),
(5, 10, 'El an�lisis de secuencias y progresiones en la soluci�n de problemas'),
(5, 10, 'Teor�a de grafos: conceptos y aplicaciones en la resoluci�n de problemas'),
(5, 10, 'Combinatoria avanzada: permutaciones y combinaciones con restricciones'),
(5, 10, 'El uso de probabilidades en problemas de azar y en decisiones estad�sticas'),
(5, 10, 'La inducci�n matem�tica aplicada a problemas reales'),
(5, 10, 'El an�lisis y resoluci�n de problemas con programaci�n matem�tica'),
(5, 10, 'Estudio de funciones y su comportamiento en la resoluci�n de problemas complejos'),
-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 10, 'La expresi�n escrita en la redacci�n de textos argumentativos y expositivos'),
(6, 10, 'El an�lisis literario de obras cl�sicas y contempor�neas'),
(6, 10, 'T�cnicas de s�ntesis y an�lisis cr�tico de textos'),
(6, 10, 'La comprensi�n y producci�n de textos cient�ficos y t�cnicos'),
(6, 10, 'El uso adecuado de la gram�tica y la ortograf�a en la comunicaci�n escrita'),
(6, 10, 'La redacci�n de informes acad�micos y cient�ficos'),
(6, 10, 'La comunicaci�n escrita en los medios de informaci�n y redes sociales'),
(6, 10, 'La presentaci�n oral: t�cnicas y habilidades en la expresi�n verbal'),
(6, 10, 'La organizaci�n de un discurso formal: introducci�n, desarrollo y conclusi�n'),
(6, 10, 'El an�lisis de la estructura y estilo en diferentes tipos de textos'),
-- Insertar Temas para Comunicaci�n - Literatura (id_rama = 7)
(7, 10, 'El an�lisis de la narrativa en los g�neros literarios cl�sicos y modernos'),
(7, 10, 'La literatura en el contexto hist�rico y social: su influencia y evoluci�n'),
(7, 10, 'La poes�a: formas, g�neros y figuras literarias'),
(7, 10, 'El teatro cl�sico y moderno: caracter�sticas y obras representativas'),
(7, 10, 'El ensayo literario: an�lisis y cr�tica de obras literarias'),
(7, 10, 'Los movimientos literarios contempor�neos: realismo, simbolismo, modernismo'),
(7, 10, 'La literatura latinoamericana y su proyecci�n en el contexto mundial'),
(7, 10, 'El an�lisis de la narrativa oral y su tradici�n cultural'),
(7, 10, 'La intertextualidad en la literatura: influencia de autores y obras en otras'),
(7, 10, 'La literatura en las lenguas ind�genas y su preservaci�n'),
-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 10, 'El an�lisis de inferencias y deducciones l�gicas en textos verbales'),
(8, 10, 'La comprensi�n profunda de textos argumentativos y literarios'),
(8, 10, 'La resoluci�n de analog�as verbales y sem�nticas'),
(8, 10, 'El uso de estrategias discursivas en la expresi�n oral y escrita'),
(8, 10, 'El an�lisis cr�tico de textos argumentativos y de divulgaci�n'),
(8, 10, 'La construcci�n de argumentos s�lidos y la defensa de una postura en debates'),
(8, 10, 'La identificaci�n de las intenciones comunicativas en un texto'),
(8, 10, 'La comprensi�n y an�lisis de textos cient�ficos, hist�ricos y literarios'),
(8, 10, 'El uso de t�cnicas para mejorar la comprensi�n lectora'),
(8, 10, 'La interpretaci�n de pasajes literarios y no literarios con enfoque cr�tico'),
-- Insertar Temas para Biolog�a (id_rama = 10)
(10, 10, 'El sistema endocrino y la regulaci�n hormonal en los seres vivos'),
(10, 10, 'El sistema inmunol�gico: mecanismos de defensa del cuerpo humano'),
(10, 10, 'La biolog�a molecular: ADN, ARN y prote�nas'),
(10, 10, 'La reproducci�n sexual y asexual en los seres vivos'),
(10, 10, 'Los ecosistemas y la conservaci�n de la biodiversidad'),
(10, 10, 'La biolog�a celular: org�nulos, funciones y procesos celulares'),
(10, 10, 'La fisiolog�a humana: sistema nervioso, respiratorio, circulatorio'),
(10, 10, 'La gen�tica: teor�as y descubrimientos fundamentales'),
(10, 10, 'La evoluci�n biol�gica y las evidencias de la selecci�n natural'),
(10, 10, 'La biotecnolog�a en la medicina y la agricultura'),
-- Insertar Temas para Qu�mica (id_rama = 11)
(11, 10, 'La qu�mica del carbono: compuestos org�nicos e inorg�nicos'),
(11, 10, 'Reacciones redox: electroqu�mica y aplicaciones'),
(11, 10, 'Qu�mica en el ambiente: contaminaci�n y cambio clim�tico'),
(11, 10, 'La teor�a de �cidos y bases: definici�n y modelos'),
(11, 10, 'La ley de los gases ideales y sus aplicaciones pr�cticas'),
(11, 10, 'La qu�mica de los alimentos: conservaci�n, aditivos y calidad'),
(11, 10, 'Las reacciones de s�ntesis y descomposici�n en qu�mica org�nica'),
(11, 10, 'El an�lisis cualitativo y cuantitativo en qu�mica experimental'),
(11, 10, 'La qu�mica de los pol�meros: propiedades y aplicaciones'),
(11, 10, 'El impacto de la qu�mica en la medicina y farmacolog�a'),
-- Insertar Temas para F�sica (id_rama = 12)
(12, 10, 'El estudio de la relatividad en la f�sica moderna'),
(12, 10, 'Las leyes de la termodin�mica y su aplicaci�n en la vida diaria'),
(12, 10, 'La �ptica: comportamiento de la luz y sus aplicaciones tecnol�gicas'),
(12, 10, 'La mec�nica cu�ntica: conceptos b�sicos y aplicaciones'),
(12, 10, 'El electromagnetismo: leyes y aplicaciones en dispositivos modernos'),
(12, 10, 'El estudio de las part�culas subat�micas: f�sica nuclear y cu�ntica'),
(12, 10, 'La energ�a renovable y su impacto en el futuro de la f�sica'),
(12, 10, 'El an�lisis de sistemas din�micos en la f�sica'),
(12, 10, 'La f�sica de los materiales: estructuras, propiedades y aplicaciones'),
(12, 10, 'Las ondas electromagn�ticas y sus aplicaciones en la tecnolog�a'),
-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 10, 'La constituci�n y el sistema legal: derechos y deberes'),
(13, 10, 'La democracia y las instituciones p�blicas'),
(13, 10, 'La justicia social y la equidad en la sociedad'),
(13, 10, 'El activismo social y el papel del ciudadano en el cambio'),
(13, 10, 'La �tica en la pol�tica y la administraci�n p�blica'),
(13, 10, 'El respeto a la diversidad cultural, religiosa y pol�tica'),
(13, 10, 'El derecho al voto y participaci�n pol�tica'),
(13, 10, 'La importancia de la educaci�n c�vica en la democracia'),
(13, 10, 'La resoluci�n pac�fica de conflictos y la promoci�n de la paz'),
(13, 10, 'La igualdad de derechos entre hombres y mujeres'),
-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 10, 'La salud y bienestar integral: prevenci�n de enfermedades'),
(14, 10, 'La importancia de la actividad f�sica en el desarrollo integral del ser humano'),
(14, 10, 'Los deportes como medios de integraci�n social y cooperaci�n'),
(14, 10, 'El cuidado del cuerpo: nutrici�n, descanso y ejercicio f�sico'),
(14, 10, 'El desarrollo de habilidades motrices en deportes'),
(14, 10, 'La �tica en el deporte: fair play y competencia sana'),
(14, 10, 'El an�lisis del rendimiento f�sico y sus factores'),
(14, 10, 'La psicolog�a del deporte y su influencia en el rendimiento'),
(14, 10, 'La preparaci�n f�sica para el alto rendimiento'),
(14, 10, 'El entrenamiento f�sico y su relaci�n con la salud mental'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 10, 'El an�lisis de la historia del arte y sus movimientos'),
(15, 10, 'Las t�cnicas art�sticas: pintura, escultura, arquitectura, m�sica'),
(15, 10, 'El arte como medio de cr�tica social y cambio'),
(15, 10, 'La creatividad en las artes: expresi�n personal y colectiva'),
(15, 10, 'La fotograf�a como forma de expresi�n art�stica'),
(15, 10, 'El dise�o gr�fico y digital como una forma moderna de arte'),
(15, 10, 'El cine y su influencia en la cultura contempor�nea'),
(15, 10, 'La danza como forma de expresi�n cultural y social'),
(15, 10, 'El arte en la vida cotidiana: dise�o, arquitectura y moda'),
(15, 10, 'El uso de la tecnolog�a en las artes visuales'),
-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 10, 'La comprensi�n de textos escritos en ingl�s: lecturas avanzadas'),
(16, 10, 'El desarrollo de habilidades para la comunicaci�n efectiva en ingl�s'),
(16, 10, 'La literatura en ingl�s: autores y g�neros cl�sicos'),
(16, 10, 'La pr�ctica de la pronunciaci�n y entonaci�n en ingl�s'),
(16, 10, 'Las culturas anglosajonas y su influencia global'),
(16, 10, 'El an�lisis de textos acad�micos y cient�ficos en ingl�s'),
(16, 10, 'La traducci�n y adaptaci�n de textos de un idioma a otro'),
(16, 10, 'La escritura en ingl�s: redacci�n de textos y correcci�n'),
(16, 10, 'El ingl�s t�cnico y su uso en el �mbito profesional'),
(16, 10, 'El ingl�s en contextos internacionales: viajes y negocios'),
-- Insertar Temas para Religi�n (id_rama = 17)
(17, 10, 'Los valores cristianos en la vida moderna'),
(17, 10, 'La �tica cristiana en los diferentes �mbitos de la vida'),
(17, 10, 'La historia del cristianismo y su impacto cultural'),
(17, 10, 'La espiritualidad en el siglo XXI'),
(17, 10, 'Los fundamentos de la fe cristiana y sus rituales'),
(17, 10, 'La justicia social desde la perspectiva cristiana'),
(17, 10, 'La relaci�n entre religi�n y ciencia en el contexto cristiano'),
(17, 10, 'La interreligiosidad: di�logo entre diferentes tradiciones'),
(17, 10, 'La �tica cristiana aplicada al trabajo y la vida profesional'),
(17, 10, 'La misericordia y la ayuda al pr�jimo como valores cristianos'),

-- Insertar Temas para Educaci�n para el Trabajo (id_rama = 18)
(18, 10, 'La formaci�n empresarial: principios y modelos'),
(18, 10, 'La gesti�n del tiempo en el entorno profesional'),
(18, 10, 'El trabajo en equipo y la resoluci�n de conflictos'),
(18, 10, 'La importancia de la �tica en el �mbito laboral'),
(18, 10, 'La creaci�n de proyectos innovadores y sostenibles'),
(18, 10, 'Las habilidades de negociaci�n y comunicaci�n profesional'),
(18, 10, 'La importancia de la capacitaci�n continua en el desarrollo profesional'),
(18, 10, 'La econom�a global y su impacto en los negocios locales'),
(18, 10, 'El an�lisis de la productividad y eficiencia en el trabajo'),
(18, 10, 'El futuro del trabajo: tendencias y desaf�os'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 10, 'El desarrollo de habilidades de liderazgo y toma de decisiones'),
(19, 10, 'El manejo de conflictos en entornos acad�micos y laborales'),
(19, 10, 'El trabajo en equipo y la cooperaci�n'),
(19, 10, 'La importancia de la motivaci�n y la gesti�n de emociones'),
(19, 10, 'El asesoramiento vocacional y la planificaci�n de carrera'),
(19, 10, 'El uso responsable de las redes sociales en la vida acad�mica y personal'),
(19, 10, 'La importancia de la autoconfianza y autoestima'),
(19, 10, 'La organizaci�n y gesti�n del tiempo personal'),
(19, 10, 'El fomento de valores sociales y comunitarios en la escuela'),
(19, 10, 'La construcci�n de relaciones saludables y efectivas'),

--5� SECUNDARIA
-- Insertar Temas para Matem�tica - �lgebra (id_rama = 1)
(1, 11, 'Estudio de polinomios de grado superior'),
(1, 11, 'Ecuaciones diferenciales y sus aplicaciones en problemas reales'),
(1, 11, 'Teor�a de matrices y determinantes avanzados'),
(1, 11, 'Funciones trascendentales: logaritmos y exponenciales'),
(1, 11, 'Series y sucesiones: progresiones aritm�ticas, geom�tricas y otras'),
(1, 11, 'Teorema fundamental del �lgebra y sus implicaciones'),
(1, 11, 'La resoluci�n de sistemas lineales de ecuaciones en n dimensiones'),
(1, 11, 'Teor�a de grupos y su aplicaci�n en �lgebra abstracta'),
(1, 11, 'Ecuaciones polin�micas y sus ra�ces: teoremas y m�todos de resoluci�n'),
(1, 11, 'Optimizaci�n de funciones y sus aplicaciones en la econom�a y la f�sica'),
-- Insertar Temas para Matem�tica - Geometr�a (id_rama = 2)
(2, 11, 'Estudio de los s�lidos plat�nicos y otros poliedros'),
(2, 11, 'La geometr�a proyectiva y sus aplicaciones pr�cticas'),
(2, 11, 'La geometr�a diferencial: curvas y superficies en el espacio'),
(2, 11, 'C�nicas en 3D: hip�rbolas, elipses y par�bolas'),
(2, 11, 'Teorema de Gauss-Bonnet y su relaci�n con la topolog�a'),
(2, 11, 'La geometr�a algebraica y la resoluci�n de ecuaciones geom�tricas'),
(2, 11, 'La geometr�a fractal: introducci�n y aplicaciones'),
(2, 11, 'Estudio de las simetr�as en geometr�a y su uso en arte y arquitectura'),
(2, 11, 'Teor�a de pol�gonos y los m�todos de c�lculo en geometr�a avanzada'),
(2, 11, 'El uso de la geometr�a anal�tica para resolver problemas espaciales'),
-- Insertar Temas para Matem�tica - Aritm�tica (id_rama = 3)
(3, 11, 'C�lculo de determinantes y su aplicaci�n en sistemas lineales'),
(3, 11, 'Estudio de las ecuaciones en diferencias y su resoluci�n'),
(3, 11, 'La teor�a de n�meros: divisibilidad, primalidad y congruencias'),
(3, 11, 'C�lculo de probabilidades y an�lisis de distribuciones estad�sticas'),
(3, 11, 'An�lisis de datos y regresi�n lineal en la investigaci�n cient�fica'),
(3, 11, 'La teor�a de matrices en la resoluci�n de ecuaciones lineales y sistemas de ecuaciones'),
(3, 11, 'Las aplicaciones de la aritm�tica en la econom�a y las finanzas'),
(3, 11, 'El uso de la aritm�tica en el an�lisis de tasas de cambio y crecimiento'),
(3, 11, 'C�lculo de errores y su tratamiento en las ciencias exactas'),
(3, 11, 'La aritm�tica aplicada en el dise�o y an�lisis de algoritmos computacionales'),
-- Insertar Temas para Matem�tica - Trigonometr�a (id_rama = 4)
(4, 11, 'Teor�a y aplicaci�n de las identidades trigonom�tricas avanzadas'),
(4, 11, 'Estudio de las funciones trigonom�tricas en el c�rculo unitario'),
(4, 11, 'Las ecuaciones trigonom�tricas: soluciones y aplicaciones'),
(4, 11, 'Teor�a de �ngulos en el plano y en el espacio tridimensional'),
(4, 11, 'Trigonometr�a aplicada a la resoluci�n de tri�ngulos esf�ricos'),
(4, 11, 'La trigonometr�a en coordenadas polares y su aplicaci�n en f�sica'),
(4, 11, 'Teor�a de Fourier y su aplicaci�n en an�lisis de se�ales'),
(4, 11, 'La ley de los senos y cosenos en geometr�a esf�rica'),
(4, 11, 'Estudio de las ondas arm�nicas y su relaci�n con la trigonometr�a'),
(4, 11, 'La trigonometr�a aplicada a la f�sica de ondas y frecuencias'),
-- Insertar Temas para Matem�tica - Razonamiento Matem�tico (id_rama = 5)
(5, 11, 'L�gica matem�tica y sus aplicaciones en algoritmos computacionales'),
(5, 11, 'Teor�a de la probabilidad: modelos y distribuciones'),
(5, 11, 'La combinatoria avanzada: permutaciones y combinaciones con restricciones'),
(5, 11, 'El razonamiento inductivo y deductivo aplicado a problemas matem�ticos'),
(5, 11, 'La teor�a de grafos y su aplicaci�n en redes de comunicaci�n'),
(5, 11, 'El an�lisis de funciones matem�ticas: continuidad, derivadas e integrales'),
(5, 11, 'La teor�a de n�meros: estudios de la divisibilidad y teor�a de grupos'),
(5, 11, 'El uso de la teor�a de juegos en decisiones estrat�gicas'),
(5, 11, 'Estudio de la programaci�n lineal y sus aplicaciones en la econom�a'),
(5, 11, 'El uso del �lgebra abstracta en la resoluci�n de problemas complejos'),
-- Insertar Temas para Comunicaci�n - Lenguaje (id_rama = 6)
(6, 11, 'La escritura acad�mica: estructura, estilo y t�cnicas de argumentaci�n'),
(6, 11, 'La comunicaci�n efectiva en el �mbito profesional y acad�mico'),
(6, 11, 'La ret�rica: t�cnicas de persuasi�n en la oratoria'),
(6, 11, 'La cr�tica literaria y el an�lisis de textos cl�sicos y contempor�neos'),
(6, 11, 'La expresi�n escrita en la creaci�n de textos cient�ficos y t�cnicos'),
(6, 11, 'El uso de estrategias argumentativas en ensayos y exposiciones orales'),
(6, 11, 'El an�lisis literario avanzado: g�neros y movimientos literarios'),
(6, 11, 'La comunicaci�n intercultural: entender y respetar diversas perspectivas'),
(6, 11, 'El uso de la gram�tica y la sintaxis en la mejora de la expresi�n escrita'),
(6, 11, 'La traducci�n de textos literarios y t�cnicos: desaf�os y t�cnicas'),
-- Insertar Temas para Comunicaci�n - Literatura (id_rama = 7)
(7, 11, 'El an�lisis profundo de la narrativa en el contexto hist�rico y social'),
(7, 11, 'Estudio de la poes�a moderna y contempor�nea: formas y g�neros'),
(7, 11, 'El an�lisis cr�tico de la novela en sus diferentes g�neros literarios'),
(7, 11, 'La literatura contempor�nea: tendencias y caracter�sticas'),
(7, 11, 'El impacto de la literatura en la evoluci�n de la sociedad'),
(7, 11, 'El an�lisis de las obras m�s representativas de la literatura universal'),
(7, 11, 'El ensayo literario como forma de expresi�n cr�tica y reflexiva'),
(7, 11, 'La literatura latinoamericana del siglo XX: autores y movimientos'),
(7, 11, 'El estudio del teatro como forma de expresi�n cultural y social'),
(7, 11, 'La relaci�n entre literatura y filosof�a en la formaci�n del pensamiento humano'),
-- Insertar Temas para Comunicaci�n - Razonamiento Verbal (id_rama = 8)
(8, 11, 'El an�lisis l�gico de textos argumentativos y de divulgaci�n'),
(8, 11, 'La interpretaci�n de inferencias y deducciones en textos verbales'),
(8, 11, 'El desarrollo de habilidades cr�ticas en la lectura de textos complejos'),
(8, 11, 'La argumentaci�n en la resoluci�n de problemas verbales y l�gicos'),
(8, 11, 'El an�lisis y la s�ntesis de textos cient�ficos y acad�micos'),
(8, 11, 'La identificaci�n de falacias y errores en razonamientos verbales'),
(8, 11, 'El estudio de la estructura del lenguaje y sus implicaciones en el razonamiento'),
(8, 11, 'El desarrollo de habilidades oratorias y de persuasi�n en la comunicaci�n verbal'),
(8, 11, 'El an�lisis de textos literarios y su aplicaci�n en la resoluci�n de problemas verbales'),
(8, 11, 'La creaci�n de argumentos s�lidos y bien estructurados en debates y exposiciones'),
-- Insertar Temas para Biolog�a (id_rama = 10)
(10, 11, 'La biotecnolog�a y sus aplicaciones en la agricultura y la salud'),
(10, 11, 'La gen�tica molecular: avances y aplicaciones en la medicina moderna'),
(10, 11, 'La ecolog�a y la gesti�n de los recursos naturales para la sostenibilidad'),
(10, 11, 'Los ecosistemas marinos: conservaci�n y amenazas'),
(10, 11, 'La biolog�a de la evoluci�n: gen�tica, selecci�n natural y adaptaci�n'),
(10, 11, 'Los procesos bioqu�micos: la fotos�ntesis y la respiraci�n celular'),
(10, 11, 'La biolog�a del envejecimiento y sus implicaciones m�dicas'),
(10, 11, 'La inmunolog�a: sistema de defensa del cuerpo humano'),
(10, 11, 'La neurociencia y el estudio del cerebro humano'),
(10, 11, 'La biotecnolog�a en la creaci�n de nuevos medicamentos y terapias'),
-- Insertar Temas para Qu�mica (id_rama = 11)
(11, 11, 'La qu�mica de los materiales: pol�meros y compuestos avanzados'),
(11, 11, 'La qu�mica ambiental: contaminaci�n y tratamiento de residuos'),
(11, 11, 'La espectroscop�a: t�cnicas de an�lisis qu�mico en investigaci�n'),
(11, 11, 'La termodin�mica y su aplicaci�n en procesos industriales'),
(11, 11, 'La qu�mica org�nica avanzada: s�ntesis y reacciones de compuestos complejos'),
(11, 11, 'La qu�mica de la atm�sfera y el cambio clim�tico'),
(11, 11, 'El an�lisis de los �cidos y bases en el entorno natural y industrial'),
(11, 11, 'La qu�mica en la farmacolog�a: dise�o y acci�n de f�rmacos'),
(11, 11, 'Las reacciones de oxidaci�n y reducci�n en la electroqu�mica'),
(11, 11, 'La qu�mica en la tecnolog�a de los alimentos: preservaci�n y nutrici�n'),
-- Insertar Temas para F�sica (id_rama = 12)
(12, 11, 'La teor�a de la relatividad de Einstein: fundamentos y aplicaciones'),
(12, 11, 'La f�sica cu�ntica y sus aplicaciones en la tecnolog�a moderna'),
(12, 11, 'El estudio de los semiconductores y su uso en la electr�nica'),
(12, 11, 'La f�sica de los materiales superconductores'),
(12, 11, 'La energ�a nuclear: fisi�n, fusi�n y sus aplicaciones'),
(12, 11, 'La termodin�mica avanzada y sus aplicaciones tecnol�gicas'),
(12, 11, 'La f�sica de part�culas: aceleradores y experimentos actuales'),
(12, 11, 'El electromagnetismo: aplicaciones en comunicaciones y energ�a'),
(12, 11, 'La mec�nica de fluidos y sus aplicaciones en la ingenier�a'),
(12, 11, 'La f�sica aplicada en el an�lisis de ondas y frecuencias'),
-- Insertar Temas para Educaci�n C�vica (id_rama = 13)
(13, 11, 'La justicia y derechos humanos en el contexto global'),
(13, 11, 'El concepto de ciudadan�a en sociedades democr�ticas'),
(13, 11, 'La gobernanza global y la cooperaci�n internacional'),
(13, 11, 'La lucha contra la corrupci�n en la pol�tica y la administraci�n p�blica'),
(13, 11, 'La igualdad de derechos entre hombres y mujeres en la legislaci�n'),
(13, 11, 'Los derechos laborales y la protecci�n social en las econom�as globalizadas'),
(13, 11, 'La libertad de expresi�n y el respeto a la diversidad de opiniones'),
(13, 11, 'La defensa de la democracia y el sistema electoral'),
(13, 11, 'Los desaf�os �ticos y sociales de la globalizaci�n'),
(13, 11, 'El rol de las organizaciones internacionales en la paz y el desarrollo'),
-- Insertar Temas para Educaci�n F�sica (id_rama = 14)
(14, 11, 'La salud mental y su relaci�n con la actividad f�sica'),
(14, 11, 'Los deportes extremos: riesgos y beneficios'),
(14, 11, 'El acondicionamiento f�sico y el rendimiento en deportes de alto nivel'),
(14, 11, 'La nutrici�n deportiva: principios y estrategias para el rendimiento'),
(14, 11, 'La prevenci�n de lesiones en la pr�ctica deportiva'),
(14, 11, 'La influencia de la gen�tica en el rendimiento f�sico'),
(14, 11, 'El entrenamiento funcional y su aplicaci�n en el desarrollo muscular'),
(14, 11, 'El an�lisis del impacto social de los deportes en la sociedad'),
(14, 11, 'El deporte y la salud cardiovascular'),
(14, 11, 'La fisiolog�a del ejercicio: respuestas del cuerpo al esfuerzo f�sico'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 11, 'El arte contempor�neo: tendencias, movimientos y artistas'),
(15, 11, 'La fotograf�a como medio art�stico y documental'),
(15, 11, 'La escultura moderna: materiales y t�cnicas'),
(15, 11, 'El arte digital: creaci�n y apreciaci�n'),
(15, 11, 'La influencia del arte en la pol�tica y la sociedad'),
(15, 11, 'El arte como forma de resistencia y protesta social'),
(15, 11, 'El an�lisis de las artes visuales en el contexto urbano'),
(15, 11, 'El papel del museo como instituci�n de preservaci�n y difusi�n art�stica'),
(15, 11, 'El arte y la tecnolog�a: nuevas herramientas para los artistas'),
(15, 11, 'El dise�o gr�fico como arte aplicado'),
-- Insertar Temas para Ingl�s (id_rama = 16)
(16, 11, 'La comprensi�n de textos acad�micos y cient�ficos en ingl�s'),
(16, 11, 'El desarrollo de habilidades ling��sticas avanzadas en ingl�s'),
(16, 11, 'La traducci�n literaria y los desaf�os culturales'),
(16, 11, 'La literatura inglesa: el an�lisis de obras cl�sicas y modernas'),
(16, 11, 'El ingl�s como lengua global: su impacto en la cultura contempor�nea'),
(16, 11, 'El an�lisis de los diferentes dialectos y variantes del ingl�s'),
(16, 11, 'La pronunciaci�n en ingl�s: variaciones y mejora de acento'),
(16, 11, 'El ingl�s para fines profesionales: redacci�n de informes y correos electr�nicos'),
(16, 11, 'La historia del ingl�s: desde sus or�genes hasta el ingl�s moderno'),
(16, 11, 'La poes�a en ingl�s: an�lisis de formas y estilos literarios'),
-- Insertar Temas para Religi�n (id_rama = 17)
(17, 11, 'La �tica cristiana en el contexto globalizado'),
(17, 11, 'Los desaf�os de la religi�n en un mundo plural y multicultural'),
(17, 11, 'El cristianismo y el di�logo interreligioso'),
(17, 11, 'Los principios del cristianismo en la actualidad'),
(17, 11, 'El cristianismo y las cuestiones sociales contempor�neas'),
(17, 11, 'La moral cristiana y la �tica del trabajo'),
(17, 11, 'Los valores universales en las ense�anzas cristianas'),
(17, 11, 'El papel de la religi�n en la formaci�n de la identidad cultural'),
(17, 11, 'La influencia del cristianismo en la historia del arte y la cultura'),
(17, 11, 'La espiritualidad cristiana: meditaci�n y oraci�n en la vida diaria'),
-- Insertar Temas para Educaci�n para el Trabajo (id_rama = 18)
(18, 11, 'El emprendimiento en el contexto globalizado'),
(18, 11, 'La gesti�n de proyectos: desde la concepci�n hasta la ejecuci�n'),
(18, 11, 'Las competencias digitales en el mundo laboral'),
(18, 11, 'El uso de herramientas tecnol�gicas en la gesti�n empresarial'),
(18, 11, 'El liderazgo y la toma de decisiones en las organizaciones'),
(18, 11, 'La �tica empresarial y la responsabilidad social'),
(18, 11, 'La negociaci�n efectiva en el �mbito empresarial'),
(18, 11, 'La importancia del trabajo en equipo en el �xito organizacional'),
(18, 11, 'La globalizaci�n y su impacto en los mercados laborales'),
(18, 11, 'El an�lisis de las tendencias de consumo en el mercado'),
-- Insertar Temas para Tutor�a (id_rama = 19)
(19, 11, 'La planificaci�n de la carrera profesional: estrategias y objetivos'),
(19, 11, 'El desarrollo de habilidades emocionales y sociales para el �xito'),
(19, 11, 'La importancia de la autoconfianza y autoestima en el �mbito acad�mico y profesional'),
(19, 11, 'La resoluci�n de conflictos interpersonales y en el trabajo'),
(19, 11, 'El manejo del estr�s en el contexto acad�mico y profesional'),
(19, 11, 'La toma de decisiones en situaciones complejas'),
(19, 11, 'El liderazgo y trabajo en equipo como habilidades clave para el futuro'),
(19, 11, 'El uso de la tecnolog�a para la productividad personal y profesional'),
(19, 11, 'La gesti�n del tiempo y la productividad personal'),
(19, 11, 'El manejo de las emociones en situaciones de presi�n y desaf�o');


INSERT INTO AsignacionesDocente (id_usuario_docente, id_asignador, id_rama, id_grado, id_anio_escolar) VALUES
--1� PRIMARIA
(2, 3, 3, 1, 4),

(3, 3, 6, 1, 4), 

(4, 3, 9, 1, 4),

(5, 3, 14, 1, 4),
(6, 3, 15, 1, 4),
(7, 3, 17, 1, 4),
(8, 3, 19, 1, 4),

--2� PRIMARIA
(2, 3, 3, 2, 4),

(3, 3, 6, 2, 4), 

(4, 3, 9, 2, 4),

(5, 3, 14, 2, 4),
(6, 3, 15, 2, 4),
(7, 3, 17, 2, 4),
(8, 3, 19, 2, 4),


--3� PRIMARIA
(9, 3, 2, 3, 4),
(2, 3, 3, 3, 4),
(10, 5, 3, 3, 4),

(3, 3, 6, 3, 4), 
(11, 3, 8, 3, 4), 

(4, 3, 9, 3, 4),

(5, 3, 14, 3, 4),
(6, 3, 15, 3, 4),
(7, 3, 17, 3, 4),
(8, 3, 19, 3, 4),

--4� PRIMARIA
(9, 3, 2, 4, 4),
(2, 3, 3, 4, 4),
(10, 5, 3, 4, 4),

(3, 3, 6, 4, 4), 
(11, 3, 8, 4, 4), 

(4, 3, 9, 4, 4),

(5, 3, 14, 4, 4),
(6, 3, 15, 4, 4),
(7, 3, 17, 4, 4),
(8, 3, 19, 4, 4),

--5� PRIMARIA
(9, 3, 2, 5, 4),
(2, 3, 3, 5, 4),
(10, 5, 3, 5, 4),

(3, 3, 6, 5, 4), 
(11, 3, 8, 5, 4), 

(4, 3, 9, 5, 4),

(5, 3, 14, 5, 4),
(6, 3, 15, 5, 4),
(7, 3, 17, 5, 4),
(8, 3, 19, 5, 4),

--6� PRIMARIA
(9, 3, 2, 6, 4),
(2, 3, 3, 6, 4),
(10, 5, 3, 6, 4),

(3, 3, 6, 6, 4), 
(11, 3, 8, 6, 4), 

(4, 3, 9, 6, 4),

(5, 3, 14, 6, 4),
(6, 3, 15, 6, 4),
(7, 3, 17, 6, 4),
(8, 3, 19, 6, 4),


--1� SECUNDARIA
(12, 3, 1, 7, 4),
(51, 3, 2, 7, 4),
(52, 3, 3, 7, 4),
(53, 3, 4, 7, 4),
(54, 3, 5, 7, 4),

(55, 3, 6, 7, 4), 
(56, 3, 7, 7, 4),
(57, 3, 8, 7, 4),

(58, 3, 10, 7, 4),
(59, 3, 11, 7, 4),
(60, 3, 12, 7, 4),

(61, 3, 13, 7, 4),
(62, 3, 14, 7, 4),
(63, 3, 15, 7, 4),
(64, 3, 16, 7, 4),
(65, 3, 17, 7, 4),
(66, 3, 18, 7, 4),
(67, 3, 19, 7, 4),


--2� SECUNDARIA
(12, 3, 1, 8, 4),
(51, 3, 2, 8, 4),
(52, 3, 3, 8, 4),
(53, 3, 4, 8, 4),
(54, 3, 5, 8, 4),

(55, 3, 6, 8, 4), 
(56, 3, 7, 8, 4),
(57, 3, 8, 8, 4),

(58, 3, 10, 8, 4),
(59, 3, 11, 8, 4),
(60, 3, 12, 8, 4),

(61, 3, 13, 8, 4),
(62, 3, 14, 8, 4),
(63, 3, 15, 8, 4),
(64, 3, 16, 8, 4),
(65, 3, 17, 8, 4),
(66, 3, 18, 8, 4),
(67, 3, 19, 8, 4),


--3� SECUNDARIA
(12, 3, 1, 9, 4),
(51, 3, 2, 9, 4),
(52, 3, 3, 9, 4),
(53, 3, 4, 9, 4),
(54, 3, 5, 9, 4),

(55, 3, 6, 9, 4), 
(56, 3, 7, 9, 4),
(57, 3, 8, 9, 4),

(58, 3, 10, 9, 4),
(59, 3, 11, 9, 4),
(60, 3, 12, 9, 4),

(61, 3, 13, 9, 4),
(62, 3, 14, 9, 4),
(63, 3, 15, 9, 4),
(64, 3, 16, 9, 4),
(65, 3, 17, 9, 4),
(66, 3, 18, 9, 4),
(67, 3, 19, 9, 4),


--4� SECUNDARIA
(12, 3, 1, 10, 4),
(51, 3, 2, 10, 4),
(52, 3, 3, 10, 4),
(53, 3, 4, 10, 4),
(54, 3, 5, 10, 4),

(55, 3, 6, 10, 4), 
(56, 3, 7, 10, 4),
(57, 3, 8, 10, 4),

(58, 3, 10, 10, 4),
(59, 3, 11, 10, 4),
(60, 3, 12, 10, 4),

(61, 3, 13, 10, 4),
(62, 3, 14, 10, 4),
(63, 3, 15, 10, 4),
(64, 3, 16, 10, 4),
(65, 3, 17, 10, 4),
(66, 3, 18, 10, 4),
(67, 3, 19, 10, 4),


--5� SECUNDARIA
(12, 3, 1, 11, 4),
(51, 3, 2, 11, 4),
(52, 3, 3, 11, 4),
(53, 3, 4, 11, 4),
(54, 3, 5, 11, 1),

(55, 3, 6, 11, 4), 
(56, 3, 7, 11, 4),
(57, 3, 8, 11, 4),

(58, 3, 10, 11, 4),
(59, 3, 11, 11, 4),
(60, 3, 12, 11, 4),

(61, 3, 13, 11, 4),
(62, 3, 14, 11, 4),
(63, 3, 15, 11, 4),
(64, 3, 16, 11, 4),
(65, 3, 17, 11, 4),
(66, 3, 18, 11, 4),
(67, 3, 19, 11, 4);


--1� PRIMARIA (temas 1-80)
--Ana Gomez   
INSERT INTO Notas(id_tema, id_usuario_estudiante, nota, id_anio_escolar, id_usuario_docente, comentario) VALUES
(1, 13, '20', 4, 2, 'Comentario del tema 1'),
(2, 13, '18', 4, 2, 'Comentario del tema 2'),
(3, 13, '12', 4, 2, 'Comentario del tema 3'),
(4, 13, '12', 4, 2, 'Comentario del tema 4'),
(5, 13, '6', 4, 2, 'Comentario del tema 5'),
(6, 13, '20', 4, 2, 'Comentario del tema 6'),
(7, 13, '3', 4, 2, 'Comentario del tema 7'),
(8, 13, '17', 4, 2, 'Comentario del tema 8'),
(9, 13, '19', 4, 2, 'Comentario del tema 9'),
(10, 13, '14', 4, 2, 'Comentario del tema 10'),
(11, 13, '14', 4, 3, 'Comentario del tema 11'),
(12, 13, '19', 4, 3, 'Comentario del tema 12'),
(13, 13, '12', 4, 3, 'Comentario del tema 13'),
(14, 13, '11', 4, 3, 'Comentario del tema 14'),
(15, 13, '10', 4, 3, 'Comentario del tema 15'),
(16, 13, '8', 4, 3 , 'Comentario del tema 16'),
(17, 13, '15', 4, 3, 'Comentario del tema 17'),
(18, 13, '13', 4, 3, 'Comentario del tema 18'),
(19, 13, '16', 4, 3, 'Comentario del tema 19'),
(20, 13, '5', 4, 3, 'Comentario del tema 20'),
(21, 13, '9', 4, 4, 'Comentario del tema 21'),
(22, 13, '7', 4, 4, 'Comentario del tema 22'),
(23, 13, '14', 4, 4, 'Comentario del tema 23'),
(24, 13, '10', 4, 4, 'Comentario del tema 24'),
(25, 13, '12', 4, 4, 'Comentario del tema 25'),
(26, 13, '8', 4, 4, 'Comentario del tema 26'),
(27, 13, '17', 4, 4, 'Comentario del tema 27'),
(28, 13, '11', 4, 4, 'Comentario del tema 28'),
(29, 13, '19', 4, 4, 'Comentario del tema 29'),
(30, 13, '20', 4, 4, 'Comentario del tema 30'),
(31, 13, '13', 4, 5, 'Comentario del tema 31'),
(32, 13, '15', 4, 5, 'Comentario del tema 32'),
(33, 13, '9', 4, 5, 'Comentario del tema 33'),
(34, 13, '6', 4, 5, 'Comentario del tema 34'),
(35, 13, '18', 4, 5, 'Comentario del tema 35'),
(36, 13, '12', 4, 6, 'Comentario del tema 36'),
(37, 13, '14', 4, 6, 'Comentario del tema 37'),
(38, 13, '8', 4, 6, 'Comentario del tema 38'),
(39, 13, '5', 4, 6, 'Comentario del tema 39'),
(40, 13, '17', 4, 6, 'Comentario del tema 40'),
(41, 13, '20', 4, 7, 'Comentario del tema 41'),
(42, 13, '13', 4, 7, 'Comentario del tema 42'),
(43, 13, '11', 4, 7, 'Comentario del tema 43'),
(44, 13, '9', 4, 7, 'Comentario del tema 44'),
(45, 13, '7', 4, 7, 'Comentario del tema 45'),
(46, 13, '16', 4, 8, 'Comentario del tema 46'),
(47, 13, '15', 4, 8, 'Comentario del tema 47'),
(48, 13, '12', 4, 8, 'Comentario del tema 48'),
(49, 13, '10', 4, 8, 'Comentario del tema 49'),
(50, 13, '6', 4, 8, 'Comentario del tema 50'),


--Carlos Ramirez 
(1, 14, '16', 4, 2, 'Comentario del tema 1'),
(2, 14, '12', 4, 2, 'Comentario del tema 2'),
(3, 14, '18', 4, 2, 'Comentario del tema 3'),
(4, 14, '15', 4, 2, 'Comentario del tema 4'),
(5, 14, '10', 4, 2, 'Comentario del tema 5'),
(6, 14, '13', 4, 2, 'Comentario del tema 6'),
(7, 14, '1', 4, 2, 'Comentario del tema 7'),
(8, 14, '20', 4, 2, 'Comentario del tema 8'),
(9, 14, '7', 4, 2, 'Comentario del tema 9'),
(10, 14, '3', 4, 2, 'Comentario del tema 10'),
(11, 14, '12', 4, 2, 'Comentario del tema 11'),
(12, 14, '8', 4, 2, 'Comentario del tema 12'),
(13, 14, '4', 4, 2, 'Comentario del tema 13'),
(14, 14, '17', 4, 2, 'Comentario del tema 14'),
(15, 14, '6', 4, 2, 'Comentario del tema 15'),
(16, 14, '19', 4, 2, 'Comentario del tema 16'),
(17, 14, '11', 4, 2, 'Comentario del tema 17'),
(18, 14, '14', 4, 2, 'Comentario del tema 18'),
(19, 14, '15', 4, 2, 'Comentario del tema 19'),
(20, 14, '9', 4, 2, 'Comentario del tema 20'),
--Cristina Fernandez

--2� PRIMARIA (81-220 )
--Karen Rocio
--Alberto Martinez
--Lucia Rubi

--3� PRIMARIA   (221-370 )
--Fabiola Nu�ez
--Santiago Mart�nez
--Valeria Serrano

--4� PRIMARIA (371 -520)
--Pedro �lvarez
--Manuel Gonz�lez
--Patricia Morales

--5� PRIMARIA  (521-690)
--Luis Rivera
--Luisana Ram�rez
--Eduardo Salazar

--6� PRIMARIA   (691 - 860)
--Natalia Vargas
--Ricardo Castro
--Juliana Mendoza

--1� SECUNDARIA  (861 - 1040)
--Victor Ortiz
--Catalina Moreno
--Luis Gonz�lez

--2� SECUNDARIA  (1041 - 1220 )
--Andrea Paredes
--Javier Hern�ndez
--Carolina Mart�nez

--3� SECUNDARIA (1221 - 1400)
--Felipe Ruiz
(1151, 37, '19', 4, 12, 'Comentario del tema 1151'),
(1152, 37, '12', 4, 12, 'Comentario del tema 1152'),
(1153, 37, '14', 4, 12, 'Comentario del tema 1153'),
(1154, 37, '17', 4, 12, 'Comentario del tema 1154'),
(1155, 37, '3', 4, 12, 'Comentario del tema 1155'),
(1156, 37, '1', 4, 12, 'Comentario del tema 1156'),
(1157, 37, '10', 4, 12, 'Comentario del tema 1157'),
(1158, 37, '17', 4, 12, 'Comentario del tema 1158'),
(1159, 37, '16', 4, 12, 'Comentario del tema 1159'),
(1160, 37, '13', 4, 12, 'Comentario del tema 1160'),
(1161, 37, '6', 4, 51, 'Comentario del tema 1161'),
(1162, 37, '15', 4, 51, 'Comentario del tema 1162'),
(1163, 37, '12', 4, 51, 'Comentario del tema 1163'),
(1164, 37, '4', 4, 51, 'Comentario del tema 1164'),
(1165, 37, '11', 4, 51, 'Comentario del tema 1165'),
(1166, 37, '8', 4, 51, 'Comentario del tema 1166'),
(1167, 37, '9', 4, 51, 'Comentario del tema 1167'),
(1168, 37, '5', 4, 51, 'Comentario del tema 1168'),
(1169, 37, '18', 4, 51, 'Comentario del tema 1169'),
(1170, 37, '20', 4, 51, 'Comentario del tema 1170'),
(1171, 37, '18', 4, 52, 'Comentario del tema 1171'),
(1172, 37, '15', 4, 52, 'Comentario del tema 1172'),
(1173, 37, '19', 4, 52, 'Comentario del tema 1173'),
(1174, 37, '17', 4, 52, 'Comentario del tema 1174'),
(1175, 37, '20', 4, 52, 'Comentario del tema 1175'),
(1176, 37, '16', 4, 52, 'Comentario del tema 1176'),
(1177, 37, '18', 4, 52, 'Comentario del tema 1177'),
(1178, 37, '19', 4, 52, 'Comentario del tema 1178'),
(1179, 37, '17', 4, 52, 'Comentario del tema 1179'),
(1180, 37, '16', 4, 52, 'Comentario del tema 1180'),
(1181, 37, '15', 4, 53, 'Comentario del tema 1181'),
(1182, 37, '20', 4, 53, 'Comentario del tema 1182'),
(1183, 37, '18', 4, 53, 'Comentario del tema 1183'),
(1184, 37, '19', 4, 53, 'Comentario del tema 1184'),
(1185, 37, '17', 4, 53, 'Comentario del tema 1185'),
(1186, 37, '15', 4, 53, 'Comentario del tema 1186'),
(1187, 37, '16', 4, 53, 'Comentario del tema 1187'),
(1188, 37, '20', 4, 53, 'Comentario del tema 1188'),
(1189, 37, '19', 4, 53, 'Comentario del tema 1189'),
(1190, 37, '18', 4, 53, 'Comentario del tema 1190'),
(1191, 37, '17', 4, 54, 'Comentario del tema 1191'),
(1192, 37, '15', 4, 54, 'Comentario del tema 1192'),
(1193, 37, '16', 4, 54, 'Comentario del tema 1193'),
(1194, 37, '20', 4, 54, 'Comentario del tema 1194'),
(1195, 37, '19', 4, 54, 'Comentario del tema 1195'),
(1196, 37, '18', 4, 54, 'Comentario del tema 1196'),
(1197, 37, '17', 4, 54, 'Comentario del tema 1197'),
(1198, 37, '15', 4, 54, 'Comentario del tema 1198'),
(1199, 37, '16', 4, 54, 'Comentario del tema 1199'),
(1200, 37, '20', 4, 54, 'Comentario del tema 1200'),
(1201, 37, '18', 4, 55, 'Comentario del tema 1201'),
(1202, 37, '19', 4, 55, 'Comentario del tema 1202'),
(1203, 37, '17', 4, 55, 'Comentario del tema 1203'),
(1204, 37, '16', 4, 55, 'Comentario del tema 1204'),
(1205, 37, '20', 4, 55, 'Comentario del tema 1205'),
(1206, 37, '15', 4, 55, 'Comentario del tema 1206'),
(1207, 37, '18', 4, 55, 'Comentario del tema 1207'),
(1208, 37, '19', 4, 55, 'Comentario del tema 1208'),
(1209, 37, '17', 4, 55, 'Comentario del tema 1209'),
(1210, 37, '16', 4, 55, 'Comentario del tema 1210'),
(1211, 37, '20', 4, 56, 'Comentario del tema 1211'),
(1212, 37, '15', 4, 56, 'Comentario del tema 1212'),
(1213, 37, '18', 4, 56, 'Comentario del tema 1213'),
(1214, 37, '19', 4, 56, 'Comentario del tema 1214'),
(1215, 37, '17', 4, 56, 'Comentario del tema 1215'),
(1216, 37, '16', 4, 56, 'Comentario del tema 1216'),
(1217, 37, '20', 4, 56, 'Comentario del tema 1217'),
(1218, 37, '15', 4, 56, 'Comentario del tema 1218'),
(1219, 37, '19', 4, 56, 'Comentario del tema 1219'),
(1220, 37, '18', 4, 56, 'Comentario del tema 1220'),
(1221, 37, '17', 4, 57, 'Comentario del tema 1221'),
(1222, 37, '16', 4, 57, 'Comentario del tema 1222'),
(1223, 37, '20', 4, 57, 'Comentario del tema 1223'),
(1224, 37, '15', 4, 57, 'Comentario del tema 1224'),
(1225, 37, '18', 4, 57, 'Comentario del tema 1225'),
(1226, 37, '19', 4, 57, 'Comentario del tema 1226'),
(1227, 37, '17', 4, 57, 'Comentario del tema 1227'),
(1228, 37, '16', 4, 57, 'Comentario del tema 1228'),
(1229, 37, '20', 4, 57, 'Comentario del tema 1229'),
(1230, 37, '15', 4, 57, 'Comentario del tema 1230'),
(1231, 37, '18', 4, 58, 'Comentario del tema 1231'),
(1232, 37, '19', 4, 58, 'Comentario del tema 1232'),
(1233, 37, '17', 4, 58, 'Comentario del tema 1233'),
(1234, 37, '16', 4, 58, 'Comentario del tema 1234'),
(1235, 37, '20', 4, 58, 'Comentario del tema 1235'),
(1236, 37, '15', 4, 58, 'Comentario del tema 1236'),
(1237, 37, '18', 4, 58, 'Comentario del tema 1237'),
(1238, 37, '19', 4, 58, 'Comentario del tema 1238'),
(1239, 37, '17', 4, 58, 'Comentario del tema 1239'),
(1240, 37, '16', 4, 58, 'Comentario del tema 1240'),
(1241, 37, '20', 4, 59, 'Comentario del tema 1241'),
(1242, 37, '15', 4, 59, 'Comentario del tema 1242'),
(1243, 37, '18', 4, 59, 'Comentario del tema 1243'),
(1244, 37, '19', 4, 59, 'Comentario del tema 1244'),
(1245, 37, '17', 4, 59, 'Comentario del tema 1245'),
(1246, 37, '16', 4, 59, 'Comentario del tema 1246'),
(1247, 37, '20', 4, 59, 'Comentario del tema 1247'),
(1248, 37, '15', 4, 59, 'Comentario del tema 1248'),
(1249, 37, '18', 4, 59, 'Comentario del tema 1249'),
(1250, 37, '19', 4, 59, 'Comentario del tema 1250'),
(1251, 37, '17', 4, 60, 'Comentario del tema 1251'),
(1252, 37, '16', 4, 60, 'Comentario del tema 1252'),
(1253, 37, '20', 4, 60, 'Comentario del tema 1253'),
(1254, 37, '15', 4, 60, 'Comentario del tema 1254'),
(1255, 37, '18', 4, 60, 'Comentario del tema 1255'),
(1256, 37, '19', 4, 60, 'Comentario del tema 1256'),
(1257, 37, '17', 4, 60, 'Comentario del tema 1257'),
(1258, 37, '16', 4, 60, 'Comentario del tema 1258'),
(1259, 37, '20', 4, 60, 'Comentario del tema 1259'),
(1260, 37, '15', 4, 60, 'Comentario del tema 1260'),
	(1261, 37, '18', 4, 61, 'Comentario del tema 1261'),
(1262, 37, '19', 4, 61, 'Comentario del tema 1262'),
(1263, 37, '17', 4, 61, 'Comentario del tema 1263'),
(1264, 37, '16', 4, 61, 'Comentario del tema 1264'),
(1265, 37, '20', 4, 61, 'Comentario del tema 1265'),
(1266, 37, '15', 4, 61, 'Comentario del tema 1266'),
(1267, 37, '18', 4, 61, 'Comentario del tema 1267'),
(1268, 37, '19', 4, 61, 'Comentario del tema 1268'),
(1269, 37, '17', 4, 61, 'Comentario del tema 1269'),
(1270, 37, '16', 4, 61, 'Comentario del tema 1270'),
(1271, 37, '20', 4, 62, 'Comentario del tema 1271'),
(1272, 37, '15', 4, 62, 'Comentario del tema 1272'),
(1273, 37, '18', 4, 62, 'Comentario del tema 1273'),
(1274, 37, '19', 4, 62, 'Comentario del tema 1274'),
(1275, 37, '17', 4, 62, 'Comentario del tema 1275'),
(1276, 37, '16', 4, 62, 'Comentario del tema 1276'),
(1277, 37, '20', 4, 62, 'Comentario del tema 1277'),
(1278, 37, '15', 4, 62, 'Comentario del tema 1278'),
(1279, 37, '18', 4, 62, 'Comentario del tema 1279'),
(1280, 37, '19', 4, 62, 'Comentario del tema 1280'),
	(1281, 37, '17', 4, 63, 'Comentario del tema 1281'),
(1282, 37, '16', 4, 63, 'Comentario del tema 1282'),
(1283, 37, '20', 4, 63, 'Comentario del tema 1283'),
(1284, 37, '15', 4, 63, 'Comentario del tema 1284'),
(1285, 37, '18', 4, 63, 'Comentario del tema 1285'),
(1286, 37, '19', 4, 63, 'Comentario del tema 1286'),
(1287, 37, '17', 4, 63, 'Comentario del tema 1287'),
(1288, 37, '16', 4, 63, 'Comentario del tema 1288'),
(1289, 37, '20', 4, 63, 'Comentario del tema 1289'),
(1290, 37, '15', 4, 63, 'Comentario del tema 1290'),
	(1291, 37, '18', 4, 64, 'Comentario del tema 1291'),
(1292, 37, '19', 4, 64, 'Comentario del tema 1292'),
(1293, 37, '17', 4, 64, 'Comentario del tema 1293'),
(1294, 37, '16', 4, 64, 'Comentario del tema 1294'),
(1295, 37, '20', 4, 64, 'Comentario del tema 1295'),
(1296, 37, '15', 4, 64, 'Comentario del tema 1296'),
(1297, 37, '18', 4, 64, 'Comentario del tema 1297'),
(1298, 37, '19', 4, 64, 'Comentario del tema 1298'),
(1299, 37, '17', 4, 64, 'Comentario del tema 1299'),
(1300, 37, '16', 4, 64, 'Comentario del tema 1300'),
	(1301, 37, '20', 4, 65, 'Comentario del tema 1301'),
(1302, 37, '15', 4, 65, 'Comentario del tema 1302'),
(1303, 37, '18', 4, 65, 'Comentario del tema 1303'),
(1304, 37, '19', 4, 65, 'Comentario del tema 1304'),
(1305, 37, '17', 4, 65, 'Comentario del tema 1305'),
(1306, 37, '16', 4, 65, 'Comentario del tema 1306'),
(1307, 37, '20', 4, 65, 'Comentario del tema 1307'),
(1308, 37, '15', 4, 65, 'Comentario del tema 1308'),
(1309, 37, '18', 4, 65, 'Comentario del tema 1309'),
(1310, 37, '19', 4, 65, 'Comentario del tema 1310'),
	(1311, 37, '17', 4, 66, 'Comentario del tema 1311'),
(1312, 37, '16', 4, 66, 'Comentario del tema 1312'),
(1313, 37, '20', 4, 66, 'Comentario del tema 1313'),
(1314, 37, '15', 4, 66, 'Comentario del tema 1314'),
(1315, 37, '18', 4, 65, 'Comentario del tema 1315'),
(1316, 37, '19', 4, 66, 'Comentario del tema 1316'),
(1317, 37, '17', 4, 66, 'Comentario del tema 1317'),
(1318, 37, '16', 4, 66, 'Comentario del tema 1318'),
(1319, 37, '20', 4, 66, 'Comentario del tema 1319'),
(1320, 37, '15', 4, 66, 'Comentario del tema 1320'),
	(1321, 37, '18', 4, 67, 'Comentario del tema 1321'),
(1322, 37, '19', 4, 67, 'Comentario del tema 1322'),
(1323, 37, '17', 4, 67, 'Comentario del tema 1323'),
(1324, 37, '16', 4, 67, 'Comentario del tema 1324'),
(1325, 37, '20', 4, 67, 'Comentario del tema 1325'),
(1326, 37, '15', 4, 67, 'Comentario del tema 1326'),
(1327, 37, '18', 4, 67, 'Comentario del tema 1327'),
(1328, 37, '19', 4, 67, 'Comentario del tema 1328'),
(1329, 37, '17', 4, 67, 'Comentario del tema 1329'),
(1330, 37, '16', 4, 67 , 'Comentario del tema 1330');
--Paola Garc�a
--Miguel S�nchez




--4� SECUNDARIA  (1401 - 1580)
--Rosa P�rez

--Antonio Lopez
--Silvia Ramos
--Diego Mart�n
--Lorena D�az



--5� SECUNDARIA (1581 - 1760)
--Esteban Quispe
--Marina Flores
--Diego Salinas
--Luciana Rojas
--Andr�s Cruz
--Camila Vargas



------------------CONSULTAS---------------------
--CONSULTA QUE DEVUELVE EL NOMBRE COMPLETO DEL ESTUDIANTE, EL GRADO NIVEL Y CODIGO
SELECT DISTINCT
    U_Docente.id_usuario AS id_docente,
    U_Docente.nombre + ' ' + U_Docente.apellido AS nombre_docente,
    U_Estudiante.id_usuario AS id_estudiante,
    U_Estudiante.nombre + ' ' + U_Estudiante.apellido AS nombre_estudiante,
    Niveles.nombre_nivel,
    Grados.nombre_grado,  -- El nombre del grado viene de la tabla Grados
    Ramas.nombre AS nombre_rama
FROM Notas
INNER JOIN Usuarios U_Docente ON Notas.id_usuario_docente = U_Docente.id_usuario
INNER JOIN Usuarios U_Estudiante ON Notas.id_usuario_estudiante = U_Estudiante.id_usuario
INNER JOIN TemasCurso Temas ON Notas.id_tema = Temas.id_tema
INNER JOIN RamasCurso Ramas ON Temas.id_rama = Ramas.id_rama
INNER JOIN EstudianteGrado EG ON U_Estudiante.id_usuario = EG.id_usuario_estudiante
INNER JOIN Grados ON EG.id_grado = Grados.id_grado
INNER JOIN NivelesEducativos Niveles ON Grados.id_nivel = Niveles.id_nivel
WHERE Niveles.nombre_nivel IN ('Primaria', 'Secundaria')
  AND U_Estudiante.nombre + ' ' + U_Estudiante.apellido = 'Felipe Ruiz'
  AND EG.id_anio_escolar = 4
ORDER BY 
    Niveles.nombre_nivel,
    Grados.nombre_grado,
    nombre_docente,
    nombre_estudiante;


--QUERY PARA MOSTRAR ROL Y NOMBRE COMPLETO USANDO EL ID_USUARIO
SELECT R.nombre_rol,CONCAT(U.nombre,' ',U.apellido) AS Nombre FROM Usuarios U
INNER JOIN Roles R ON R.id_rol= U.id_rol  WHERE U.id_usuario=40

--QUERY PARA MOSTRAR EL GRADO DEL ESTUDIATE Y SU ID
SELECT * FROM EstudianteGrado
WHERE id_usuario_estudiante = 19 AND id_anio_escolar = 4;

--QUERY PARA CONSULTAR QUE CURSOS TIENE CADA ESTUDIANTE POR ID
SELECT DISTINCT E.id_usuario_estudiante,R.id_rama, R.nombre AS nombre_rama, c.nombre_curso
FROM EstudianteGrado E
JOIN TemasCurso T ON E.id_grado = T.id_grado
JOIN RamasCurso R ON T.id_rama = R.id_rama
JOIN Cursos c ON R.id_curso = C.id_curso
WHERE E.id_usuario_estudiante = 13  AND E.id_anio_escolar = 4;

--QUERY PARA BUSCAR A UN ESTUDIANTE SEGUN EL GRADO Y NIVEL ACADEMICO
SELECT 
    u.id_usuario,
    u.nombre + ' ' + u.apellido AS nombre_completo,
    g.nombre_grado,
    ne.nombre_nivel,
    ae.anio
FROM EstudianteGrado eg
JOIN Usuarios u ON eg.id_usuario_estudiante = u.id_usuario
JOIN Grados g ON eg.id_grado = g.id_grado
JOIN NivelesEducativos ne ON g.id_nivel = ne.id_nivel
JOIN AnioEscolar ae ON eg.id_anio_escolar = ae.id_anio_escolar
WHERE g.nombre_grado LIKE '1%' 
  AND ne.nombre_nivel = 'Secundaria'
ORDER BY u.apellido, u.nombre;


--QUERY PARA MOSTRAR LOS CURSOS, RAMA, TEMAS Y NOTAS POR ESTUDIANTE ID
SELECT 
    CONCAT(u.nombre,' ',u.apellido) AS Estudiante,
    c.nombre_curso AS Curso,
    r.nombre AS Rama,
    t.nombre AS Tema,
    n.nota AS Nota,
    ae.anio AS A�o_Escolar
FROM Notas n
INNER JOIN Usuarios u ON n.id_usuario_estudiante = u.id_usuario
INNER JOIN TemasCurso t ON n.id_tema = t.id_tema
INNER JOIN RamasCurso r ON t.id_rama = r.id_rama
INNER JOIN Cursos c ON r.id_curso = c.id_curso
INNER JOIN AnioEscolar ae ON n.id_anio_escolar = ae.id_anio_escolar
WHERE u.id_usuario = 14  

--QUERY PARA BUSCAR EL NOMBRE DEL ESTUDIANTE, SU GRADO CURSOS Y TEMAS //13- 50
SELECT 
    u.nombre + ' ' + u.apellido AS nombre_estudiante,
    ne.nombre_nivel + ' - ' + g.nombre_grado AS grado,
    c.nombre_curso,
    rc.nombre AS nombre_rama,
    tc.nombre AS nombre_tema
FROM EstudianteGrado eg
JOIN Usuarios u ON eg.id_usuario_estudiante = u.id_usuario
JOIN Grados g ON eg.id_grado = g.id_grado
JOIN NivelesEducativos ne ON g.id_nivel = ne.id_nivel
JOIN TemasCurso tc ON g.id_grado = tc.id_grado
JOIN RamasCurso rc ON tc.id_rama = rc.id_rama
JOIN Cursos c ON rc.id_curso = c.id_curso
WHERE u.id_usuario = 13
  AND eg.id_anio_escolar = 4
ORDER BY c.nombre_curso, rc.nombre;

--PROMEDIO GENERAL DE NOTAS DE UN ESTUDIANTE POR GRADO
SELECT 
    u.nombre + ' ' + u.apellido AS Estudiante,
    g.nombre_grado AS Grado,
    ae.anio AS A�o_Escolar,
    n.nota AS Promedio_Notas
FROM Notas n
INNER JOIN Usuarios u ON n.id_usuario_estudiante = u.id_usuario
INNER JOIN TemasCurso t ON n.id_tema = t.id_tema
INNER JOIN Grados g ON t.id_grado = g.id_grado
INNER JOIN AnioEscolar ae ON n.id_anio_escolar = ae.id_anio_escolar
WHERE 
    g.id_grado IN (1,2,3,4,5,6,7,8,9,10,11) -- Primaria del 1 al 6 y Secundaria del 7 al 11
    AND ae.anio = 2024  -- Elige el a�o (2024 es el unico disponible )
GROUP BY u.id_usuario, u.nombre, u.apellido, g.nombre_grado, ae.anio,n.nota
ORDER BY u.nombre, u.apellido,n.nota

 
SELECT 
    g.nombre_grado AS grado,
    rc.nombre AS rama_curso,
    tc.nombre AS tema
FROM TemasCurso tc
JOIN RamasCurso rc ON tc.id_rama = rc.id_rama
JOIN Grados g ON tc.id_grado = g.id_grado
ORDER BY grado, rama_curso, tema;


SELECT 
    ne.nombre_nivel AS nivel_educativo,
    g.nombre_grado AS grado,
    rc.nombre AS rama_curso,
    tc.nombre AS tema,
	n.id_tema,
	n.id_usuario_estudiante AS Estudiante,
	n.id_usuario_docente AS Profesor,
    n.nota
FROM Notas n
JOIN TemasCurso tc ON n.id_tema = tc.id_tema
JOIN RamasCurso rc ON tc.id_rama = rc.id_rama
JOIN Grados g ON tc.id_grado = g.id_grado
JOIN NivelesEducativos ne ON g.id_nivel = ne.id_nivel
JOIN Usuarios u_estudiante ON n.id_usuario_estudiante = u_estudiante.id_usuario
JOIN Usuarios u_docente ON n.id_usuario_docente = u_docente.id_usuario  -- Relacionando el docente que asign� la nota
ORDER BY n.id_tema

SELECT 
    tc.id_tema,
    tc.nombre AS nombre_tema,
    rc.nombre AS nombre_rama,
    c.nombre_curso,
    g.nombre_grado
FROM AsignacionesDocente ad
INNER JOIN RamasCurso rc ON ad.id_rama = rc.id_rama
INNER JOIN Cursos c ON rc.id_curso = c.id_curso
INNER JOIN TemasCurso tc ON tc.id_rama = rc.id_rama AND tc.id_grado = ad.id_grado
INNER JOIN Grados g ON tc.id_grado = g.id_grado
WHERE ad.id_usuario_docente = 2
ORDER BY tc.id_tema;


SELECT 
    ad.id_usuario_docente AS id_profesor,
    u.nombre + ' ' + u.apellido AS nombre_profesor,
    tc.nombre AS nombre_tema,
    COUNT(*) AS veces_ense�ado
FROM AsignacionesDocente ad
INNER JOIN Usuarios u ON ad.id_usuario_docente = u.id_usuario
INNER JOIN TemasCurso tc 
    ON tc.id_rama = ad.id_rama AND tc.id_grado = ad.id_grado
GROUP BY ad.id_usuario_docente, u.nombre, u.apellido, tc.nombre
HAVING COUNT(*) > 1
ORDER BY ad.id_usuario_docente, veces_ense�ado DESC;








