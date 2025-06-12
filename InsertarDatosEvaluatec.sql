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
('José', 'Gutiérrez', 'jose@gmail.com', '1234', 1), 
('Sofía', 'Hernández', 'sofia@gmail.com', '1234', 1),
('Luis', 'Martínez', 'luis@gmail.com', '1234', 1), 
('Marta', 'González', 'marta@gmail.com', '1234', 1),
('Juan', 'Pérez', 'juan@gmail.com', '1234', 1),
('Raúl', 'Jiménez', 'raulJ@gmail.com', '1234', 1),
('Elena', 'López', 'elena@gmail.com', '1234', 1),
('María', 'García', 'mariaG@gmail.com', '1234', 1),
('Gabriel', 'Torres', 'gabriel@gmail.com', '1234', 1),
('Ana', 'Gomez', 'ana1@gmail.com', '1234', 2),
('Carlos', 'Ramirez', 'carlos@gmail.com', '1234', 2),
('Cristina', 'Fernandez', 'cristina@gmail.com', '1234', 2),
('Karen', 'Rocio', 'karen@gmail.com', '1234', 2),
('Alberto', 'Martinez', 'alberto@gmail.com', '1234', 2),
('Lucia', 'Rubi', 'lucia@gmail.com', '1234', 2),
('Fabiola', 'Nuñez', 'fabiola@gmail.com', '1234', 2),
('Santiago', 'Martínez', 'santiago@gmail.com', '1234', 2), 
('Valeria', 'Serrano', 'valeria@gmail.com', '1234', 2), 
('Pedro', 'Álvarez', 'pedro@gmail.com', '1234', 2),
('Manuel', 'González', 'manuel@gmail.com', '1234', 2), 
('Patricia', 'Morales', 'patricia@gmail.com', '1234', 2), 
('Luis', 'Rivera', 'luisR@gmail.com', '1234', 2), 
('Luisana', 'Ramírez', 'luisana@gmail.com', '1234', 2),
('Eduardo', 'Salazar', 'eduardo@gmail.com', '1234', 2),
('Natalia', 'Vargas', 'natalia@gmail.com', '1234', 2),
('Ricardo', 'Castro', 'ricardo1@gmail.com', '1234', 2),
('Juliana', 'Mendoza', 'juliana@gmail.com', '1234', 2),
('Victor', 'Ortiz', 'victor@gmail.com', '1234', 2),
('Catalina', 'Moreno', 'catalina@gmail.com', '1234', 2),
('Luis', 'González', 'luisG@gmail.com', '1234', 2),
('Andrea', 'Paredes', 'andrea@gmail.com', '1234', 2),
('Javier', 'Hernández', 'javier@gmail.com', '1234', 2),
('Carolina', 'Martínez', 'carolina@gmail.com', '1234', 2),
('Felipe', 'Ruiz', 'felipe@gmail.com', '1234', 2),
('Paola', 'García', 'paola@gmail.com', '1234', 2),
('Miguel', 'Sánchez', 'miguel@gmail.com', '1234', 2),
('Rosa', 'Pérez', 'rosa@gmail.com', '1234', 2), 
('Antonio', 'Lopez', 'antonio@gmail.com', '1234', 2),
('Silvia', 'Ramos', 'silvia@gmail.com', '1234', 2),
('Diego', 'Martín', 'diego@gmail.com', '1234', 2),
('Lorena', 'Díaz', 'lorena@gmail.com', '1234', 2),
('Esteban', 'Quispe', 'esteban@gmail.com', '1234', 2),
('Marina', 'Flores', 'marina@gmail.com', '1234', 2),
('Diego', 'Salinas', 'diego1@gmail.com', '1234', 2),
('Luciana', 'Rojas', 'luciana@gmail.com', '1234', 2),
('Andrés', 'Cruz', 'andres@gmail.com', '1234', 2),
('Camila', 'Vargas', 'camila@gmail.com', '1234', 2),
('Mario', 'Morales', 'mario1@gmail.com', '1234', 1),
('Ana', 'Ramírez', 'anaR@gmail.com', '1234', 1),
('Javier', 'Vega', 'javierV@gmail.com', '1234', 1),
('Silvia', 'Díaz', 'silviaD@gmail.com', '1234', 1),
('Patricia', 'Vargas', 'patriciaV@gmail.com', '1234', 1),
('María', 'López', 'mariaL@gmail.com', '1234', 1),
('Eduardo', 'Sánchez', 'eduardoS@gmail.com', '1234', 1),
('Claudia', 'Gómez', 'claudiaG@gmail.com', '1234', 1),
('Raúl', 'Pérez', 'raulP@gmail.com', '1234', 1),
('Marcela', 'Reyes', 'marcela@gmail.com', '1234', 1),
('Andrés', 'Luna', 'andres.luna@gmail.com', '1234', 1),
('Tatiana', 'Campos', 'tatiana@gmail.com', '1234', 1),
('Rodrigo', 'Delgado', 'rodrigo.delgado@gmail.com', '1234', 1),
('Valentina', 'Silva', 'valentina.silva@gmail.com', '1234', 1),
('Sebastián', 'Mejía', 'sebastian.mejia@gmail.com', '1234', 1),
('Paula', 'Cárdenas', 'paula.cardenas@gmail.com', '1234', 1),
('Gonzalo', 'Estrada', 'gonzalo.estrada@gmail.com', '1234', 1);


SELECT * FROM Usuarios WHERE id_rol=1
INSERT INTO NivelesEducativos (id_nivel, nombre_nivel) VALUES
(1, 'Primaria'),
(2, 'Secundaria');


-- PRIMARIA
INSERT INTO Grados (id_grado, id_nivel, nombre_grado) VALUES
(1, 1, '1° Primaria'),
(2, 1, '2° Primaria'),
(3, 1, '3° Primaria'),
(4, 1, '4° Primaria'),
(5, 1, '5° Primaria'),
(6, 1, '6° Primaria'),
-- SECUNDARIA
(7, 2, '1° Secundaria'),
(8, 2, '2° Secundaria'),
(9, 2, '3° Secundaria'),
(10, 2, '4° Secundaria'),
(11, 2, '5° Secundaria');


INSERT INTO AnioEscolar (anio, activo) VALUES
(2021, 0),
(2022, 0),
(2023,0),
(2024,1);

-- Asignación de estudiantes a grados para el año escolar 2024
INSERT INTO EstudianteGrado (id_usuario_estudiante, id_grado, id_anio_escolar) VALUES
(13, 1, 4),  -- Ana Gómez 
(14, 1, 4),  -- Carlos Ramírez 
(15, 1, 4),  -- Cristina Fernández 
(16, 2, 4),  -- Karen Rocio 
(17, 2, 4),  -- Alberto Martínez
(18, 2, 4),  -- Lucía Rubí 
(19, 3, 4),  -- Fabiola Nuñez 
(20, 3, 4),  -- Santiago Martínez 
(21, 3, 4),  -- Valeria Serrano 
(22, 4, 4),  -- Pedro Álvarez 
(23, 4, 4),  -- Manuel González 
(24, 4, 4),  -- Patricia Morales 
(25, 5, 4),  -- Luis Rivera 
(26, 5, 4),  -- Luisana Ramírez 
(27, 5, 4),  -- Eduardo Salazar 
(28, 6, 4),  -- Natalia Vargas 
(29, 6, 4),  -- Ricardo Castro 
(30, 6, 4),  -- Juliana Mendoza 
(31, 7, 4),  -- Victor Ortiz
(32, 7, 4), -- Catalina Moreno
(33, 7, 4), -- Luis González 
(34, 8, 4), -- Andrea Paredes 
(35,8, 4),   --Javier Hernández
(36,8, 4),   --Carolina Martínez
(37,9, 4),   --Felipe Ruiz
(38,9, 4),   --Paola García
(39,9, 4),   --Miguel Sánchez
(40,10,4),   --Rosa Pérez
(41,10,4),   --Antonio Lopez
(42,10,4),   --Silvia Ramos
(43,10,4),   --Diego Martín
(44,10,4),   --Lorena Díaz
(45,11,4),   --Esteban Quispe
(46, 11, 4), --Marina Flores
(47, 11, 4), --Diego Salinas
(48, 11, 4), --Luciana Rojas
(49, 11, 4), --Andrés Cruz
(50, 11, 4); --Camila Vargas

INSERT INTO Cursos (nombre_curso) VALUES
('Matemáticas'),
('Comunicación'),
('Ciencia y Tecnología'),
('Personal Social'),
('Educación Física'),
('Arte y Cultura'),
('Inglés'),
('Educación Religiosa'),
('Educación para el Trabajo'),
('Tutoría y Orientación Educativa');

-- Inserción de ramas de curso
INSERT INTO RamasCurso (id_curso, nombre) VALUES 
-- MATEMÁTICAS (id_curso = 1)
(1, 'Álgebra'),
(1, 'Geometría'),
(1, 'Aritmética'),
(1,'Trigonometria'),
(1, 'Razonamiento Matemático'),
-- COMUNICACIÓN (id_curso = 2)
(2, 'Lenguaje'),
(2, 'Literatura'),
(2, 'Razonamiento Verbal'),
-- CIENCIA Y TECNOLOGÍA (id_curso = 3)
(3,'Ciencia Tecnologia y Ambiente'),
(3, 'Biología'),
(3, 'Química'),
(3, 'Física'),
-- PERSONAL SOCIAL (id_curso = 4)
(4, 'Educación Cívica'),
-- EDUCACIÓN FÍSICA (id_curso = 5)
(5, 'Educación Física'),
-- ARTE Y CULTURA (id_curso = 6)
(6, 'Arte'),
-- INGLÉS (id_curso = 7)
(7, 'Inglés'),
-- EDUCACIÓN RELIGIOSA (id_curso = 8)
(8, 'Religion'),
-- EDUCACIÓN PARA EL TRABAJO (id_curso = 9)
(9, 'Educación para el Trabajo'),
-- TUTORÍA Y ORIENTACIÓN EDUCATIVA (id_curso = 10)
(10, 'Tutoría');

--PRIMARIA
--primero de primaria
INSERT INTO TemasCurso (id_rama, id_grado , nombre) VALUES
-- Aritmética
(3, 1, 'Contar del 1 al 100'),
(3, 1, 'Sumas básicas'),
(3, 1, 'Restas básicas'),
(3, 1, 'Uso del número cero'),
(3, 1, 'Números pares e impares'),
(3, 1, 'Descomposición de números'),
(3, 1, 'Valor posicional'),
(3, 1, 'Resolver problemas simples'),
(3, 1, 'Uso de objetos para sumar'),
(3, 1, 'Comparar números'),

-- Lenguaje
(5, 1, 'Sonidos de letras'),
(5, 1, 'Sílabas y palabras'),
(5, 1, 'Lectura de palabras simples'),
(5, 1, 'Comprensión de instrucciones'),
(5, 1, 'Diferenciación de letras'),
(5, 1, 'Escucha activa'),
(5, 1, 'Relato de experiencias'),
(5, 1, 'Uso del lenguaje en diálogos'),
(5, 1, 'Descripciones orales'),
(5, 1, 'Canciones infantiles'),

-- Ciencia, Tecnología y Ambiente
(6, 1, 'Partes del cuerpo humano'),
(6, 1, 'Los sentidos'),
(6, 1, 'Alimentos y salud'),
(6, 1, 'Las plantas'),
(6, 1, 'Los animales'),
(6, 1, 'Hábitats de los seres vivos'),
(6, 1, 'El ciclo de vida'),
(6, 1, 'El agua, aire y suelo'),
(6, 1, 'Materiales y sus usos'),
(6, 1, 'La energía'),
-- Educación Física
(7, 1, 'Movimientos básicos: correr, saltar, lanzar'),
(7, 1, 'Juegos tradicionales'),
(7, 1, 'Coordinación y equilibrio'),
(7, 1, 'Desarrollo de habilidades motrices gruesas'),
(7, 1, 'Respeto por las reglas y trabajo en equipo'),
-- Arte y Cultura
(9, 1, 'Dibujo y pintura con diferentes materiales'),
(9, 1, 'Modelado con arcilla o plastilina'),
(9, 1, 'Reconocimiento de obras y artistas peruanos'),
(9, 1, 'Expresión corporal y danza'),
(9, 1, 'Música: ritmos y sonidos'),
-- Religión
(10, 1, 'Conocimiento de Dios a través de la creación'),
(10, 1, 'Historias bíblicas adaptadas'),
(10, 1, 'Valores: amor, respeto, solidaridad'),
(10, 1, 'Celebraciones religiosas importantes'),
(10, 1, 'Agradecimiento y cuidado del entorno'),
-- Tutoría
(11, 1, 'Conocimiento de sí mismo'),
(11, 1, 'Relaciones interpersonales'),
(11, 1, 'Resolución de conflictos'),
(11, 1, 'Importancia de la familia y la escuela'),
(11, 1, 'Hábitos de higiene y cuidado personal'),



--2° PRIMARIA
-- Insertar Temas para Matemática - Aritmética
(3, 2, 'Suma y resta con números hasta 999'),
(3, 2, 'Multiplicación por una cifra'),
(3, 2, 'Multiplicación por dos cifras'),
(3, 2, 'División exacta'),
(3, 2, 'División con residuo'),
(3, 2, 'Resolución de problemas de suma y resta'),
(3, 2, 'Resolución de problemas de multiplicación'),
(3, 2, 'Resolución de problemas de división'),
(3, 2, 'Uso de la calculadora en operaciones básicas'),
(3, 2, 'Estimación de resultados'),

-- Insertar Temas para Comunicación - Lenguaje
(6, 2, 'Comprensión de textos narrativos'),
(6, 2, 'Identificación de personajes y escenarios'),
(6, 2, 'Secuencia de eventos en una historia'),
(6, 2, 'Uso de conectores temporales'),
(6, 2, 'Producción de textos narrativos'),
(6, 2, 'Revisión y corrección de textos escritos'),
(6, 2, 'Lectura en voz alta y expresión oral'),
(6, 2, 'Interpretación de ilustraciones en textos'),
(6, 2, 'Uso adecuado del vocabulario'),
(6, 2, 'Desarrollo de la creatividad en la escritura'),

-- Insertar Temas para Ciencia, Tecnología y Ambiente
(9, 2, 'El cuerpo humano y sus funciones'),
(9, 2, 'Las plantas y sus partes'),
(9, 2, 'El ciclo del agua'),
(9, 2, 'El clima y las estaciones del año'),
(9, 2, 'El medio ambiente y su conservación'),
(9, 2, 'Los animales y sus hábitats'),
(9, 2, 'La importancia del aire'),
(9, 2, 'La energía y sus fuentes'),
(9, 2, 'Los recursos naturales y su uso responsable'),
(9, 2, 'La contaminación y cómo prevenirla'),
-- Insertar Temas para Personal Social - Educación Cívica
(13, 2, 'Derechos y deberes de los niños'),
(13, 2, 'La convivencia en la escuela'),
(13, 2, 'El respeto a los demás'),
(13, 2, 'La importancia de la solidaridad'),
(13, 2, 'La importancia de la paz y la tolerancia'),
(13, 2, 'La familia y sus roles'),
(13, 2, 'El respeto por las normas de convivencia'),
(13, 2, 'Los valores en la sociedad'),
(13, 2, 'La democracia y participación ciudadana'),
(13, 2, 'Los símbolos patrios y su importancia'),
-- Insertar Temas para Educación Física
(14, 2, 'Juegos y deportes de equipo'),
(14, 2, 'La importancia de la actividad física'),
(14, 2, 'La coordinación motora gruesa'),
(14, 2, 'Ejercicios de fuerza y resistencia'),
(14, 2, 'La importancia de la nutrición en el deporte'),
(14, 2, 'Respiración y técnicas de relajación'),
(14, 2, 'Juegos de habilidades motrices básicas'),
(14, 2, 'La importancia de la higiene personal'),
(14, 2, 'El calentamiento y estiramiento'),
(14, 2, 'La actividad física y la salud'),
-- Insertar Temas para Arte y Cultura
(15, 2, 'La pintura y sus estilos'),
(15, 2, 'Los colores primarios y secundarios'),
(15, 2, 'El dibujo y la forma'),
(15, 2, 'La música y los instrumentos'),
(15, 2, 'El teatro y la expresión corporal'),
(15, 2, 'La danza y el movimiento'),
(15, 2, 'La escultura y las formas en 3D'),
(15, 2, 'El arte en la naturaleza'),
(15, 2, 'El valor cultural de las artes'),
(15, 2, 'Creación de obras artísticas propias'),
-- Insertar Temas para Religión
(17, 2, 'Los valores en la religión'),
(17, 2, 'El respeto y la ayuda al prójimo'),
(17, 2, 'Los milagros de Jesús'),
(17, 2, 'El amor y la compasión'),
(17, 2, 'La vida de los santos'),
(17, 2, 'Las enseñanzas de la Biblia'),
(17, 2, 'La oración y su importancia'),
(17, 2, 'El perdón y la reconciliación'),
(17, 2, 'Los sacramentos en la religión católica'),
(17, 2, 'La paz y la unidad en la fe'),
-- Insertar Temas para Tutoría
(19, 2, 'El desarrollo emocional en los niños'),
(19, 2, 'La importancia de la autoestima'),
(19, 2, 'La resolución de conflictos'),
(19, 2, 'La importancia de la amistad'),
(19, 2, 'Los derechos y responsabilidades del niño'),
(19, 2, 'La importancia de la salud mental'),
(19, 2, 'La empatía y el respeto hacia los demás'),
(19, 2, 'La gestión de emociones'),
(19, 2, 'El trabajo en equipo y la colaboración'),
(19, 2, 'El rol de la familia en el bienestar del niño'),

--3° PRIMARIA
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 3, 'Figuras geométricas planas y espaciales'),
(2, 3, 'Propiedades de los triángulos y cuadriláteros'),
(2, 3, 'Clasificación de ángulos: agudos, rectos y obtusos'),
(2, 3, 'Simetría en figuras geométricas'),
(2, 3, 'Perímetro y área de figuras planas'),
(2, 3, 'Construcción de figuras con regla y compás'),
(2, 3, 'Relación entre áreas y perímetros'),
(2, 3, 'Identificación de líneas rectas, curvas y segmentos'),
(2, 3, 'El concepto de ángulos interiores y exteriores'),
(2, 3, 'Transformaciones geométricas: traslaciones, rotaciones y simetría'),

-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 3, 'Suma y resta con números hasta 1000'),
(3, 3, 'Multiplicación por una y dos cifras'),
(3, 3, 'División exacta y con residuo'),
(3, 3, 'Resolución de problemas de multiplicación y división'),
(3, 3, 'Uso de la calculadora para operaciones básicas'),
(3, 3, 'Estimación de resultados en operaciones'),
(3, 3, 'Fracciones: comprensión y operaciones'),
(3, 3, 'Resolución de problemas con fracciones'),
(3, 3, 'Descomposición de números en sumandos'),
(3, 3, 'Operaciones con números decimales'),

-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 3, 'Problemas de lógica matemática'),
(5, 3, 'Identificación de patrones numéricos y geométricos'),
(5, 3, 'Desarrollo del pensamiento lógico y crítico'),
(5, 3, 'Uso de tablas, gráficos y diagramas para organizar información'),
(5, 3, 'Secuencias lógicas y numéricas'),
(5, 3, 'Clasificación y seriación de objetos'),
(5, 3, 'Resolución de problemas con estrategias matemáticas'),
(5, 3, 'Razonamiento deductivo e inductivo en problemas'),
(5, 3, 'Problemas con relaciones espaciales y numéricas'),
(5, 3, 'Pensamiento lógico en situaciones cotidianas'),

-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 3, 'Comprensión de textos narrativos y descriptivos'),
(6, 3, 'Estructura de una narración: inicio, desarrollo y conclusión'),
(6, 3, 'Uso de conectores lógicos en la redacción'),
(6, 3, 'Producción de textos narrativos y descriptivos'),
(6, 3, 'Lectura en voz alta y pronunciación clara'),
(6, 3, 'Revisión y corrección de textos escritos'),
(6, 3, 'Expresión de ideas en forma escrita y oral'),
(6, 3, 'Redacción de cartas, correos y mensajes'),
(6, 3, 'Identificación de ideas principales y secundarias en un texto'),
(6, 3, 'Elaboración de resúmenes y esquemas'),

-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 3, 'Sinónimos y antónimos'),
(8, 3, 'Diminutivos y aumentativos'),
(8, 3, 'Analogías verbales'),
(8, 3, 'Clasificación de palabras'),
(8, 3, 'Formación de palabras compuestas'),
(8, 3, 'Orden alfabético'),
(8, 3, 'Uso de diccionarios'),
(8, 3, 'Comprensión de instrucciones orales'),
(8, 3, 'Expresión de ideas de manera clara'),
(8, 3, 'Participación en conversaciones grupales'),

-- Insertar Temas para Ciencia, Tecnología y Ambiente (id_rama = 9)
(9, 3, 'El cuerpo humano y sus funciones'),
(9, 3, 'Las plantas y sus partes'),
(9, 3, 'El ciclo del agua'),
(9, 3, 'El clima y las estaciones del año'),
(9, 3, 'El medio ambiente y su conservación'),
(9, 3, 'Los animales y sus hábitats'),
(9, 3, 'La importancia del aire'),
(9, 3, 'La energía y sus fuentes'),
(9, 3, 'Los recursos naturales y su uso responsable'),
(9, 3, 'La contaminación y cómo prevenirla'),

-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 3, 'Derechos y deberes de los niños'),
(13, 3, 'La convivencia en la escuela'),
(13, 3, 'El respeto a los demás'),
(13, 3, 'La importancia de la solidaridad'),
(13, 3, 'La importancia de la paz y la tolerancia'),
(13, 3, 'La democracia y la participación'),
(13, 3, 'Los valores en la familia y la sociedad'),
(13, 3, 'Las leyes y su cumplimiento'),
(13, 3, 'La igualdad de derechos'),
(13, 3, 'La importancia de cuidar el medio ambiente'),

-- Insertar Temas para Educación Física (id_rama = 14)
(14, 3, 'Ejercicios para mejorar la coordinación motora'),
(14, 3, 'Juegos deportivos y su reglamento'),
(14, 3, 'La importancia de la actividad física'),
(14, 3, 'El calentamiento y estiramientos antes de ejercitarse'),
(14, 3, 'Juegos tradicionales'),
(14, 3, 'La salud y el ejercicio físico'),
(14, 3, 'Deportes en equipo y cooperación'),
(14, 3, 'La respiración y el ejercicio físico'),
(14, 3, 'La higiene personal y la actividad física'),
(14, 3, 'Los deportes de aventura'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 3, 'Dibujo y pintura'),
(15, 3, 'La expresión artística a través de la música'),
(15, 3, 'La escultura y su historia'),
(15, 3, 'El teatro y la interpretación'),
(15, 3, 'La importancia del arte en la sociedad'),
(15, 3, 'El arte como medio de comunicación'),
(15, 3, 'Las técnicas de grabado y collage'),
(15, 3, 'El diseño gráfico y la creatividad'),
(15, 3, 'La historia del arte'),
(15, 3, 'La interpretación musical y la danza'),

-- Insertar Temas para Inglés (id_rama = 16)
(16, 3, 'Vocabulario básico en inglés'),
(16, 3, 'Expresión oral en inglés: preguntas y respuestas'),
(16, 3, 'El alfabeto en inglés'),
(16, 3, 'Frases comunes en inglés'),
(16, 3, 'La familia en inglés'),
(16, 3, 'La casa en inglés'),
(16, 3, 'Los números en inglés'),
(16, 3, 'La comida en inglés'),
(16, 3, 'Las estaciones del año en inglés'),
(16, 3, 'El tiempo y el clima en inglés'),

-- Insertar Temas para Religión (id_rama = 17)
(17, 3, 'El amor y el respeto en la religión'),
(17, 3, 'Los valores cristianos'),
(17, 3, 'La vida de Jesús'),
(17, 3, 'La oración y sus tipos'),
(17, 3, 'Los mandamientos'),
(17, 3, 'La solidaridad en la religión'),
(17, 3, 'La importancia del perdón'),
(17, 3, 'Las enseñanzas de la Biblia'),
(17, 3, 'La importancia de la paz y la armonía'),
(17, 3, 'La participación en la comunidad religiosa'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 3, 'La importancia de la autoestima'),
(19, 3, 'Cómo trabajar en equipo'),
(19, 3, 'La importancia de la comunicación efectiva'),
(19, 3, 'La resolución de conflictos'),
(19, 3, 'El manejo de las emociones'),
(19, 3, 'Los derechos y responsabilidades de los estudiantes'),
(19, 3, 'La importancia del esfuerzo en el estudio'),
(19, 3, 'La organización y planificación del tiempo'),
(19, 3, 'La importancia de los hábitos saludables'),
(19, 3, 'La convivencia escolar y el respeto a los demás'),
--4° PRIMARIA
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 4, 'Polígonos y sus propiedades'),
(2, 4, 'Perímetro de polígonos regulares e irregulares'),
(2, 4, 'Área de triángulos, rectángulos y cuadriláteros'),
(2, 4, 'Volumen de cuerpos geométricos: cubos y prismas'),
(2, 4, 'Simetría axial y central en figuras geométricas'),
(2, 4, 'Propiedades de los ángulos en triángulos y cuadriláteros'),
(2, 4, 'Ángulos interiores y exteriores de un triángulo'),
(2, 4, 'Construcción de figuras geométricas con herramientas básicas'),
(2, 4, 'El concepto de diagonales en polígonos'),
(2, 4, 'Uso de la regla y compás en construcciones geométricas'),

-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 4, 'División larga y corta'),
(3, 4, 'Multiplicación de números con más de dos cifras'),
(3, 4, 'Operaciones con números decimales'),
(3, 4, 'Redondeo y aproximación de números decimales'),
(3, 4, 'Fracciones equivalentes'),
(3, 4, 'Conversión entre fracciones, decimales y porcentajes'),
(3, 4, 'Uso de fracciones en problemas de la vida cotidiana'),
(3, 4, 'Estimación de resultados en operaciones de cálculo'),
(3, 4, 'Problemas de mezcla y fracciones en proporciones'),
(3, 4, 'Uso de la calculadora para operaciones complejas'),

-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 4, 'Secuencias numéricas y lógicas'),
(5, 4, 'Patrones en números y figuras geométricas'),
(5, 4, 'Resolución de problemas mediante lógica deductiva'),
(5, 4, 'Razonamiento inductivo y patrones matemáticos'),
(5, 4, 'Uso de tablas y diagramas para organizar información matemática'),
(5, 4, 'Problemas con razonamiento numérico y algebraico'),
(5, 4, 'Razonamiento lógico en problemas de la vida diaria'),
(5, 4, 'Solución de problemas con diagramas de Venn y tablas de verdad'),
(5, 4, 'Estrategias para resolver problemas complejos'),
(5, 4, 'Desarrollo de habilidades para pensar de manera lógica y crítica'),

-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 4, 'Comprensión lectora de textos narrativos y expositivos'),
(6, 4, 'Desarrollo de la expresión oral y escrita'),
(6, 4, 'Estructura de un texto: introducción, desarrollo y conclusión'),
(6, 4, 'Uso adecuado de conectores y nexos en la redacción'),
(6, 4, 'Elaboración de resúmenes y esquemas a partir de textos'),
(6, 4, 'Comprensión y análisis de textos argumentativos'),
(6, 4, 'Producción de textos expositivos y descriptivos'),
(6, 4, 'Lectura de textos de distintos géneros literarios'),
(6, 4, 'Vocabulario en la redacción de textos'),
(6, 4, 'Uso adecuado de la puntuación y la ortografía en la escritura'),

-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 4, 'Sinónimos y antónimos de palabras comunes'),
(8, 4, 'Formación de analogías verbales'),
(8, 4, 'Identificación de errores en la concordancia verbal y nominal'),
(8, 4, 'Uso de adjetivos y sustantivos en contextos orales y escritos'),
(8, 4, 'Clasificación de palabras por su significado'),
(8, 4, 'Construcción de frases y oraciones con diferentes estructuras gramaticales'),
(8, 4, 'El uso correcto de los tiempos verbales'),
(8, 4, 'Interpretación de instrucciones orales'),
(8, 4, 'Desarrollo de habilidades para participar en conversaciones grupales'),
(8, 4, 'Desarrollo del vocabulario mediante lectura y actividades prácticas'),

-- Insertar Temas para Ciencia, Tecnología y Ambiente (id_rama = 9)
(9, 4, 'Los ecosistemas y la biodiversidad'),
(9, 4, 'El ciclo del agua en la naturaleza'),
(9, 4, 'La contaminación y sus efectos en el medio ambiente'),
(9, 4, 'El cambio climático y su impacto'),
(9, 4, 'La energía y sus fuentes renovables y no renovables'),
(9, 4, 'La clasificación de los seres vivos'),
(9, 4, 'Los recursos naturales y su conservación'),
(9, 4, 'Los sistemas ecológicos y su funcionamiento'),
(9, 4, 'El reciclaje y la importancia del cuidado ambiental'),
(9, 4, 'La importancia de la agricultura sostenible'),

-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 4, 'Los derechos y deberes de los niños en la sociedad'),
(13, 4, 'El concepto de justicia y equidad'),
(13, 4, 'La importancia de la solidaridad y el respeto'),
(13, 4, 'La convivencia pacífica en la escuela y la comunidad'),
(13, 4, 'Los valores cívicos: honestidad, responsabilidad y respeto'),
(13, 4, 'La participación en la vida pública'),
(13, 4, 'Los símbolos patrios y su significado'),
(13, 4, 'La igualdad ante la ley'),
(13, 4, 'La democracia y los derechos humanos'),
(13, 4, 'El respeto por la diversidad cultural'),

-- Insertar Temas para Educación Física (id_rama = 14)
(14, 4, 'Desarrollo de habilidades motrices gruesas y finas'),
(14, 4, 'La importancia de la actividad física para la salud'),
(14, 4, 'Los deportes: reglas y prácticas'),
(14, 4, 'El trabajo en equipo en actividades deportivas'),
(14, 4, 'La coordinación y el equilibrio en los ejercicios físicos'),
(14, 4, 'La higiene y los cuidados personales en el deporte'),
(14, 4, 'Los juegos tradicionales y populares'),
(14, 4, 'El calentamiento y enfriamiento antes y después del ejercicio'),
(14, 4, 'La nutrición y su relación con el rendimiento físico'),
(14, 4, 'El respeto por las reglas en los deportes'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 4, 'El dibujo y la pintura como forma de expresión'),
(15, 4, 'La música como expresión artística'),
(15, 4, 'La danza y su significado en las diferentes culturas'),
(15, 4, 'La escultura y el modelado de formas'),
(15, 4, 'Los colores, texturas y formas en el arte'),
(15, 4, 'El arte y la comunicación visual'),
(15, 4, 'Los géneros artísticos: pintura, música, danza y teatro'),
(15, 4, 'La interpretación y creación de obras de arte'),
(15, 4, 'El arte en la historia y las civilizaciones'),
(15, 4, 'La creación de proyectos artísticos'),

-- Insertar Temas para Inglés (id_rama = 16)
(16, 4, 'Vocabulario básico en inglés relacionado con la familia'),
(16, 4, 'Frases y expresiones comunes en inglés'),
(16, 4, 'La familia y los miembros del hogar en inglés'),
(16, 4, 'Los días de la semana y las estaciones del año en inglés'),
(16, 4, 'La hora y la fecha en inglés'),
(16, 4, 'Las profesiones y ocupaciones en inglés'),
(16, 4, 'Las actividades diarias en inglés'),
(16, 4, 'Los verbos de acción más comunes en inglés'),
(16, 4, 'Frases para dar direcciones en inglés'),
(16, 4, 'El uso de adjetivos y sustantivos en inglés'),

-- Insertar Temas para Religión (id_rama = 17)
(17, 4, 'El amor y la paz en la religión'),
(17, 4, 'La solidaridad y la ayuda al prójimo'),
(17, 4, 'La oración y la meditación como medios de comunicación con Dios'),
(17, 4, 'Los principales personajes bíblicos'),
(17, 4, 'La vida de Jesús y sus enseñanzas'),
(17, 4, 'El respeto a la vida y la creación divina'),
(17, 4, 'Los sacramentos en la iglesia'),
(17, 4, 'La importancia de la fe y la esperanza'),
(17, 4, 'La familia como núcleo de la vida cristiana'),
(17, 4, 'Los valores cristianos en la vida cotidiana'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 4, 'La importancia de la autoestima y la confianza'),
(19, 4, 'Cómo gestionar el tiempo de manera eficaz'),
(19, 4, 'La resolución de conflictos en el entorno escolar'),
(19, 4, 'El respeto y la empatía con los demás'),
(19, 4, 'La importancia de las decisiones responsables'),
(19, 4, 'El trabajo en equipo y la cooperación'),
(19, 4, 'La gestión de las emociones en situaciones conflictivas'),
(19, 4, 'La participación activa en actividades escolares'),
(19, 4, 'La importancia del esfuerzo personal'),
(19, 4, 'La convivencia escolar y la relación con los compañeros'),

--5° PRIMARIA
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 5, 'Propiedades de los polígonos regulares e irregulares'),
(2, 5, 'Perímetro y área de triángulos, cuadriláteros y polígonos'),
(2, 5, 'Ángulos internos y externos en los polígonos'),
(2, 5, 'El cálculo del volumen de cuerpos geométricos como prismas y pirámides'),
(2, 5, 'El teorema de Pitágoras en triángulos rectángulos'),
(2, 5, 'Construcción de figuras geométricas con compás y regla'),
(2, 5, 'Simetría en las figuras geométricas'),
(2, 5, 'Descomposición de figuras geométricas en otras más simples'),
(2, 5, 'El concepto de coordenadas cartesianas en el plano'),
(2, 5, 'Transformaciones geométricas: traslaciones, rotaciones y reflexiones'),
-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 5, 'Operaciones con números decimales'),
(3, 5, 'Multiplicación y división de fracciones'),
(3, 5, 'Operaciones con porcentajes'),
(3, 5, 'Cálculo de porcentajes de un número'),
(3, 5, 'Descuento y aumento porcentual'),
(3, 5, 'Problemas de proporciones y razones'),
(3, 5, 'La relación entre fracciones, decimales y porcentajes'),
(3, 5, 'Estimación de resultados en operaciones con grandes números'),
(3, 5, 'Cálculo de intereses simples y compuestos'),
(3, 5, 'El uso de la regla de tres en problemas prácticos'),
-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 5, 'Patrones numéricos y secuencias'),
(5, 5, 'Problemas de lógica con números'),
(5, 5, 'Razonamiento inductivo y deductivo'),
(5, 5, 'El uso de tablas y gráficos para resolver problemas matemáticos'),
(5, 5, 'Resolución de problemas mediante el análisis lógico'),
(5, 5, 'Combinaciones y permutaciones'),
(5, 5, 'Estrategias para la solución de problemas complejos'),
(5, 5, 'Solución de problemas con diagramas de Venn y redes de relaciones'),
(5, 5, 'Desarrollo de razonamiento analítico y abstracto'),
(5, 5, 'Resolución de problemas de álgebra mediante razonamiento lógico'),
-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 5, 'Comprensión lectora de textos narrativos y expositivos'),
(6, 5, 'Uso adecuado de la puntuación y ortografía en los textos escritos'),
(6, 5, 'Estructura de los textos narrativos y expositivos'),
(6, 5, 'Redacción de ensayos, resúmenes y cartas formales'),
(6, 5, 'Desarrollo de la expresión oral y escrita'),
(6, 5, 'Análisis de textos argumentativos'),
(6, 5, 'Desarrollo del vocabulario mediante la lectura de textos variados'),
(6, 5, 'Escritura de textos descriptivos, narrativos y expositivos'),
(6, 5, 'El uso de conectores lógicos para la organización de las ideas'),
(6, 5, 'Lectura crítica y análisis de diversos géneros literarios'),
-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 5, 'Formación de analogías verbales'),
(8, 5, 'Sinónimos, antónimos y homónimos'),
(8, 5, 'Uso de la concordancia verbal y nominal en textos escritos'),
(8, 5, 'El uso adecuado de adjetivos, sustantivos y verbos en los textos'),
(8, 5, 'Interpretación de textos narrativos y expositivos'),
(8, 5, 'Clasificación de oraciones según su estructura gramatical'),
(8, 5, 'Completación de oraciones con palabras adecuadas'),
(8, 5, 'Desarrollo de habilidades de expresión oral en debates y discusiones'),
(8, 5, 'Comprensión de textos argumentativos'),
(8, 5, 'El uso de los tiempos verbales en la narración y descripción'),
-- Insertar Temas para CTA (id_rama = 9)
(9, 5, 'Los sistemas del cuerpo humano: digestivo, respiratorio, circulatorio'),
(9, 5, 'El aparato reproductor humano y los ciclos reproductivos'),
(9, 5, 'La célula: tipos y funciones'),
(9, 5, 'Los procesos biológicos en las plantas y animales'),
(9, 5, 'Los ecosistemas: factores bióticos y abióticos'),
(9, 5, 'La genética y la herencia en los seres vivos'),
(9, 5, 'La clasificación de los seres vivos según sus características'),
(9, 5, 'El ciclo de vida de los organismos'),
(9, 5, 'La biodiversidad y su importancia en la estabilidad del ecosistema'),
(9, 5, 'La nutrición, respiración y circulación en los seres vivos'),
-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 5, 'Los derechos humanos y su importancia'),
(13, 5, 'La responsabilidad social y la participación activa'),
(13, 5, 'La importancia del respeto y la tolerancia en la convivencia'),
(13, 5, 'La justicia y la equidad en la sociedad'),
(13, 5, 'El respeto por la diversidad cultural y de opiniones'),
(13, 5, 'La democracia y la participación ciudadana'),
(13, 5, 'Los valores éticos y su aplicación en la vida cotidiana'),
(13, 5, 'La resolución pacífica de conflictos'),
(13, 5, 'La importancia del trabajo en equipo en la comunidad'),
(13, 5, 'La lucha contra la discriminación y el racismo'),
-- Insertar Temas para Educación Física (id_rama = 14)
(14, 5, 'Desarrollo de habilidades motrices y coordinación'),
(14, 5, 'La importancia de la actividad física en el bienestar general'),
(14, 5, 'Los deportes colectivos e individuales'),
(14, 5, 'Las reglas y estrategias en diferentes deportes'),
(14, 5, 'La higiene y la seguridad en la práctica deportiva'),
(14, 5, 'El trabajo en equipo y el respeto en los deportes'),
(14, 5, 'Los beneficios de una dieta balanceada para los deportistas'),
(14, 5, 'El calentamiento y la prevención de lesiones'),
(14, 5, 'La importancia de la flexibilidad y el estiramiento'),
(14, 5, 'La práctica de deportes al aire libre y la integración social'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 5, 'El arte visual: pintura, escultura y diseño'),
(15, 5, 'La música y su influencia en las emociones'),
(15, 5, 'La danza y su relación con el movimiento corporal'),
(15, 5, 'La creatividad y la expresión artística'),
(15, 5, 'El arte en la historia: el arte renacentista, barroco y contemporáneo'),
(15, 5, 'La arquitectura y el diseño urbano'),
(15, 5, 'Los elementos visuales en el arte: color, forma, textura'),
(15, 5, 'La importancia del arte en las culturas'),
(15, 5, 'Creación y presentación de obras artísticas'),
(15, 5, 'El arte como medio de comunicación y reflexión social'),
-- Insertar Temas para Inglés (id_rama = 16)
(16, 5, 'Vocabulario relacionado con las actividades diarias'),
(16, 5, 'Las expresiones de tiempo y lugar en inglés'),
(16, 5, 'El uso de verbos modales en diferentes contextos'),
(16, 5, 'La estructura de las oraciones afirmativas, negativas e interrogativas'),
(16, 5, 'El uso de los tiempos verbales en situaciones cotidianas'),
(16, 5, 'El vocabulario de la casa, la escuela y el trabajo'),
(16, 5, 'La descripción de lugares y personas en inglés'),
(16, 5, 'Las preposiciones de lugar y tiempo en inglés'),
(16, 5, 'Las frases útiles para dar y recibir instrucciones'),
(16, 5, 'Conversaciones cotidianas en inglés'),
-- Insertar Temas para Religión (id_rama = 17)
(17, 5, 'Los valores cristianos: amor, paz y solidaridad'),
(17, 5, 'La enseñanza de Jesús y sus parábolas'),
(17, 5, 'La oración y el significado en la vida cristiana'),
(17, 5, 'Los sacramentos y su importancia en la vida religiosa'),
(17, 5, 'El respeto por la vida y la creación de Dios'),
(17, 5, 'La Iglesia y sus diferentes funciones en la comunidad'),
(17, 5, 'La ética cristiana en la vida diaria'),
(17, 5, 'El concepto de pecado y perdón'),
(17, 5, 'La importancia de la comunidad cristiana'),
(17, 5, 'La importancia de las fiestas religiosas en el calendario cristiano'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 5, 'La importancia de la autoestima y el autoconocimiento'),
(19, 5, 'La resolución de conflictos y toma de decisiones'),
(19, 5, 'El respeto por uno mismo y los demás'),
(19, 5, 'La gestión del tiempo y organización personal'),
(19, 5, 'La participación en actividades de grupo'),
(19, 5, 'La importancia de la comunicación efectiva'),
(19, 5, 'La prevención del acoso escolar'),
(19, 5, 'La orientación vocacional y el descubrimiento de intereses'),
(19, 5, 'La prevención de conductas de riesgo y salud mental'),
(19, 5, 'El trabajo de equipo y la cooperación en la escuela'),

--6° PRIMARIA
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 6, 'Teorema de Pitágoras y su aplicación en la resolución de problemas'),
(2, 6, 'Ángulos internos y externos en figuras geométricas'),
(2, 6, 'Perímetros y áreas de figuras geométricas complejas'),
(2, 6, 'Volumen de cuerpos tridimensionales: esferas, conos, cilindros'),
(2, 6, 'Simetría y transformaciones geométricas'),
(2, 6, 'Construcción de figuras con compás y regla'),
(2, 6, 'Uso de coordenadas cartesianas para ubicar puntos en el plano'),
(2, 6, 'Cálculo de áreas y volúmenes en situaciones cotidianas'),
(2, 6, 'El uso de las propiedades de los triángulos para resolver problemas'),
(2, 6, 'La geometría proyectiva y su aplicación en la vida diaria'),
-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 6, 'Operaciones con decimales y fracciones'),
(3, 6, 'Porcentajes y su aplicación en problemas de descuento y aumento'),
(3, 6, 'Cálculo de la media, mediana y moda en un conjunto de datos'),
(3, 6, 'Proporciones y reglas de tres compuestas'),
(3, 6, 'Cálculo de áreas y perímetros en problemas de geometría'),
(3, 6, 'Operaciones con números enteros, fracciones y decimales'),
(3, 6, 'El uso de la calculadora científica para resolver problemas complejos'),
(3, 6, 'Conversión entre unidades de medida: longitud, masa, tiempo, etc.'),
(3, 6, 'El análisis de datos estadísticos en la vida cotidiana'),
(3, 6, 'Aplicación de fracciones y porcentajes en finanzas personales'),
-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 6, 'Resolución de problemas de lógica matemática'),
(5, 6, 'Uso de estrategias de razonamiento inductivo y deductivo'),
(5, 6, 'Desarrollo de habilidades en el análisis de patrones numéricos'),
(5, 6, 'El razonamiento abstracto y su aplicación en la resolución de problemas complejos'),
(5, 6, 'Combinaciones y permutaciones en la resolución de problemas de probabilidad'),
(5, 6, 'El uso de diagramas de Venn para resolver problemas de lógica'),
(5, 6, 'El análisis de relaciones numéricas en diferentes contextos'),
(5, 6, 'La resolución de acertijos y problemas matemáticos desafiantes'),
(5, 6, 'La importancia del razonamiento en el desarrollo de soluciones creativas'),
(5, 6, 'Aplicación del razonamiento lógico en la resolución de ecuaciones complejas'),
-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 6, 'Comprensión lectora de textos expositivos y científicos'),
(6, 6, 'Análisis de textos narrativos y descriptivos'),
(6, 6, 'Redacción de textos argumentativos y persuasivos'),
(6, 6, 'Uso adecuado de la gramática y ortografía en textos escritos'),
(6, 6, 'El uso de conectores lógicos y temporales en la escritura'),
(6, 6, 'Desarrollo de la expresión escrita a través de ensayos y cartas formales'),
(6, 6, 'Lectura crítica de textos literarios, históricos y científicos'),
(6, 6, 'El análisis de las estructuras narrativas y su impacto en la audiencia'),
(6, 6, 'El desarrollo del vocabulario mediante la lectura y el uso de diccionarios'),
(6, 6, 'La escritura creativa y la creación de cuentos, relatos y poesías'),
-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 6, 'El análisis de sinónimos, antónimos y homónimos en contexto'),
(8, 6, 'La comprensión y resolución de analogías verbales'),
(8, 6, 'La estructura de las oraciones y su impacto en el significado'),
(8, 6, 'El uso adecuado de las figuras retóricas en textos literarios'),
(8, 6, 'La interpretación de textos argumentativos y persuasivos'),
(8, 6, 'El uso de los tiempos verbales en la narración y descripción'),
(8, 6, 'El desarrollo de la fluidez verbal mediante la lectura y la práctica'),
(8, 6, 'La formación de oraciones complejas y su análisis'),
(8, 6, 'La capacidad de sintetizar información y transmitirla de manera clara'),
(8, 6, 'Desarrollo de habilidades comunicativas en debates y presentaciones'),
-- Insertar Temas para CTA (id_rama = 9)
(9, 6, 'El sistema circulatorio humano y su funcionamiento'),
(9, 6, 'Los sistemas endocrino, nervioso y excretor en los seres humanos'),
(9, 6, 'La biotecnología y sus aplicaciones en la medicina y la agricultura'),
(9, 6, 'La genética, el ADN y las bases de la herencia'),
(9, 6, 'La ecología y la interacción entre los seres vivos y su entorno'),
(9, 6, 'El proceso de fotosíntesis en las plantas'),
(9, 6, 'El ciclo del nitrógeno y su importancia en los ecosistemas'),
(9, 6, 'La clasificación de los seres vivos según su características genéticas'),
(9, 6, 'La evolución de las especies y la teoría de Darwin'),
(9, 6, 'Los seres vivos y su adaptación a diferentes ambientes'),
-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 6, 'El concepto de justicia y derechos humanos'),
(13, 6, 'La democracia y sus principios fundamentales'),
(13, 6, 'La participación ciudadana en la toma de decisiones'),
(13, 6, 'La igualdad de género y el respeto en la sociedad'),
(13, 6, 'La lucha contra la corrupción y la importancia de la transparencia'),
(13, 6, 'La importancia de los valores éticos en la convivencia'),
(13, 6, 'La diversidad cultural y el respeto por otras culturas'),
(13, 6, 'El impacto de las decisiones individuales en la sociedad'),
(13, 6, 'Los derechos de los niños y su protección'),
(13, 6, 'La protección del medio ambiente como responsabilidad social'),
-- Insertar Temas para Educación Física (id_rama = 14)
(14, 6, 'La importancia de la salud física y mental'),
(14, 6, 'El trabajo en equipo y la cooperación en deportes'),
(14, 6, 'El cuidado del cuerpo mediante la actividad física regular'),
(14, 6, 'Las habilidades motrices y su desarrollo en el deporte'),
(14, 6, 'El deporte como forma de expresión y comunicación'),
(14, 6, 'La nutrición adecuada para el rendimiento físico'),
(14, 6, 'La prevención de lesiones deportivas'),
(14, 6, 'El ejercicio como medio de prevención de enfermedades'),
(14, 6, 'Los beneficios de la actividad física en la salud mental'),
(14, 6, 'Las reglas y el fair play en el deporte'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 6, 'La historia del arte en diferentes épocas'),
(15, 6, 'La pintura: técnicas y estilos'),
(15, 6, 'La escultura y su expresión en diversas culturas'),
(15, 6, 'La arquitectura: su evolución a través del tiempo'),
(15, 6, 'El arte contemporáneo y sus características'),
(15, 6, 'La música como forma de expresión cultural'),
(15, 6, 'La danza y su relación con el movimiento humano'),
(15, 6, 'El cine como arte y medio de comunicación'),
(15, 6, 'La creatividad en el diseño gráfico y digital'),
(15, 6, 'La integración del arte en la vida cotidiana'),
-- Insertar Temas para Inglés (id_rama = 16)
(16, 6, 'La comprensión de textos en inglés: narrativos y descriptivos'),
(16, 6, 'Las estructuras verbales en inglés: presente, pasado y futuro'),
(16, 6, 'La pronunciación y entonación en inglés'),
(16, 6, 'El vocabulario relacionado con temas de la vida cotidiana'),
(16, 6, 'El uso de preposiciones y adverbios de lugar y tiempo'),
(16, 6, 'Las diferencias entre inglés formal e informal'),
(16, 6, 'La creación y narración de historias en inglés'),
(16, 6, 'La práctica de habilidades de conversación en situaciones cotidianas'),
(16, 6, 'La expresión escrita en inglés: cartas, correos electrónicos y ensayos'),
(16, 6, 'El uso de los tiempos verbales en la narración de eventos pasados'),
-- Insertar Temas para Religión (id_rama = 17)
(17, 6, 'La vida y enseñanzas de Jesucristo'),
(17, 6, 'El estudio de los Evangelios y otros libros sagrados'),
(17, 6, 'Los valores cristianos: la paz, la solidaridad y el respeto'),
(17, 6, 'La importancia de la oración en la vida cristiana'),
(17, 6, 'La influencia del cristianismo en la cultura y el arte'),
(17, 6, 'La historia de la Iglesia y su rol en la sociedad'),
(17, 6, 'La ética cristiana y la toma de decisiones morales'),
(17, 6, 'La Navidad y la Semana Santa como fechas religiosas significativas'),
(17, 6, 'La relación entre religión y ciencia'),
(17, 6, 'Los valores universales y la convivencia pacífica'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 6, 'La gestión de emociones y la inteligencia emocional'),
(19, 6, 'La importancia de la autoestima en el desarrollo personal'),
(19, 6, 'La resolución de conflictos en el entorno escolar'),
(19, 6, 'La importancia de las metas y objetivos personales'),
(19, 6, 'El trabajo en equipo y la colaboración en la escuela'),
(19, 6, 'El manejo del tiempo y la organización personal'),
(19, 6, 'La prevención del acoso escolar y la violencia'),
(19, 6, 'La importancia de la comunicación efectiva'),
(19, 6, 'El fomento del respeto y la tolerancia en el aula'),
(19, 6, 'La orientación vocacional y el descubrimiento de intereses');

--1° SECUNDARIA
-- Insertar Temas para Matemática - Álgebra (id_rama = 1)
INSERT INTO TemasCurso (id_rama, id_grado , nombre) VALUES
(1, 7, 'Ecuaciones lineales de primer grado con una incógnita'),
(1, 7, 'Sistemas de ecuaciones lineales con dos incógnitas'),
(1, 7, 'Factorización de expresiones algebraicas'),
(1, 7, 'Operaciones con polinomios: adición, sustracción, multiplicación y división'),
(1, 7, 'Identidades algebraicas y su uso en la resolución de problemas'),
(1, 7, 'Ecuaciones cuadráticas y su resolución por factorización, fórmula general y completando el cuadrado'),
(1, 7, 'Expresiones algebraicas con fracciones y exponentes'),
(1, 7, 'Propiedades de los exponentes y las raíces cuadradas'),
(1, 7, 'Aplicación de álgebra en situaciones cotidianas y problemas prácticos'),
(1, 7, 'La resolución de ecuaciones con fracciones y decimales'),

-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 7, 'Propiedades de los ángulos en polígonos y su clasificación'),
(2, 7, 'Teorema de Pitágoras y sus aplicaciones en la geometría euclidiana'),
(2, 7, 'Perímetros, áreas y volúmenes de figuras geométricas planas y sólidas'),
(2, 7, 'La similitud de triángulos y otras figuras geométricas'),
(2, 7, 'Transformaciones geométricas: traslaciones, rotaciones, simetrías'),
(2, 7, 'El cálculo de áreas de figuras irregulares y compuestas'),
(2, 7, 'Uso de coordenadas cartesianas para ubicar puntos y representar figuras'),
(2, 7, 'El concepto de la circunferencia y el círculo, y sus propiedades'),
(2, 7, 'Cálculo de áreas y perímetros en figuras con círculos y elipses'),
(2, 7, 'La geometría tridimensional: volúmenes y áreas superficiales de sólidos'),

-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 7, 'Operaciones con fracciones, decimales y porcentajes'),
(3, 7, 'El cálculo de tasas de interés simples y compuestas'),
(3, 7, 'Proporciones y su aplicación en situaciones reales'),
(3, 7, 'Cálculo de porcentajes en descuentos, aumentos y problemas financieros'),
(3, 7, 'Cálculo de promedios, mediana, moda y rango de un conjunto de datos'),
(3, 7, 'Resolución de problemas de combinaciones y permutaciones'),
(3, 7, 'Aplicaciones de fracciones y porcentajes en situaciones cotidianas'),
(3, 7, 'El uso de la regla de tres en problemas de proporcionalidad'),
(3, 7, 'Operaciones con números enteros: suma, resta, multiplicación y división'),
(3, 7, 'Conversión entre diferentes unidades de medida y su aplicación en problemas de la vida diaria'),

-- Insertar Temas para Matemática - Trigonometría (id_rama = 4)
(4, 7, 'Estudio de las razones trigonométricas: seno, coseno y tangente'),
(4, 7, 'El círculo unitario y sus aplicaciones en trigonometría'),
(4, 7, 'Resolución de triángulos rectángulos usando trigonometría'),
(4, 7, 'Aplicaciones de las funciones trigonométricas en la vida cotidiana'),
(4, 7, 'Teorema de Pitágoras en el contexto de la trigonometría'),
(4, 7, 'Cálculo de distancias y alturas utilizando trigonometría'),
(4, 7, 'Las identidades trigonométricas fundamentales'),
(4, 7, 'El uso de la ley de senos y cosenos en triángulos no rectángulos'),
(4, 7, 'Aplicaciones de la trigonometría en la física y la arquitectura'),
(4, 7, 'Uso de la trigonometría para resolver problemas de navegación'),

-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 7, 'Resolución de problemas de lógica deductiva e inductiva'),
(5, 7, 'El uso de diagramas de Venn para resolver problemas de conjuntos'),
(5, 7, 'Análisis de secuencias y patrones numéricos'),
(5, 7, 'El principio de inducción matemática y su aplicación en la demostración de teoremas'),
(5, 7, 'Resolución de acertijos matemáticos y problemas complejos'),
(5, 7, 'Razonamiento probabilístico: cálculo de probabilidades en eventos simples y compuestos'),
(5, 7, 'El análisis combinatorio y sus aplicaciones en la resolución de problemas'),
(5, 7, 'El desarrollo del razonamiento lógico a través de la resolución de problemas abstractos'),
(5, 7, 'Estudio de las combinaciones y permutaciones en situaciones reales'),
(5, 7, 'Uso de álgebra y geometría en la resolución de problemas matemáticos complejos'),

-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 7, 'Comprensión y análisis de textos narrativos, expositivos y descriptivos'),
(6, 7, 'Redacción de ensayos y textos argumentativos con estructura coherente'),
(6, 7, 'Uso adecuado de la gramática, ortografía y puntuación en la redacción'),
(6, 7, 'Técnicas de expresión oral y escrita en presentaciones y debates'),
(6, 7, 'Desarrollo de la argumentación lógica en la escritura de textos'),
(6, 7, 'Comprensión de textos científicos y técnicos en el contexto escolar'),
(6, 7, 'El uso de conectores textuales para organizar el discurso escrito'),
(6, 7, 'La lectura crítica y la evaluación de textos de diferentes géneros literarios'),
(6, 7, 'La elaboración de resúmenes y síntesis de textos informativos'),
(6, 7, 'La expresión escrita creativa: relatos, cartas, artículos y crónicas'),

-- Insertar Temas para Comunicación - Literatura (id_rama = 7)
(7, 7, 'Estudio de los géneros literarios: narrativa, poesía, teatro y ensayo'),
(7, 7, 'La literatura como reflejo de la sociedad y los valores culturales'),
(7, 7, 'Análisis de textos literarios clásicos y contemporáneos'),
(7, 7, 'El estudio de autores representativos de la literatura universal'),
(7, 7, 'La narrativa y sus recursos: personajes, trama, espacio y tiempo'),
(7, 7, 'El simbolismo y las metáforas en la poesía'),
(7, 7, 'El estudio del teatro: dramaturgia, puesta en escena y personajes'),
(7, 7, 'El ensayo como género literario: estructura y características'),
(7, 7, 'La literatura latinoamericana y su influencia en el mundo'),
(7, 7, 'La relación entre la literatura y otros medios de comunicación, como el cine'),

-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 7, 'La comprensión de analogías verbales'),
(8, 7, 'La interpretación de textos argumentativos y expositivos'),
(8, 7, 'El análisis de sinónimos y antónimos en diferentes contextos'),
(8, 7, 'La identificación de las principales ideas en un texto y su relación con el contexto'),
(8, 7, 'La resolución de problemas de lógica verbal'),
(8, 7, 'El uso de la estructura gramatical para mejorar la comprensión lectora'),
(8, 7, 'La construcción de oraciones complejas con coherencia y cohesión'),
(8, 7, 'El análisis de las técnicas retóricas en discursos y textos persuasivos'),
(8, 7, 'El desarrollo de habilidades en la comprensión de textos orales'),
(8, 7, 'La interpretación de textos literarios mediante el análisis de sus recursos estilísticos'),

-- Insertar Temas para Biología (id_rama = 10)
(10, 7, 'El estudio de los sistemas vivos: célula, tejidos y órganos'),
(10, 7, 'La genética y la transmisión de características hereditarias'),
(10, 7, 'El sistema nervioso y su relación con la respuesta del organismo'),
(10, 7, 'La biodiversidad: clasificación de los seres vivos y su función ecológica'),
(10, 7, 'La nutrición y la digestión en los seres humanos'),
(10, 7, 'La reproducción sexual y asexual en plantas y animales'),
(10, 7, 'El estudio de los ecosistemas y las cadenas tróficas'),
(10, 7, 'Las enfermedades infecciosas y su prevención'),
(10, 7, 'La biotecnología y sus aplicaciones en la salud y la industria'),
(10, 7, 'El estudio de los ciclos biogeoquímicos: carbono, nitrógeno, etc.'),

-- Insertar Temas para Química (id_rama = 11)
(11, 7, 'La estructura atómica y la tabla periódica de los elementos'),
(11, 7, 'Los enlaces químicos: iónico, covalente y metálico'),
(11, 7, 'Las reacciones químicas y su clasificación: exergónicas, endotérmicas'),
(11, 7, 'La ley de conservación de la masa y los balances de materia'),
(11, 7, 'La química orgánica: los hidrocarburos y sus derivados'),
(11, 7, 'El estudio de los ácidos, bases y sales en soluciones acuosas'),
(11, 7, 'La química en la vida cotidiana: alimentos, productos de limpieza, medicamentos'),
(11, 7, 'Las propiedades físicas y químicas de los materiales'),
(11, 7, 'La química de los gases y su comportamiento bajo distintas condiciones'),
(11, 7, 'El análisis y uso de indicadores químicos en la determinación del pH'),

-- Insertar Temas para Física (id_rama = 12)
(12, 7, 'El estudio de las leyes del movimiento de Newton'),
(12, 7, 'La energía cinética y potencial en diferentes sistemas'),
(12, 7, 'El trabajo y la potencia en la física clásica'),
(12, 7, 'La ley de la conservación de la energía'),
(12, 7, 'Las ondas sonoras y la propagación del sonido'),
(12, 7, 'La óptica: reflexión, refracción y lentes'),
(12, 7, 'El estudio de la electricidad: corriente, voltaje y resistencia'),
(12, 7, 'El magnetismo y su relación con la electricidad'),
(12, 7, 'La termodinámica y los procesos de transferencia de calor'),
(12, 7, 'El uso de la física en la tecnología y los avances científicos'),

-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 7, 'Los derechos humanos y su importancia en la sociedad actual'),
(13, 7, 'El concepto de ciudadanía y sus responsabilidades'),
(13, 7, 'El sistema político y electoral en el país'),
(13, 7, 'Los valores democráticos y la participación activa en la comunidad'),
(13, 7, 'El respeto a la diversidad cultural y de género'),
(13, 7, 'La lucha contra la corrupción y la importancia de la ética pública'),
(13, 7, 'Los derechos y deberes de los adolescentes en la sociedad'),
(13, 7, 'La educación en valores y su impacto en la convivencia pacífica'),
(13, 7, 'La resolución de conflictos a través del diálogo y el consenso'),
(13, 7, 'El rol de las organizaciones no gubernamentales en la sociedad'),

-- Insertar Temas para Educación Física (id_rama = 14)
(14, 7, 'Los beneficios del ejercicio físico en la salud integral'),
(14, 7, 'Las técnicas básicas de diversos deportes colectivos e individuales'),
(14, 7, 'La importancia de la actividad física para la prevención de enfermedades'),
(14, 7, 'La alimentación saludable para el rendimiento deportivo'),
(14, 7, 'Las habilidades motoras y su desarrollo en actividades deportivas'),
(14, 7, 'La cooperación y el trabajo en equipo en actividades físicas'),
(14, 7, 'La práctica de deportes de resistencia y velocidad'),
(14, 7, 'La seguridad y prevención de lesiones en el deporte'),
(14, 7, 'La importancia de la preparación física en el ámbito competitivo'),
(14, 7, 'El rol de la actividad física en la mejora de la salud mental'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 7, 'La historia del arte desde la Edad Media hasta el Renacimiento'),
(15, 7, 'Las técnicas artísticas: pintura, escultura, grabado y arquitectura'),
(15, 7, 'El análisis y la interpretación de obras de arte contemporáneo'),
(15, 7, 'El arte en el cine y la fotografía'),
(15, 7, 'La música como expresión artística y cultural'),
(15, 7, 'La danza y el teatro como formas de expresión emocional'),
(15, 7, 'El uso de medios digitales en la creación de arte moderno'),
(15, 7, 'El diseño gráfico y su aplicación en los medios de comunicación'),
(15, 7, 'La influencia del arte en la sociedad y en la identidad cultural'),
(15, 7, 'El arte y la creatividad en la vida cotidiana'),

-- Insertar Temas para Inglés (id_rama = 16)
(16, 7, 'Desarrollo de habilidades en comprensión lectora en inglés'),
(16, 7, 'La gramática inglesa: tiempos verbales, preposiciones y modismos'),
(16, 7, 'La escritura en inglés: redacción de cartas, correos electrónicos y ensayos'),
(16, 7, 'La pronunciación y entonación en el idioma inglés'),
(16, 7, 'La comprensión de textos literarios en inglés: cuentos, novelas y poemas'),
(16, 7, 'El uso del inglés en situaciones cotidianas: compras, viajes, entrevistas'),
(16, 7, 'La cultura anglosajona y su influencia en el mundo moderno'),
(16, 7, 'La interpretación y análisis de películas y series en inglés'),
(16, 7, 'El aprendizaje de vocabulario específico para áreas profesionales'),
(16, 7, 'El inglés como herramienta para la comunicación internacional'),

-- Insertar Temas para Religión (id_rama = 17)
(17, 7, 'El estudio de las principales religiones del mundo'),
(17, 7, 'La ética y los valores cristianos en la sociedad moderna'),
(17, 7, 'La historia del cristianismo: origen, evolución y creencias fundamentales'),
(17, 7, 'El rol de la religión en la paz y la convivencia mundial'),
(17, 7, 'El estudio de las escrituras sagradas de las principales religiones'),
(17, 7, 'La influencia del cristianismo en el arte, la música y la cultura'),
(17, 7, 'La práctica religiosa en el mundo actual'),
(17, 7, 'Los valores del respeto, la tolerancia y el amor al prójimo'),
(17, 7, 'La enseñanza moral de las religiones y su aplicación en la vida cotidiana'),
(17, 7, 'La importancia de la espiritualidad en la vida humana'),

-- Insertar Temas para Educación para el Trabajo (id_rama = 18)
(18, 7, 'Las habilidades y competencias necesarias en el mundo laboral'),
(18, 7, 'La orientación vocacional y el desarrollo profesional'),
(18, 7, 'El desarrollo de proyectos y trabajo en equipo'),
(18, 7, 'La ética en el trabajo y la responsabilidad social'),
(18, 7, 'La importancia de la educación continua en el ámbito laboral'),
(18, 7, 'El emprendimiento y la creación de pequeñas empresas'),
(18, 7, 'La administración del tiempo y la gestión de proyectos'),
(18, 7, 'El uso de las tecnologías en el mundo del trabajo'),
(18, 7, 'El concepto de trabajo colaborativo y su aplicación en el entorno laboral'),
(18, 7, 'La importancia de la comunicación efectiva en el trabajo'),

-- Insertar Temas para Tutoría (id_rama = 19)
(19, 7, 'La inteligencia emocional y la gestión de las emociones'),
(19, 7, 'La importancia de la autoestima y el autocuidado'),
(19, 7, 'El trabajo en equipo y la resolución de conflictos'),
(19, 7, 'La prevención del acoso escolar y la construcción de ambientes saludables'),
(19, 7, 'La orientación profesional y la toma de decisiones sobre estudios y carrera'),
(19, 7, 'El desarrollo de habilidades de liderazgo y toma de decisiones'),
(19, 7, 'La importancia del respeto y la tolerancia en las relaciones interpersonales'),
(19, 7, 'El fomento de la responsabilidad social y el compromiso cívico'),
(19, 7, 'La gestión del tiempo y la organización personal en la vida escolar'),
(19, 7, 'La prevención de problemas emocionales y de salud mental en los adolescentes'),

--2° SECUNDARIA
-- Insertar Temas para Matemática - Álgebra (id_rama = 1)
(1, 8, 'Operaciones con polinomios y fracciones algebraicas'),
(1, 8, 'Ecuaciones cuadráticas y sus aplicaciones'),
(1, 8, 'Desigualdades y su resolución en el conjunto de los números reales'),
(1, 8, 'Ecuaciones de segundo grado: resolución por factorización y fórmula general'),
(1, 8, 'Aplicación de sistemas de ecuaciones lineales en problemas de la vida cotidiana'),
(1, 8, 'Estudio de funciones lineales y cuadráticas'),
(1, 8, 'El concepto de raíz de una ecuación y su interpretación gráfica'),
(1, 8, 'Factorización de expresiones algebraicas y su uso en la resolución de ecuaciones'),
(1, 8, 'Polinomios y su representación gráfica'),
(1, 8, 'Relación entre los coeficientes y las raíces de una ecuación cuadrática'),
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 8, 'Estudio de las propiedades de los triángulos y cuadriláteros'),
(2, 8, 'El cálculo de áreas y volúmenes de figuras tridimensionales'),
(2, 8, 'Cálculo de perímetros y áreas de círculos, elipses y otras figuras geométricas'),
(2, 8, 'Las propiedades de los ángulos internos y externos en polígonos'),
(2, 8, 'La aplicación del teorema de Pitágoras en la resolución de problemas'),
(2, 8, 'Transformaciones geométricas: traslaciones, rotaciones y reflexiones'),
(2, 8, 'El cálculo de áreas de figuras complejas utilizando integrales y sumas de áreas'),
(2, 8, 'Uso de coordenadas cartesianas para representar figuras en el plano'),
(2, 8, 'Cálculo de áreas y volúmenes de sólidos geométricos con fórmulas'),
(2, 8, 'El concepto de ángulos y su aplicación en la resolución de problemas de geometría'),
-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 8, 'Cálculo de porcentajes: aumento, descuento y problemas financieros'),
(3, 8, 'Las propiedades de los números racionales e irracionales'),
(3, 8, 'Operaciones con fracciones y decimales'),
(3, 8, 'La resolución de problemas de proporcionalidad directa e inversa'),
(3, 8, 'Los métodos de aproximación de números y su uso en cálculos matemáticos'),
(3, 8, 'Las secuencias numéricas y su aplicación en situaciones cotidianas'),
(3, 8, 'El uso de la regla de tres en problemas prácticos de proporcionalidad'),
(3, 8, 'Estudio de las tasas de crecimiento y decrecimiento en problemas financieros'),
(3, 8, 'La aritmética en problemas relacionados con la estadística y probabilidades'),
(3, 8, 'La conversión entre unidades de medida en situaciones prácticas'),
-- Insertar Temas para Matemática - Trigonometría (id_rama = 4)
(4, 8, 'El uso de la trigonometría para resolver triángulos no rectángulos'),
(4, 8, 'Aplicación de las identidades trigonométricas en la resolución de ecuaciones'),
(4, 8, 'El estudio de las funciones trigonométricas: seno, coseno, tangente'),
(4, 8, 'El cálculo de ángulos en situaciones de la vida real usando trigonometría'),
(4, 8, 'La ley de senos y cosenos en la resolución de triángulos generales'),
(4, 8, 'El círculo unitario y su relación con las funciones trigonométricas'),
(4, 8, 'Transformaciones trigonométricas: ampliación, reducción, desplazamiento'),
(4, 8, 'La resolución de problemas de navegación utilizando trigonometría'),
(4, 8, 'El cálculo de distancias y alturas mediante la trigonometría'),
(4, 8, 'Aplicaciones de la trigonometría en el estudio del sonido y la luz'),
-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 8, 'El razonamiento inductivo y deductivo en la solución de problemas'),
(5, 8, 'El análisis de problemas utilizando el principio de inducción matemática'),
(5, 8, 'La resolución de problemas de lógica con diagramas de Venn'),
(5, 8, 'Análisis de secuencias y patrones algebraicos y geométricos'),
(5, 8, 'El cálculo de probabilidades en experimentos sencillos y compuestos'),
(5, 8, 'El uso de combinaciones y permutaciones en la resolución de problemas'),
(5, 8, 'Análisis de proposiciones lógicas y su relación con la teoría de conjuntos'),
(5, 8, 'Estudio de los diferentes tipos de funciones y su interpretación'),
(5, 8, 'Desarrollo de estrategias de resolución de problemas complejos'),
(5, 8, 'La solución de ecuaciones y sistemas de ecuaciones usando técnicas algebraicas y gráficas'),
-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 8, 'El análisis de textos argumentativos y expositivos'),
(6, 8, 'La redacción de ensayos, artículos y cartas formales e informales'),
(6, 8, 'La comprensión de textos científicos y literarios'),
(6, 8, 'El uso adecuado de la gramática y la ortografía en la escritura'),
(6, 8, 'El desarrollo de habilidades de expresión oral en debates y exposiciones'),
(6, 8, 'La estructura de un texto narrativo: personajes, trama y ambiente'),
(6, 8, 'La interpretación crítica de textos literarios y su relación con la sociedad'),
(6, 8, 'El uso de conectores textuales para mejorar la coherencia en la escritura'),
(6, 8, 'La creación de resúmenes y esquemas para una lectura eficiente'),
(6, 8, 'La práctica de la escritura creativa y la narración de historias'),
-- Insertar Temas para Comunicación - Literatura (id_rama = 7)
(7, 8, 'El estudio de las principales corrientes literarias de la Edad Media a la actualidad'),
(7, 8, 'El análisis de los géneros literarios: novela, poesía, teatro, ensayo'),
(7, 8, 'El estudio de obras literarias fundamentales en la literatura universal'),
(7, 8, 'El análisis de los personajes y sus relaciones en las obras literarias'),
(7, 8, 'La influencia del contexto histórico en la literatura'),
(7, 8, 'El estudio de la poesía: métrica, ritmo y figuras literarias'),
(7, 8, 'El estudio de la narrativa y sus recursos literarios: narrativa en primera y tercera persona'),
(7, 8, 'El teatro y su estructura: actos, escenas, personajes y diálogo'),
(7, 8, 'La literatura latinoamericana y su influencia en la literatura mundial'),
(7, 8, 'La literatura y su relación con otros medios de comunicación como el cine'),
-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 8, 'La interpretación de analogías verbales y semánticas'),
(8, 8, 'La identificación de ideas principales y secundarias en un texto'),
(8, 8, 'El análisis de textos argumentativos y su estructura lógica'),
(8, 8, 'La comprensión de metáforas, analogías y figuras literarias en textos verbales'),
(8, 8, 'El uso de sinónimos, antónimos y parónimos en la escritura'),
(8, 8, 'La resolución de problemas de lógica verbal con deducción de conclusiones'),
(8, 8, 'La estructura de oraciones complejas y su relación en el contexto del discurso'),
(8, 8, 'La evaluación de la coherencia y cohesión de los textos escritos'),
(8, 8, 'El uso de la retórica en discursos y textos persuasivos'),
(8, 8, 'El análisis de la organización de un texto y su conexión entre párrafos'),
-- Insertar Temas para Biología (id_rama = 10)
(10, 8, 'La genética molecular: ADN, ARN y la codificación genética'),
(10, 8, 'La teoría de la evolución y la selección natural'),
(10, 8, 'La biotecnología y su aplicación en la genética y la salud'),
(10, 8, 'Los sistemas de órganos en el cuerpo humano y su funcionamiento'),
(10, 8, 'El estudio de los procesos metabólicos en seres vivos'),
(10, 8, 'Las interacciones ecológicas: depredación, simbiosis, competencia'),
(10, 8, 'El ciclo de vida de los seres vivos y su importancia en los ecosistemas'),
(10, 8, 'La célula: estructura y funciones celulares'),
(10, 8, 'La anatomía humana y su relación con el cuidado de la salud'),
(10, 8, 'La biodiversidad y su conservación en el planeta'),
-- Insertar Temas para Química (id_rama = 11)
(11, 8, 'La estructura y propiedades de los elementos químicos'),
(11, 8, 'Las reacciones redox y su aplicación en la industria'),
(11, 8, 'El estudio de los ácidos, bases y sales'),
(11, 8, 'La química orgánica y los compuestos derivados del carbono'),
(11, 8, 'Las leyes de los gases ideales y su comportamiento en condiciones variables'),
(11, 8, 'La disolución de sustancias y sus propiedades coligativas'),
(11, 8, 'La química en los alimentos y su relación con la nutrición'),
(11, 8, 'La química de los materiales y su uso en tecnología y construcción'),
(11, 8, 'Las reacciones químicas y el balance de ecuaciones químicas'),
(11, 8, 'La separación de mezclas: técnicas y aplicaciones prácticas'),
-- Insertar Temas para Física (id_rama = 12)
(12, 8, 'El estudio del movimiento rectilíneo y las leyes de Newton'),
(12, 8, 'La conservación de la energía en sistemas mecánicos'),
(12, 8, 'Las ondas y sus propiedades: frecuencia, amplitud y velocidad'),
(12, 8, 'La óptica: reflexión, refracción y leyes de Snell'),
(12, 8, 'El estudio de la electricidad: corriente, voltaje, resistencia y ley de Ohm'),
(12, 8, 'El magnetismo y su relación con la electricidad'),
(12, 8, 'La termodinámica y la ley de la conservación de la energía térmica'),
(12, 8, 'La mecánica de fluidos y su aplicación en la ingeniería'),
(12, 8, 'Las máquinas simples y su funcionamiento en la física clásica'),
(12, 8, 'El estudio de la luz y su aplicación en la tecnología moderna'),
-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 8, 'Los derechos y deberes ciudadanos en una democracia'),
(13, 8, 'La importancia de la justicia y la equidad en la sociedad'),
(13, 8, 'El respeto a los derechos humanos y la participación activa en la política'),
(13, 8, 'La organización y funcionamiento de las instituciones democráticas'),
(13, 8, 'El análisis de los conflictos sociales y su resolución pacífica'),
(13, 8, 'El estudio del sistema electoral y la participación en elecciones'),
(13, 8, 'La importancia del respeto a las leyes y normas en la convivencia social'),
(13, 8, 'Los problemas sociales contemporáneos y su impacto en la sociedad'),
(13, 8, 'El fomento de los valores éticos y morales en la vida cotidiana'),
(13, 8, 'La defensa de la paz, la justicia y la libertad en el mundo'),
-- Insertar Temas para Educación Física (id_rama = 14)
(14, 8, 'El desarrollo de habilidades motrices y deportivas'),
(14, 8, 'La importancia de la actividad física en la prevención de enfermedades'),
(14, 8, 'Los principios básicos de la higiene postural y su relación con la salud'),
(14, 8, 'El fomento de la actividad física en la vida cotidiana'),
(14, 8, 'La educación física como herramienta para la integración social'),
(14, 8, 'La práctica de deportes colectivos e individuales'),
(14, 8, 'La nutrición y el rendimiento deportivo'),
(14, 8, 'El estudio de la anatomía y el funcionamiento del cuerpo humano en el deporte'),
(14, 8, 'La importancia del trabajo en equipo en las actividades físicas'),
(14, 8, 'La práctica de juegos y actividades recreativas'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 8, 'El estudio de las artes visuales: pintura, escultura, fotografía'),
(15, 8, 'La importancia del arte en el desarrollo del pensamiento creativo'),
(15, 8, 'Las vanguardias artísticas y su influencia en el arte contemporáneo'),
(15, 8, 'La relación entre el arte y la cultura popular'),
(15, 8, 'El análisis y la crítica de obras de arte'),
(15, 8, 'La producción artística: el proceso creativo desde la concepción hasta la obra terminada'),
(15, 8, 'El arte como medio de comunicación y reflexión social'),
(15, 8, 'La utilización de materiales y técnicas en las artes visuales'),
(15, 8, 'El arte en la historia: principales períodos artísticos'),
(15, 8, 'La influencia del arte en la construcción de la identidad cultural'),
-- Insertar Temas para Inglés (id_rama = 16)
(16, 8, 'El desarrollo de habilidades para comprender textos literarios en inglés'),
(16, 8, 'La estructura gramatical en inglés: verbos, tiempos verbales y preposiciones'),
(16, 8, 'La conversación en inglés: expresiones cotidianas y situaciones prácticas'),
(16, 8, 'La práctica de la escritura en inglés: cartas, correos electrónicos y ensayos'),
(16, 8, 'La pronunciación en inglés y la entonación adecuada'),
(16, 8, 'El estudio de la literatura en inglés: autores y movimientos literarios'),
(16, 8, 'El análisis de las culturas anglosajonas y su influencia global'),
(16, 8, 'El uso de tecnologías en la enseñanza del inglés'),
(16, 8, 'La integración de actividades lúdicas en el aprendizaje del idioma inglés'),
(16, 8, 'El inglés en el ámbito académico y profesional'),
-- Insertar Temas para Religión (id_rama = 17)
(17, 8, 'La ética y moral cristiana en el contexto moderno'),
(17, 8, 'El estudio de la religión y su impacto en las sociedades contemporáneas'),
(17, 8, 'La historia de la religión en el mundo y su relación con la cultura'),
(17, 8, 'Los principios fundamentales del cristianismo y su influencia social'),
(17, 8, 'La relación entre ciencia y religión en el mundo contemporáneo'),
(17, 8, 'La reflexión ética en torno al respeto y la dignidad humana'),
(17, 8, 'La espiritualidad y su relación con el bienestar emocional y social'),
(17, 8, 'La religión y su papel en la solución de problemas sociales'),
(17, 8, 'La práctica religiosa y su influencia en la vida diaria'),
(17, 8, 'Los valores universales en las principales religiones del mundo'),
-- Insertar Temas para Educación para el Trabajo (id_rama = 18)
(18, 8, 'El emprendimiento y el desarrollo de proyectos profesionales'),
(18, 8, 'La importancia de las habilidades blandas en el ámbito laboral'),
(18, 8, 'El uso de las tecnologías en la gestión de empresas y negocios'),
(18, 8, 'La ética profesional en el mundo laboral'),
(18, 8, 'El análisis de los derechos laborales y la legislación vigente'),
(18, 8, 'La preparación para la vida profesional y el desarrollo de carrera'),
(18, 8, 'La importancia del trabajo en equipo y la comunicación eficaz'),
(18, 8, 'La gestión financiera personal y empresarial'),
(18, 8, 'El análisis y evaluación de mercados en el contexto de la globalización'),
(18, 8, 'La influencia de la globalización en el mercado laboral'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 8, 'La gestión del estrés y la importancia de la salud mental'),
(19, 8, 'La importancia de la autoestima y la identidad personal'),
(19, 8, 'El trabajo en equipo y las habilidades para la resolución de conflictos'),
(19, 8, 'El uso adecuado de las redes sociales y su impacto en la vida social'),
(19, 8, 'La orientación vocacional y la planificación de la carrera profesional'),
(19, 8, 'La educación en valores y el respeto por la diversidad'),
(19, 8, 'El desarrollo de la empatía y las habilidades interpersonales'),
(19, 8, 'La importancia de la participación activa en la comunidad'),
(19, 8, 'El fomento de una actitud positiva ante los retos académicos y sociales'),
(19, 8, 'La reflexión sobre el futuro y el desarrollo integral de los estudiantes'),

--3° SECUNDARIA
-- Insertar Temas para Matemática - Álgebra (id_rama = 1)
(1, 9, 'Ecuaciones de primer y segundo grado'),
(1, 9, 'Factores de expresiones algebraicas y su factorización'),
(1, 9, 'Polinomios y fracciones algebraicas'),
(1, 9, 'Ecuaciones y sistemas de ecuaciones lineales'),
(1, 9, 'Desigualdades algebraicas y su resolución'),
(1, 9, 'Radicación y propiedades de raíces'),
(1, 9, 'Funciones y sus representaciones gráficas'),
(1, 9, 'Resolución de problemas con ecuaciones cuadráticas'),
(1, 9, 'Teorema de Vieta y sus aplicaciones'),
(1, 9, 'Estudio de las ecuaciones racionales'),

-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 9, 'Teorema de Pitágoras y sus aplicaciones en la resolución de triángulos'),
(2, 9, 'Ángulos y figuras geométricas planas: triángulos, cuadriláteros, círculos'),
(2, 9, 'Perímetro, área y volumen de figuras geométricas'),
(2, 9, 'Transformaciones geométricas: traslaciones, reflexiones, rotaciones'),
(2, 9, 'Teorema de Tales y su aplicación en la geometría'),
(2, 9, 'Geometría analítica: ecuaciones de la recta, el círculo y otras curvas'),
(2, 9, 'Teorema de Herón y su aplicación en el cálculo de áreas de triángulos'),
(2, 9, 'Las coordenadas polares y su uso en la resolución de problemas'),
(2, 9, 'Teoría de polígonos regulares y sus propiedades'),
(2, 9, 'El volumen de sólidos geométricos: cubos, conos, esferas'),

-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 9, 'Operaciones con fracciones, decimales y porcentajes'),
(3, 9, 'El análisis de tasas de crecimiento y de variación'),
(3, 9, 'Proporcionalidad directa e inversa'),
(3, 9, 'Interés simple y compuesto en problemas financieros'),
(3, 9, 'Cálculo de promedio, mediana, moda y desviación estándar'),
(3, 9, 'Resolución de problemas utilizando reglas de tres y porcentajes'),
(3, 9, 'La conversión entre unidades de medida'),
(3, 9, 'Estudio de los números enteros y sus propiedades'),
(3, 9, 'Cálculo de descuentos y aumentos'),
(3, 9, 'Resolución de problemas de porcentajes en situaciones cotidianas'),

-- Insertar Temas para Matemática - Trigonometría (id_rama = 4)
(4, 9, 'El uso de las funciones trigonométricas en la resolución de triángulos'),
(4, 9, 'Identidades trigonométricas y su aplicación en la resolución de problemas'),
(4, 9, 'Ley de senos y cosenos en triángulos no rectángulos'),
(4, 9, 'Ángulos y su relación con las funciones trigonométricas'),
(4, 9, 'La resolución de triángulos mediante el uso de trigonometría'),
(4, 9, 'Teorema de los senos y cosenos en la resolución de triángulos oblicuángulos'),
(4, 9, 'Aplicaciones de la trigonometría en la vida diaria: navegación, arquitectura'),
(4, 9, 'El círculo unitario y su uso en la resolución de problemas trigonométricos'),
(4, 9, 'Cálculo de distancias y alturas con trigonometría'),
(4, 9, 'Estudio de las ecuaciones trigonométricas básicas'),

-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 9, 'Resolución de problemas utilizando la lógica matemática'),
(5, 9, 'El razonamiento inductivo y deductivo en la resolución de problemas'),
(5, 9, 'Estudio de proposiciones lógicas y su equivalencia'),
(5, 9, 'Teoría de conjuntos y su aplicación en problemas matemáticos'),
(5, 9, 'El uso de diagramas de Venn en la resolución de problemas de conjuntos'),
(5, 9, 'Análisis combinatorio: permutaciones y combinaciones'),
(5, 9, 'El principio de inducción matemática en la resolución de problemas'),
(5, 9, 'El análisis de secuencias y patrones numéricos'),
(5, 9, 'El cálculo de probabilidades en eventos independientes y dependientes'),
(5, 9, 'La lógica formal y su aplicación en la resolución de problemas'),

-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 9, 'La lectura y análisis de textos narrativos y descriptivos'),
(6, 9, 'Redacción de textos argumentativos, expositivos y descriptivos'),
(6, 9, 'La estructura de los textos: introducción, desarrollo, conclusión'),
(6, 9, 'Comprensión y análisis de textos literarios y científicos'),
(6, 9, 'Uso de la gramática y ortografía en la escritura formal e informal'),
(6, 9, 'La expresión oral en la exposición de ideas y el debate'),
(6, 9, 'Técnicas de redacción: resumen, paráfrasis y citas textuales'),
(6, 9, 'El uso de conectores textuales para la cohesión y coherencia en un texto'),
(6, 9, 'El análisis de obras literarias de autores nacionales e internacionales'),
(6, 9, 'La escritura de informes y cartas formales'),

-- Insertar Temas para Comunicación - Literatura (id_rama = 7)
(7, 9, 'El estudio de los principales movimientos literarios: Renacimiento, Barroco, Romanticismo, Realismo'),
(7, 9, 'El análisis de géneros literarios: narrativa, lírica, dramática'),
(7, 9, 'La obra literaria como espejo de la realidad histórica y social'),
(7, 9, 'La poesía: métrica, ritmo, figuras literarias y su interpretación'),
(7, 9, 'El teatro y su evolución histórica: comedia, tragedia, teatro contemporáneo'),
(7, 9, 'La narrativa: tipos de narradores, estructura de la trama'),
(7, 9, 'El análisis de los personajes en la literatura: tipos y funciones'),
(7, 9, 'El análisis de los conflictos en las obras literarias'),
(7, 9, 'El ensayo literario: características, estructura y redacción'),
(7, 9, 'La literatura latinoamericana: autores y obras destacadas'),

-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 9, 'El análisis de analogías verbales y semánticas'),
(8, 9, 'La interpretación de pasajes literarios y argumentativos'),
(8, 9, 'Comprensión de textos literarios y científicos mediante estrategias de lectura'),
(8, 9, 'La expresión verbal en situaciones de comunicación formal e informal'),
(8, 9, 'El análisis de la coherencia y cohesión en los textos verbales'),
(8, 9, 'La identificación de figuras literarias y su uso en la comunicación escrita'),
(8, 9, 'La elaboración de argumentos sólidos en la discusión y el debate'),
(8, 9, 'El uso de sinónimos, antónimos y parónimos en la interpretación de textos'),
(8, 9, 'La organización y jerarquización de ideas en un texto argumentativo'),
(8, 9, 'El análisis y crítica de textos en función de su intención comunicativa'),
-- Insertar Temas para Biología (id_rama = 10)
(10, 9, 'La genética y la herencia: ADN, cromosomas y genes'),
(10, 9, 'El ciclo celular y la división celular: mitosis y meiosis'),
(10, 9, 'La anatomía humana: sistema circulatorio, respiratorio y digestivo'),
(10, 9, 'El estudio de los ecosistemas y las cadenas tróficas'),
(10, 9, 'La teoría de la evolución de Darwin y sus pruebas científicas'),
(10, 9, 'El sistema nervioso: estructura y función'),
(10, 9, 'La microbiología: bacterias, virus y su impacto en la salud'),
(10, 9, 'La reproducción humana y sus etapas: embarazo, parto'),
(10, 9, 'La salud y el bienestar: prevención de enfermedades'),
(10, 9, 'La biodiversidad y la conservación de especies'),

-- Insertar Temas para Química (id_rama = 11)
(11, 9, 'La tabla periódica de los elementos y sus familias'),
(11, 9, 'Las reacciones químicas: tipos, características y balanceo'),
(11, 9, 'El estudio de los ácidos, bases y sales'),
(11, 9, 'La química del carbono: compuestos orgánicos e hidrocarburos'),
(11, 9, 'La teoría atómica: modelos y partículas subatómicas'),
(11, 9, 'Las soluciones químicas: concentración, disolución y disolventes'),
(11, 9, 'La química en la vida cotidiana: ácidos, bases y productos domésticos'),
(11, 9, 'La ley de los gases ideales y sus aplicaciones en la física'),
(11, 9, 'Las reacciones redox y su importancia en la energía'),
(11, 9, 'La química del agua: propiedades y su importancia en los seres vivos'),

-- Insertar Temas para Física (id_rama = 12)
(12, 9, 'El estudio de las leyes del movimiento de Newton'),
(12, 9, 'La energía: tipos de energía y la conservación de la energía'),
(12, 9, 'La electricidad y el magnetismo: fenómenos y aplicaciones'),
(12, 9, 'La termodinámica: calor, temperatura y sus aplicaciones'),
(12, 9, 'Las ondas y sus propiedades: luz, sonido, ondas electromagnéticas'),
(12, 9, 'La óptica: reflexión, refracción y lentes'),
(12, 9, 'La mecánica de fluidos: principios y aplicaciones'),
(12, 9, 'El trabajo y la potencia en la física'),
(12, 9, 'Las máquinas simples y su eficiencia'),
(12, 9, 'El estudio de la relatividad en la física moderna'),

-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 9, 'Los derechos humanos y la ciudadanía global'),
(13, 9, 'La justicia social y los derechos laborales'),
(13, 9, 'La democracia y la participación política'),
(13, 9, 'La ética y la responsabilidad en la vida pública'),
(13, 9, 'La igualdad de género y la lucha contra la discriminación'),
(13, 9, 'El respeto a las normas y la ley en la sociedad'),
(13, 9, 'La resolución de conflictos y el fortalecimiento de la paz'),
(13, 9, 'La participación juvenil en la comunidad'),
(13, 9, 'El desarrollo sostenible y su importancia para la sociedad'),
(13, 9, 'La convivencia pacífica y el respeto por la diversidad cultural'),

-- Insertar Temas para Educación Física (id_rama = 14)
(14, 9, 'El fomento de la actividad física y el bienestar integral'),
(14, 9, 'La salud física y mental en el ámbito educativo'),
(14, 9, 'Los deportes colectivos e individuales: principios y estrategias'),
(14, 9, 'El desarrollo de la resistencia y la fuerza física'),
(14, 9, 'La importancia de la higiene postural en las actividades físicas'),
(14, 9, 'La nutrición y el rendimiento deportivo'),
(14, 9, 'El trabajo en equipo y la comunicación en deportes colectivos'),
(14, 9, 'La práctica de juegos recreativos y actividades físicas'),
(14, 9, 'El análisis del cuerpo humano en el deporte'),
(14, 9, 'La prevención de lesiones y su manejo en el deporte'),

-- Insertar Temas para Arte (id_rama = 15)
(15, 9, 'La historia del arte: principales períodos y movimientos'),
(15, 9, 'El análisis de obras de arte y su contexto social y cultural'),
(15, 9, 'La expresión artística: pintura, escultura, música, danza'),
(15, 9, 'El arte como medio de crítica social y política'),
(15, 9, 'La creatividad y la expresión personal en las artes visuales'),
(15, 9, 'La influencia de la tecnología en las manifestaciones artísticas contemporáneas'),
(15, 9, 'El arte en el cine: análisis de los elementos cinematográficos'),
(15, 9, 'La relación entre arte y naturaleza'),
(15, 9, 'La fotografía como forma de expresión artística'),
(15, 9, 'El arte como reflejo de la identidad cultural'),

-- Insertar Temas para Inglés (id_rama = 16)
(16, 9, 'El desarrollo de habilidades comunicativas en inglés: hablar, escribir, escuchar, leer'),
(16, 9, 'La estructura gramatical avanzada en inglés'),
(16, 9, 'La pronunciación y acentuación en inglés'),
(16, 9, 'El análisis y comprensión de textos literarios en inglés'),
(16, 9, 'El uso de expresiones idiomáticas y coloquiales en inglés'),
(16, 9, 'La cultura anglosajona: tradiciones, costumbres y su influencia mundial'),
(16, 9, 'La comprensión y producción de textos académicos en inglés'),
(16, 9, 'El uso de tecnologías para aprender inglés'),
(16, 9, 'La literatura en inglés: análisis de obras y autores clásicos'),
(16, 9, 'El inglés en el mundo globalizado'),

-- Insertar Temas para Religión (id_rama = 17)
(17, 9, 'Los valores cristianos en la vida cotidiana'),
(17, 9, 'La ética cristiana y su relación con la moral contemporánea'),
(17, 9, 'La historia del cristianismo y sus influencias en la sociedad'),
(17, 9, 'La espiritualidad y el crecimiento personal'),
(17, 9, 'La importancia del perdón y la reconciliación'),
(17, 9, 'Los valores universales del cristianismo y su aplicación en el mundo moderno'),
(17, 9, 'La relación entre ciencia y fe en el cristianismo'),
(17, 9, 'El compromiso cristiano en la transformación social'),
(17, 9, 'La religión y la ética en la vida social y profesional'),
(17, 9, 'La solidaridad y el trabajo social desde la perspectiva cristiana'),

-- Insertar Temas para Educación para el Trabajo (id_rama = 18)
(18, 9, 'El emprendimiento y la creación de proyectos'),
(18, 9, 'La ética en el trabajo y el desarrollo de habilidades profesionales'),
(18, 9, 'La administración y gestión de proyectos profesionales'),
(18, 9, 'El uso de las TICs en el ámbito laboral'),
(18, 9, 'La importancia del liderazgo en la vida profesional'),
(18, 9, 'La negociación y resolución de conflictos en el entorno laboral'),
(18, 9, 'El análisis de mercados y las estrategias empresariales'),
(18, 9, 'La planificación financiera y el manejo de presupuestos'),
(18, 9, 'El desarrollo de una carrera profesional exitosa'),
(18, 9, 'La influencia de la globalización en las empresas y el empleo'),

-- Insertar Temas para Tutoría (id_rama = 19)
(19, 9, 'La gestión del tiempo y la organización personal'),
(19, 9, 'La importancia de la autoestima y la motivación'),
(19, 9, 'El manejo del estrés y las emociones'),
(19, 9, 'La orientación vocacional y el futuro académico y profesional'),
(19, 9, 'La resolución de conflictos interpersonales'),
(19, 9, 'El trabajo en equipo y las habilidades de comunicación'),
(19, 9, 'El uso de las redes sociales de forma responsable'),
(19, 9, 'La promoción del bienestar integral: físico, emocional y social'),
(19, 9, 'La importancia del pensamiento crítico y la toma de decisiones'),
(19, 9, 'El compromiso social y la participación en actividades comunitarias'),

--4° SECUNDARIA
-- Insertar Temas para Matemática - Álgebra (id_rama = 1)
(1, 10, 'Ecuaciones y sistemas de ecuaciones no lineales'),
(1, 10, 'Polinomios y factorización avanzada'),
(1, 10, 'Funciones cuadráticas y sus aplicaciones'),
(1, 10, 'Desigualdades y su resolución en diferentes contextos'),
(1, 10, 'Teorema del binomio de Newton'),
(1, 10, 'Proporcionalidad directa e inversa en funciones algebraicas'),
(1, 10, 'Raíces cuadradas y su aplicación en problemas algebraicos'),
(1, 10, 'Estudio de las funciones racionales y sus gráficos'),
(1, 10, 'Matrices y determinantes: teoría y aplicaciones'),
(1, 10, 'Ecuaciones paramétricas y su resolución'),
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 10, 'Estudio de los polígonos regulares y sus propiedades'),
(2, 10, 'Teorema de Pitágoras en el espacio tridimensional'),
(2, 10, 'Geometría analítica: ecuaciones de la recta, el plano y otras superficies'),
(2, 10, 'Transformaciones geométricas en el plano cartesiano'),
(2, 10, 'Cónicas: elipse, hipérbola y parábola'),
(2, 10, 'Teorema de Apolonio y aplicaciones en la geometría de triángulos'),
(2, 10, 'Ángulos sólidos y su relación con los cuerpos geométricos'),
(2, 10, 'El volumen de figuras geométricas en tres dimensiones'),
(2, 10, 'La resolución de problemas de optimización en geometría'),
(2, 10, 'El uso de coordenadas esféricas en la geometría analítica'),
-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 10, 'Operaciones con fracciones algebraicas y polinomios'),
(3, 10, 'Cálculo de porcentajes en situaciones complejas'),
(3, 10, 'La regla de tres compuesta y su aplicación en problemas'),
(3, 10, 'Problemas de álgebra financiera: intereses simples y compuestos'),
(3, 10, 'Estudio de las progresiones aritméticas y geométricas'),
(3, 10, 'Cálculo de promedios ponderados en situaciones de grupo'),
(3, 10, 'La conversión de unidades y su uso en la resolución de problemas'),
(3, 10, 'La resolución de problemas de tasas de cambio en situaciones prácticas'),
(3, 10, 'Estudio de las ecuaciones exponenciales y logarítmicas'),
(3, 10, 'La proporción y el análisis de ratios en diversos contextos'),
-- Insertar Temas para Matemática - Trigonometría (id_rama = 4)
(4, 10, 'La aplicación de la trigonometría en la resolución de triángulos oblicuángulos'),
(4, 10, 'Identidades trigonométricas avanzadas y su simplificación'),
(4, 10, 'Las ecuaciones trigonométricas y su resolución'),
(4, 10, 'El uso de las funciones trigonométricas en la resolución de problemas del mundo real'),
(4, 10, 'El análisis de ondas sonoras, luz y otras ondas a través de la trigonometría'),
(4, 10, 'La ley de los senos y cosenos en el estudio de triángulos no rectángulos'),
(4, 10, 'Trigonometría en el círculo unitario: ángulos y coordenadas polares'),
(4, 10, 'Aplicaciones de la trigonometría en el análisis de fenómenos naturales'),
(4, 10, 'Estudio de los ángulos en 3D y sus aplicaciones'),
(4, 10, 'La relación entre trigonometría y geometría analítica'),
-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 10, 'El razonamiento lógico en la resolución de problemas matemáticos'),
(5, 10, 'Estudio de las estructuras algebraicas: grupos, anillos y cuerpos'),
(5, 10, 'Lógica matemática aplicada a la resolución de sistemas complejos'),
(5, 10, 'El análisis de secuencias y progresiones en la solución de problemas'),
(5, 10, 'Teoría de grafos: conceptos y aplicaciones en la resolución de problemas'),
(5, 10, 'Combinatoria avanzada: permutaciones y combinaciones con restricciones'),
(5, 10, 'El uso de probabilidades en problemas de azar y en decisiones estadísticas'),
(5, 10, 'La inducción matemática aplicada a problemas reales'),
(5, 10, 'El análisis y resolución de problemas con programación matemática'),
(5, 10, 'Estudio de funciones y su comportamiento en la resolución de problemas complejos'),
-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 10, 'La expresión escrita en la redacción de textos argumentativos y expositivos'),
(6, 10, 'El análisis literario de obras clásicas y contemporáneas'),
(6, 10, 'Técnicas de síntesis y análisis crítico de textos'),
(6, 10, 'La comprensión y producción de textos científicos y técnicos'),
(6, 10, 'El uso adecuado de la gramática y la ortografía en la comunicación escrita'),
(6, 10, 'La redacción de informes académicos y científicos'),
(6, 10, 'La comunicación escrita en los medios de información y redes sociales'),
(6, 10, 'La presentación oral: técnicas y habilidades en la expresión verbal'),
(6, 10, 'La organización de un discurso formal: introducción, desarrollo y conclusión'),
(6, 10, 'El análisis de la estructura y estilo en diferentes tipos de textos'),
-- Insertar Temas para Comunicación - Literatura (id_rama = 7)
(7, 10, 'El análisis de la narrativa en los géneros literarios clásicos y modernos'),
(7, 10, 'La literatura en el contexto histórico y social: su influencia y evolución'),
(7, 10, 'La poesía: formas, géneros y figuras literarias'),
(7, 10, 'El teatro clásico y moderno: características y obras representativas'),
(7, 10, 'El ensayo literario: análisis y crítica de obras literarias'),
(7, 10, 'Los movimientos literarios contemporáneos: realismo, simbolismo, modernismo'),
(7, 10, 'La literatura latinoamericana y su proyección en el contexto mundial'),
(7, 10, 'El análisis de la narrativa oral y su tradición cultural'),
(7, 10, 'La intertextualidad en la literatura: influencia de autores y obras en otras'),
(7, 10, 'La literatura en las lenguas indígenas y su preservación'),
-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 10, 'El análisis de inferencias y deducciones lógicas en textos verbales'),
(8, 10, 'La comprensión profunda de textos argumentativos y literarios'),
(8, 10, 'La resolución de analogías verbales y semánticas'),
(8, 10, 'El uso de estrategias discursivas en la expresión oral y escrita'),
(8, 10, 'El análisis crítico de textos argumentativos y de divulgación'),
(8, 10, 'La construcción de argumentos sólidos y la defensa de una postura en debates'),
(8, 10, 'La identificación de las intenciones comunicativas en un texto'),
(8, 10, 'La comprensión y análisis de textos científicos, históricos y literarios'),
(8, 10, 'El uso de técnicas para mejorar la comprensión lectora'),
(8, 10, 'La interpretación de pasajes literarios y no literarios con enfoque crítico'),
-- Insertar Temas para Biología (id_rama = 10)
(10, 10, 'El sistema endocrino y la regulación hormonal en los seres vivos'),
(10, 10, 'El sistema inmunológico: mecanismos de defensa del cuerpo humano'),
(10, 10, 'La biología molecular: ADN, ARN y proteínas'),
(10, 10, 'La reproducción sexual y asexual en los seres vivos'),
(10, 10, 'Los ecosistemas y la conservación de la biodiversidad'),
(10, 10, 'La biología celular: orgánulos, funciones y procesos celulares'),
(10, 10, 'La fisiología humana: sistema nervioso, respiratorio, circulatorio'),
(10, 10, 'La genética: teorías y descubrimientos fundamentales'),
(10, 10, 'La evolución biológica y las evidencias de la selección natural'),
(10, 10, 'La biotecnología en la medicina y la agricultura'),
-- Insertar Temas para Química (id_rama = 11)
(11, 10, 'La química del carbono: compuestos orgánicos e inorgánicos'),
(11, 10, 'Reacciones redox: electroquímica y aplicaciones'),
(11, 10, 'Química en el ambiente: contaminación y cambio climático'),
(11, 10, 'La teoría de ácidos y bases: definición y modelos'),
(11, 10, 'La ley de los gases ideales y sus aplicaciones prácticas'),
(11, 10, 'La química de los alimentos: conservación, aditivos y calidad'),
(11, 10, 'Las reacciones de síntesis y descomposición en química orgánica'),
(11, 10, 'El análisis cualitativo y cuantitativo en química experimental'),
(11, 10, 'La química de los polímeros: propiedades y aplicaciones'),
(11, 10, 'El impacto de la química en la medicina y farmacología'),
-- Insertar Temas para Física (id_rama = 12)
(12, 10, 'El estudio de la relatividad en la física moderna'),
(12, 10, 'Las leyes de la termodinámica y su aplicación en la vida diaria'),
(12, 10, 'La óptica: comportamiento de la luz y sus aplicaciones tecnológicas'),
(12, 10, 'La mecánica cuántica: conceptos básicos y aplicaciones'),
(12, 10, 'El electromagnetismo: leyes y aplicaciones en dispositivos modernos'),
(12, 10, 'El estudio de las partículas subatómicas: física nuclear y cuántica'),
(12, 10, 'La energía renovable y su impacto en el futuro de la física'),
(12, 10, 'El análisis de sistemas dinámicos en la física'),
(12, 10, 'La física de los materiales: estructuras, propiedades y aplicaciones'),
(12, 10, 'Las ondas electromagnéticas y sus aplicaciones en la tecnología'),
-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 10, 'La constitución y el sistema legal: derechos y deberes'),
(13, 10, 'La democracia y las instituciones públicas'),
(13, 10, 'La justicia social y la equidad en la sociedad'),
(13, 10, 'El activismo social y el papel del ciudadano en el cambio'),
(13, 10, 'La ética en la política y la administración pública'),
(13, 10, 'El respeto a la diversidad cultural, religiosa y política'),
(13, 10, 'El derecho al voto y participación política'),
(13, 10, 'La importancia de la educación cívica en la democracia'),
(13, 10, 'La resolución pacífica de conflictos y la promoción de la paz'),
(13, 10, 'La igualdad de derechos entre hombres y mujeres'),
-- Insertar Temas para Educación Física (id_rama = 14)
(14, 10, 'La salud y bienestar integral: prevención de enfermedades'),
(14, 10, 'La importancia de la actividad física en el desarrollo integral del ser humano'),
(14, 10, 'Los deportes como medios de integración social y cooperación'),
(14, 10, 'El cuidado del cuerpo: nutrición, descanso y ejercicio físico'),
(14, 10, 'El desarrollo de habilidades motrices en deportes'),
(14, 10, 'La ética en el deporte: fair play y competencia sana'),
(14, 10, 'El análisis del rendimiento físico y sus factores'),
(14, 10, 'La psicología del deporte y su influencia en el rendimiento'),
(14, 10, 'La preparación física para el alto rendimiento'),
(14, 10, 'El entrenamiento físico y su relación con la salud mental'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 10, 'El análisis de la historia del arte y sus movimientos'),
(15, 10, 'Las técnicas artísticas: pintura, escultura, arquitectura, música'),
(15, 10, 'El arte como medio de crítica social y cambio'),
(15, 10, 'La creatividad en las artes: expresión personal y colectiva'),
(15, 10, 'La fotografía como forma de expresión artística'),
(15, 10, 'El diseño gráfico y digital como una forma moderna de arte'),
(15, 10, 'El cine y su influencia en la cultura contemporánea'),
(15, 10, 'La danza como forma de expresión cultural y social'),
(15, 10, 'El arte en la vida cotidiana: diseño, arquitectura y moda'),
(15, 10, 'El uso de la tecnología en las artes visuales'),
-- Insertar Temas para Inglés (id_rama = 16)
(16, 10, 'La comprensión de textos escritos en inglés: lecturas avanzadas'),
(16, 10, 'El desarrollo de habilidades para la comunicación efectiva en inglés'),
(16, 10, 'La literatura en inglés: autores y géneros clásicos'),
(16, 10, 'La práctica de la pronunciación y entonación en inglés'),
(16, 10, 'Las culturas anglosajonas y su influencia global'),
(16, 10, 'El análisis de textos académicos y científicos en inglés'),
(16, 10, 'La traducción y adaptación de textos de un idioma a otro'),
(16, 10, 'La escritura en inglés: redacción de textos y corrección'),
(16, 10, 'El inglés técnico y su uso en el ámbito profesional'),
(16, 10, 'El inglés en contextos internacionales: viajes y negocios'),
-- Insertar Temas para Religión (id_rama = 17)
(17, 10, 'Los valores cristianos en la vida moderna'),
(17, 10, 'La ética cristiana en los diferentes ámbitos de la vida'),
(17, 10, 'La historia del cristianismo y su impacto cultural'),
(17, 10, 'La espiritualidad en el siglo XXI'),
(17, 10, 'Los fundamentos de la fe cristiana y sus rituales'),
(17, 10, 'La justicia social desde la perspectiva cristiana'),
(17, 10, 'La relación entre religión y ciencia en el contexto cristiano'),
(17, 10, 'La interreligiosidad: diálogo entre diferentes tradiciones'),
(17, 10, 'La ética cristiana aplicada al trabajo y la vida profesional'),
(17, 10, 'La misericordia y la ayuda al prójimo como valores cristianos'),

-- Insertar Temas para Educación para el Trabajo (id_rama = 18)
(18, 10, 'La formación empresarial: principios y modelos'),
(18, 10, 'La gestión del tiempo en el entorno profesional'),
(18, 10, 'El trabajo en equipo y la resolución de conflictos'),
(18, 10, 'La importancia de la ética en el ámbito laboral'),
(18, 10, 'La creación de proyectos innovadores y sostenibles'),
(18, 10, 'Las habilidades de negociación y comunicación profesional'),
(18, 10, 'La importancia de la capacitación continua en el desarrollo profesional'),
(18, 10, 'La economía global y su impacto en los negocios locales'),
(18, 10, 'El análisis de la productividad y eficiencia en el trabajo'),
(18, 10, 'El futuro del trabajo: tendencias y desafíos'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 10, 'El desarrollo de habilidades de liderazgo y toma de decisiones'),
(19, 10, 'El manejo de conflictos en entornos académicos y laborales'),
(19, 10, 'El trabajo en equipo y la cooperación'),
(19, 10, 'La importancia de la motivación y la gestión de emociones'),
(19, 10, 'El asesoramiento vocacional y la planificación de carrera'),
(19, 10, 'El uso responsable de las redes sociales en la vida académica y personal'),
(19, 10, 'La importancia de la autoconfianza y autoestima'),
(19, 10, 'La organización y gestión del tiempo personal'),
(19, 10, 'El fomento de valores sociales y comunitarios en la escuela'),
(19, 10, 'La construcción de relaciones saludables y efectivas'),

--5° SECUNDARIA
-- Insertar Temas para Matemática - Álgebra (id_rama = 1)
(1, 11, 'Estudio de polinomios de grado superior'),
(1, 11, 'Ecuaciones diferenciales y sus aplicaciones en problemas reales'),
(1, 11, 'Teoría de matrices y determinantes avanzados'),
(1, 11, 'Funciones trascendentales: logaritmos y exponenciales'),
(1, 11, 'Series y sucesiones: progresiones aritméticas, geométricas y otras'),
(1, 11, 'Teorema fundamental del álgebra y sus implicaciones'),
(1, 11, 'La resolución de sistemas lineales de ecuaciones en n dimensiones'),
(1, 11, 'Teoría de grupos y su aplicación en álgebra abstracta'),
(1, 11, 'Ecuaciones polinómicas y sus raíces: teoremas y métodos de resolución'),
(1, 11, 'Optimización de funciones y sus aplicaciones en la economía y la física'),
-- Insertar Temas para Matemática - Geometría (id_rama = 2)
(2, 11, 'Estudio de los sólidos platónicos y otros poliedros'),
(2, 11, 'La geometría proyectiva y sus aplicaciones prácticas'),
(2, 11, 'La geometría diferencial: curvas y superficies en el espacio'),
(2, 11, 'Cónicas en 3D: hipérbolas, elipses y parábolas'),
(2, 11, 'Teorema de Gauss-Bonnet y su relación con la topología'),
(2, 11, 'La geometría algebraica y la resolución de ecuaciones geométricas'),
(2, 11, 'La geometría fractal: introducción y aplicaciones'),
(2, 11, 'Estudio de las simetrías en geometría y su uso en arte y arquitectura'),
(2, 11, 'Teoría de polígonos y los métodos de cálculo en geometría avanzada'),
(2, 11, 'El uso de la geometría analítica para resolver problemas espaciales'),
-- Insertar Temas para Matemática - Aritmética (id_rama = 3)
(3, 11, 'Cálculo de determinantes y su aplicación en sistemas lineales'),
(3, 11, 'Estudio de las ecuaciones en diferencias y su resolución'),
(3, 11, 'La teoría de números: divisibilidad, primalidad y congruencias'),
(3, 11, 'Cálculo de probabilidades y análisis de distribuciones estadísticas'),
(3, 11, 'Análisis de datos y regresión lineal en la investigación científica'),
(3, 11, 'La teoría de matrices en la resolución de ecuaciones lineales y sistemas de ecuaciones'),
(3, 11, 'Las aplicaciones de la aritmética en la economía y las finanzas'),
(3, 11, 'El uso de la aritmética en el análisis de tasas de cambio y crecimiento'),
(3, 11, 'Cálculo de errores y su tratamiento en las ciencias exactas'),
(3, 11, 'La aritmética aplicada en el diseño y análisis de algoritmos computacionales'),
-- Insertar Temas para Matemática - Trigonometría (id_rama = 4)
(4, 11, 'Teoría y aplicación de las identidades trigonométricas avanzadas'),
(4, 11, 'Estudio de las funciones trigonométricas en el círculo unitario'),
(4, 11, 'Las ecuaciones trigonométricas: soluciones y aplicaciones'),
(4, 11, 'Teoría de ángulos en el plano y en el espacio tridimensional'),
(4, 11, 'Trigonometría aplicada a la resolución de triángulos esféricos'),
(4, 11, 'La trigonometría en coordenadas polares y su aplicación en física'),
(4, 11, 'Teoría de Fourier y su aplicación en análisis de señales'),
(4, 11, 'La ley de los senos y cosenos en geometría esférica'),
(4, 11, 'Estudio de las ondas armónicas y su relación con la trigonometría'),
(4, 11, 'La trigonometría aplicada a la física de ondas y frecuencias'),
-- Insertar Temas para Matemática - Razonamiento Matemático (id_rama = 5)
(5, 11, 'Lógica matemática y sus aplicaciones en algoritmos computacionales'),
(5, 11, 'Teoría de la probabilidad: modelos y distribuciones'),
(5, 11, 'La combinatoria avanzada: permutaciones y combinaciones con restricciones'),
(5, 11, 'El razonamiento inductivo y deductivo aplicado a problemas matemáticos'),
(5, 11, 'La teoría de grafos y su aplicación en redes de comunicación'),
(5, 11, 'El análisis de funciones matemáticas: continuidad, derivadas e integrales'),
(5, 11, 'La teoría de números: estudios de la divisibilidad y teoría de grupos'),
(5, 11, 'El uso de la teoría de juegos en decisiones estratégicas'),
(5, 11, 'Estudio de la programación lineal y sus aplicaciones en la economía'),
(5, 11, 'El uso del álgebra abstracta en la resolución de problemas complejos'),
-- Insertar Temas para Comunicación - Lenguaje (id_rama = 6)
(6, 11, 'La escritura académica: estructura, estilo y técnicas de argumentación'),
(6, 11, 'La comunicación efectiva en el ámbito profesional y académico'),
(6, 11, 'La retórica: técnicas de persuasión en la oratoria'),
(6, 11, 'La crítica literaria y el análisis de textos clásicos y contemporáneos'),
(6, 11, 'La expresión escrita en la creación de textos científicos y técnicos'),
(6, 11, 'El uso de estrategias argumentativas en ensayos y exposiciones orales'),
(6, 11, 'El análisis literario avanzado: géneros y movimientos literarios'),
(6, 11, 'La comunicación intercultural: entender y respetar diversas perspectivas'),
(6, 11, 'El uso de la gramática y la sintaxis en la mejora de la expresión escrita'),
(6, 11, 'La traducción de textos literarios y técnicos: desafíos y técnicas'),
-- Insertar Temas para Comunicación - Literatura (id_rama = 7)
(7, 11, 'El análisis profundo de la narrativa en el contexto histórico y social'),
(7, 11, 'Estudio de la poesía moderna y contemporánea: formas y géneros'),
(7, 11, 'El análisis crítico de la novela en sus diferentes géneros literarios'),
(7, 11, 'La literatura contemporánea: tendencias y características'),
(7, 11, 'El impacto de la literatura en la evolución de la sociedad'),
(7, 11, 'El análisis de las obras más representativas de la literatura universal'),
(7, 11, 'El ensayo literario como forma de expresión crítica y reflexiva'),
(7, 11, 'La literatura latinoamericana del siglo XX: autores y movimientos'),
(7, 11, 'El estudio del teatro como forma de expresión cultural y social'),
(7, 11, 'La relación entre literatura y filosofía en la formación del pensamiento humano'),
-- Insertar Temas para Comunicación - Razonamiento Verbal (id_rama = 8)
(8, 11, 'El análisis lógico de textos argumentativos y de divulgación'),
(8, 11, 'La interpretación de inferencias y deducciones en textos verbales'),
(8, 11, 'El desarrollo de habilidades críticas en la lectura de textos complejos'),
(8, 11, 'La argumentación en la resolución de problemas verbales y lógicos'),
(8, 11, 'El análisis y la síntesis de textos científicos y académicos'),
(8, 11, 'La identificación de falacias y errores en razonamientos verbales'),
(8, 11, 'El estudio de la estructura del lenguaje y sus implicaciones en el razonamiento'),
(8, 11, 'El desarrollo de habilidades oratorias y de persuasión en la comunicación verbal'),
(8, 11, 'El análisis de textos literarios y su aplicación en la resolución de problemas verbales'),
(8, 11, 'La creación de argumentos sólidos y bien estructurados en debates y exposiciones'),
-- Insertar Temas para Biología (id_rama = 10)
(10, 11, 'La biotecnología y sus aplicaciones en la agricultura y la salud'),
(10, 11, 'La genética molecular: avances y aplicaciones en la medicina moderna'),
(10, 11, 'La ecología y la gestión de los recursos naturales para la sostenibilidad'),
(10, 11, 'Los ecosistemas marinos: conservación y amenazas'),
(10, 11, 'La biología de la evolución: genética, selección natural y adaptación'),
(10, 11, 'Los procesos bioquímicos: la fotosíntesis y la respiración celular'),
(10, 11, 'La biología del envejecimiento y sus implicaciones médicas'),
(10, 11, 'La inmunología: sistema de defensa del cuerpo humano'),
(10, 11, 'La neurociencia y el estudio del cerebro humano'),
(10, 11, 'La biotecnología en la creación de nuevos medicamentos y terapias'),
-- Insertar Temas para Química (id_rama = 11)
(11, 11, 'La química de los materiales: polímeros y compuestos avanzados'),
(11, 11, 'La química ambiental: contaminación y tratamiento de residuos'),
(11, 11, 'La espectroscopía: técnicas de análisis químico en investigación'),
(11, 11, 'La termodinámica y su aplicación en procesos industriales'),
(11, 11, 'La química orgánica avanzada: síntesis y reacciones de compuestos complejos'),
(11, 11, 'La química de la atmósfera y el cambio climático'),
(11, 11, 'El análisis de los ácidos y bases en el entorno natural y industrial'),
(11, 11, 'La química en la farmacología: diseño y acción de fármacos'),
(11, 11, 'Las reacciones de oxidación y reducción en la electroquímica'),
(11, 11, 'La química en la tecnología de los alimentos: preservación y nutrición'),
-- Insertar Temas para Física (id_rama = 12)
(12, 11, 'La teoría de la relatividad de Einstein: fundamentos y aplicaciones'),
(12, 11, 'La física cuántica y sus aplicaciones en la tecnología moderna'),
(12, 11, 'El estudio de los semiconductores y su uso en la electrónica'),
(12, 11, 'La física de los materiales superconductores'),
(12, 11, 'La energía nuclear: fisión, fusión y sus aplicaciones'),
(12, 11, 'La termodinámica avanzada y sus aplicaciones tecnológicas'),
(12, 11, 'La física de partículas: aceleradores y experimentos actuales'),
(12, 11, 'El electromagnetismo: aplicaciones en comunicaciones y energía'),
(12, 11, 'La mecánica de fluidos y sus aplicaciones en la ingeniería'),
(12, 11, 'La física aplicada en el análisis de ondas y frecuencias'),
-- Insertar Temas para Educación Cívica (id_rama = 13)
(13, 11, 'La justicia y derechos humanos en el contexto global'),
(13, 11, 'El concepto de ciudadanía en sociedades democráticas'),
(13, 11, 'La gobernanza global y la cooperación internacional'),
(13, 11, 'La lucha contra la corrupción en la política y la administración pública'),
(13, 11, 'La igualdad de derechos entre hombres y mujeres en la legislación'),
(13, 11, 'Los derechos laborales y la protección social en las economías globalizadas'),
(13, 11, 'La libertad de expresión y el respeto a la diversidad de opiniones'),
(13, 11, 'La defensa de la democracia y el sistema electoral'),
(13, 11, 'Los desafíos éticos y sociales de la globalización'),
(13, 11, 'El rol de las organizaciones internacionales en la paz y el desarrollo'),
-- Insertar Temas para Educación Física (id_rama = 14)
(14, 11, 'La salud mental y su relación con la actividad física'),
(14, 11, 'Los deportes extremos: riesgos y beneficios'),
(14, 11, 'El acondicionamiento físico y el rendimiento en deportes de alto nivel'),
(14, 11, 'La nutrición deportiva: principios y estrategias para el rendimiento'),
(14, 11, 'La prevención de lesiones en la práctica deportiva'),
(14, 11, 'La influencia de la genética en el rendimiento físico'),
(14, 11, 'El entrenamiento funcional y su aplicación en el desarrollo muscular'),
(14, 11, 'El análisis del impacto social de los deportes en la sociedad'),
(14, 11, 'El deporte y la salud cardiovascular'),
(14, 11, 'La fisiología del ejercicio: respuestas del cuerpo al esfuerzo físico'),
-- Insertar Temas para Arte (id_rama = 15)
(15, 11, 'El arte contemporáneo: tendencias, movimientos y artistas'),
(15, 11, 'La fotografía como medio artístico y documental'),
(15, 11, 'La escultura moderna: materiales y técnicas'),
(15, 11, 'El arte digital: creación y apreciación'),
(15, 11, 'La influencia del arte en la política y la sociedad'),
(15, 11, 'El arte como forma de resistencia y protesta social'),
(15, 11, 'El análisis de las artes visuales en el contexto urbano'),
(15, 11, 'El papel del museo como institución de preservación y difusión artística'),
(15, 11, 'El arte y la tecnología: nuevas herramientas para los artistas'),
(15, 11, 'El diseño gráfico como arte aplicado'),
-- Insertar Temas para Inglés (id_rama = 16)
(16, 11, 'La comprensión de textos académicos y científicos en inglés'),
(16, 11, 'El desarrollo de habilidades lingüísticas avanzadas en inglés'),
(16, 11, 'La traducción literaria y los desafíos culturales'),
(16, 11, 'La literatura inglesa: el análisis de obras clásicas y modernas'),
(16, 11, 'El inglés como lengua global: su impacto en la cultura contemporánea'),
(16, 11, 'El análisis de los diferentes dialectos y variantes del inglés'),
(16, 11, 'La pronunciación en inglés: variaciones y mejora de acento'),
(16, 11, 'El inglés para fines profesionales: redacción de informes y correos electrónicos'),
(16, 11, 'La historia del inglés: desde sus orígenes hasta el inglés moderno'),
(16, 11, 'La poesía en inglés: análisis de formas y estilos literarios'),
-- Insertar Temas para Religión (id_rama = 17)
(17, 11, 'La ética cristiana en el contexto globalizado'),
(17, 11, 'Los desafíos de la religión en un mundo plural y multicultural'),
(17, 11, 'El cristianismo y el diálogo interreligioso'),
(17, 11, 'Los principios del cristianismo en la actualidad'),
(17, 11, 'El cristianismo y las cuestiones sociales contemporáneas'),
(17, 11, 'La moral cristiana y la ética del trabajo'),
(17, 11, 'Los valores universales en las enseñanzas cristianas'),
(17, 11, 'El papel de la religión en la formación de la identidad cultural'),
(17, 11, 'La influencia del cristianismo en la historia del arte y la cultura'),
(17, 11, 'La espiritualidad cristiana: meditación y oración en la vida diaria'),
-- Insertar Temas para Educación para el Trabajo (id_rama = 18)
(18, 11, 'El emprendimiento en el contexto globalizado'),
(18, 11, 'La gestión de proyectos: desde la concepción hasta la ejecución'),
(18, 11, 'Las competencias digitales en el mundo laboral'),
(18, 11, 'El uso de herramientas tecnológicas en la gestión empresarial'),
(18, 11, 'El liderazgo y la toma de decisiones en las organizaciones'),
(18, 11, 'La ética empresarial y la responsabilidad social'),
(18, 11, 'La negociación efectiva en el ámbito empresarial'),
(18, 11, 'La importancia del trabajo en equipo en el éxito organizacional'),
(18, 11, 'La globalización y su impacto en los mercados laborales'),
(18, 11, 'El análisis de las tendencias de consumo en el mercado'),
-- Insertar Temas para Tutoría (id_rama = 19)
(19, 11, 'La planificación de la carrera profesional: estrategias y objetivos'),
(19, 11, 'El desarrollo de habilidades emocionales y sociales para el éxito'),
(19, 11, 'La importancia de la autoconfianza y autoestima en el ámbito académico y profesional'),
(19, 11, 'La resolución de conflictos interpersonales y en el trabajo'),
(19, 11, 'El manejo del estrés en el contexto académico y profesional'),
(19, 11, 'La toma de decisiones en situaciones complejas'),
(19, 11, 'El liderazgo y trabajo en equipo como habilidades clave para el futuro'),
(19, 11, 'El uso de la tecnología para la productividad personal y profesional'),
(19, 11, 'La gestión del tiempo y la productividad personal'),
(19, 11, 'El manejo de las emociones en situaciones de presión y desafío');


INSERT INTO AsignacionesDocente (id_usuario_docente, id_asignador, id_rama, id_grado, id_anio_escolar) VALUES
--1° PRIMARIA
(2, 3, 3, 1, 4),

(3, 3, 6, 1, 4), 

(4, 3, 9, 1, 4),

(5, 3, 14, 1, 4),
(6, 3, 15, 1, 4),
(7, 3, 17, 1, 4),
(8, 3, 19, 1, 4),

--2° PRIMARIA
(2, 3, 3, 2, 4),

(3, 3, 6, 2, 4), 

(4, 3, 9, 2, 4),

(5, 3, 14, 2, 4),
(6, 3, 15, 2, 4),
(7, 3, 17, 2, 4),
(8, 3, 19, 2, 4),


--3° PRIMARIA
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

--4° PRIMARIA
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

--5° PRIMARIA
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

--6° PRIMARIA
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


--1° SECUNDARIA
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


--2° SECUNDARIA
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


--3° SECUNDARIA
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


--4° SECUNDARIA
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


--5° SECUNDARIA
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


--1° PRIMARIA (temas 1-80)
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

--2° PRIMARIA (81-220 )
--Karen Rocio
--Alberto Martinez
--Lucia Rubi

--3° PRIMARIA   (221-370 )
--Fabiola Nuñez
--Santiago Martínez
--Valeria Serrano

--4° PRIMARIA (371 -520)
--Pedro Álvarez
--Manuel González
--Patricia Morales

--5° PRIMARIA  (521-690)
--Luis Rivera
--Luisana Ramírez
--Eduardo Salazar

--6° PRIMARIA   (691 - 860)
--Natalia Vargas
--Ricardo Castro
--Juliana Mendoza

--1° SECUNDARIA  (861 - 1040)
--Victor Ortiz
--Catalina Moreno
--Luis González

--2° SECUNDARIA  (1041 - 1220 )
--Andrea Paredes
--Javier Hernández
--Carolina Martínez

--3° SECUNDARIA (1221 - 1400)
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
--Paola García
--Miguel Sánchez




--4° SECUNDARIA  (1401 - 1580)
--Rosa Pérez

--Antonio Lopez
--Silvia Ramos
--Diego Martín
--Lorena Díaz



--5° SECUNDARIA (1581 - 1760)
--Esteban Quispe
--Marina Flores
--Diego Salinas
--Luciana Rojas
--Andrés Cruz
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
    ae.anio AS Año_Escolar
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
    ae.anio AS Año_Escolar,
    n.nota AS Promedio_Notas
FROM Notas n
INNER JOIN Usuarios u ON n.id_usuario_estudiante = u.id_usuario
INNER JOIN TemasCurso t ON n.id_tema = t.id_tema
INNER JOIN Grados g ON t.id_grado = g.id_grado
INNER JOIN AnioEscolar ae ON n.id_anio_escolar = ae.id_anio_escolar
WHERE 
    g.id_grado IN (1,2,3,4,5,6,7,8,9,10,11) -- Primaria del 1 al 6 y Secundaria del 7 al 11
    AND ae.anio = 2024  -- Elige el año (2024 es el unico disponible )
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
JOIN Usuarios u_docente ON n.id_usuario_docente = u_docente.id_usuario  -- Relacionando el docente que asignó la nota
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
    COUNT(*) AS veces_enseñado
FROM AsignacionesDocente ad
INNER JOIN Usuarios u ON ad.id_usuario_docente = u.id_usuario
INNER JOIN TemasCurso tc 
    ON tc.id_rama = ad.id_rama AND tc.id_grado = ad.id_grado
GROUP BY ad.id_usuario_docente, u.nombre, u.apellido, tc.nombre
HAVING COUNT(*) > 1
ORDER BY ad.id_usuario_docente, veces_enseñado DESC;








