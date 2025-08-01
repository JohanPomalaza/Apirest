USE [DB_Evaluatec]
GO
/****** Object:  Table [dbo].[AnioEscolar]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnioEscolar](
	[id_anio_escolar] [int] IDENTITY(1,1) NOT NULL,
	[anio] [int] NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_anio_escolar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsignacionesDocente]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionesDocente](
	[id_asignacion] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario_docente] [int] NOT NULL,
	[id_asignador] [int] NOT NULL,
	[id_rama] [int] NOT NULL,
	[id_grado] [int] NOT NULL,
	[id_seccion] [int] NOT NULL,
	[id_anio_escolar] [int] NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[id_nivel] [int] NOT NULL,
	[nombre_curso] [nvarchar](100) NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursosPorNivel]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursosPorNivel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_nivel] [int] NOT NULL,
	[id_curso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudianteGrado]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudianteGrado](
	[id_estudiante_grado] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario_estudiante] [int] NULL,
	[id_grado] [int] NULL,
	[id_seccion] [int] NOT NULL,
	[id_anio_escolar] [int] NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estudiante_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grados]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grados](
	[id_grado] [int] NOT NULL,
	[id_nivel] [int] NULL,
	[nombre_grado] [nvarchar](50) NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialCursos]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialCursos](
	[id_historial] [int] IDENTITY(1,1) NOT NULL,
	[id_curso] [int] NOT NULL,
	[nombre_anterior] [nvarchar](100) NULL,
	[nombre_nuevo] [nvarchar](100) NULL,
	[accion] [varchar](20) NULL,
	[fecha_cambio] [datetime] NULL,
	[usuario_responsable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialDocentes]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialDocentes](
	[id_historial] [int] IDENTITY(1,1) NOT NULL,
	[id_asignacion] [int] NOT NULL,
	[id_usuario_docente] [int] NOT NULL,
	[id_rama] [int] NULL,
	[id_grado] [int] NULL,
	[id_anio_escolar] [int] NULL,
	[accion] [varchar](20) NULL,
	[fecha_cambio] [datetime] NULL,
	[usuario_responsable] [int] NULL,
	[correonuevo] [varchar](500) NULL,
	[correoanterior] [varchar](500) NULL,
	[contraseñanueva] [varchar](500) NULL,
	[contraseñaanterior] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialEstudiantes]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialEstudiantes](
	[id_historial] [int] IDENTITY(1,1) NOT NULL,
	[id_estudiante_grado] [int] NOT NULL,
	[id_usuario_estudiante] [int] NOT NULL,
	[id_grado] [int] NULL,
	[id_anio_escolar] [int] NULL,
	[estado_anterior] [bit] NULL,
	[estado_nuevo] [bit] NULL,
	[accion] [varchar](20) NULL,
	[fecha_cambio] [datetime] NULL,
	[usuario_responsable] [int] NULL,
	[id_seccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialNotas]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialNotas](
	[id_historial] [int] IDENTITY(1,1) NOT NULL,
	[id_nota] [int] NOT NULL,
	[id_tema] [int] NOT NULL,
	[id_usuario_estudiante] [int] NOT NULL,
	[id_usuario_docente] [int] NOT NULL,
	[nota_anterior] [varchar](10) NULL,
	[nota_nueva] [varchar](10) NULL,
	[comentario_anterior] [text] NULL,
	[comentario_nuevo] [text] NULL,
	[accion] [varchar](20) NULL,
	[fecha_cambio] [datetime] NULL,
	[justificacion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialRamas]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialRamas](
	[IdHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IdRama] [int] NOT NULL,
	[Accion] [nvarchar](50) NOT NULL,
	[NombreAnterior] [nvarchar](100) NULL,
	[NombreNuevo] [nvarchar](100) NULL,
	[EstadoAnterior] [bit] NULL,
	[EstadoNuevo] [bit] NULL,
	[FechaCambio] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[NombreUsuario] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialTemas]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialTemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTema] [int] NOT NULL,
	[Accion] [nvarchar](50) NOT NULL,
	[NombreAnterior] [nvarchar](200) NULL,
	[NombreNuevo] [nvarchar](200) NULL,
	[IdRamaAnterior] [int] NULL,
	[IdRamaNueva] [int] NULL,
	[FechaCambio] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[EstadoAnterior] [bit] NULL,
	[EstadoNuevo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelesEducativos]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelesEducativos](
	[id_nivel] [int] NOT NULL,
	[nombre_nivel] [nvarchar](50) NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[id_nota] [int] IDENTITY(1,1) NOT NULL,
	[id_tema] [int] NULL,
	[id_usuario_estudiante] [int] NOT NULL,
	[nota] [varchar](10) NOT NULL,
	[id_anio_escolar] [int] NOT NULL,
	[id_usuario_docente] [int] NULL,
	[comentario] [varchar](500) NULL,
	[justificacion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[id_notificacion] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario_destino] [int] NOT NULL,
	[titulo] [nvarchar](200) NOT NULL,
	[mensaje] [nvarchar](500) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[leida] [bit] NOT NULL,
	[id_nota] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_notificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RamasCurso]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RamasCurso](
	[id_rama] [int] IDENTITY(1,1) NOT NULL,
	[id_curso] [int] NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_rol] [int] NOT NULL,
	[nombre_rol] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secciones]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secciones](
	[id_seccion] [int] IDENTITY(1,1) NOT NULL,
	[id_grado] [int] NOT NULL,
	[nombre] [char](1) NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemasCurso]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemasCurso](
	[id_tema] [int] IDENTITY(1,1) NOT NULL,
	[id_rama] [int] NULL,
	[id_grado] [int] NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[estado] [bit] NULL,
	[orden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 09/07/2025 22:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[apellido] [nvarchar](100) NOT NULL,
	[correo] [nvarchar](100) NOT NULL,
	[contrasena] [nvarchar](100) NOT NULL,
	[id_rol] [int] NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnioEscolar] ON 

INSERT [dbo].[AnioEscolar] ([id_anio_escolar], [anio], [estado]) VALUES (1, 2021, 0)
INSERT [dbo].[AnioEscolar] ([id_anio_escolar], [anio], [estado]) VALUES (2, 2022, 0)
INSERT [dbo].[AnioEscolar] ([id_anio_escolar], [anio], [estado]) VALUES (3, 2023, 0)
INSERT [dbo].[AnioEscolar] ([id_anio_escolar], [anio], [estado]) VALUES (4, 2024, 1)
SET IDENTITY_INSERT [dbo].[AnioEscolar] OFF
GO
SET IDENTITY_INSERT [dbo].[AsignacionesDocente] ON 

INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (1, 1, 4, 1, 1, 1, 4, 1)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (2, 1, 4, 2, 1, 1, 4, 1)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (3, 5, 4, 1, 1, 1, 4, 1)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (4, 5, 4, 2, 1, 1, 4, 1)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (5, 7, 4, 7, 9, 42, 4, 1)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (6, 7, 4, 7, 3, 12, 4, 0)
INSERT [dbo].[AsignacionesDocente] ([id_asignacion], [id_usuario_docente], [id_asignador], [id_rama], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (7, 7, 4, 7, 3, 4, 4, 1)
SET IDENTITY_INSERT [dbo].[AsignacionesDocente] OFF
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([id_curso], [id_nivel], [nombre_curso], [estado]) VALUES (1, 1, N'Matemáticas', 1)
INSERT [dbo].[Cursos] ([id_curso], [id_nivel], [nombre_curso], [estado]) VALUES (2, 1, N'Comunicación', 1)
INSERT [dbo].[Cursos] ([id_curso], [id_nivel], [nombre_curso], [estado]) VALUES (3, 2, N'Ciencia y Tecnología', 1)
INSERT [dbo].[Cursos] ([id_curso], [id_nivel], [nombre_curso], [estado]) VALUES (4, 1, N'Historia', 1)
INSERT [dbo].[Cursos] ([id_curso], [id_nivel], [nombre_curso], [estado]) VALUES (5, 1, N'Diseno', 1)
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[CursosPorNivel] ON 

INSERT [dbo].[CursosPorNivel] ([id], [id_nivel], [id_curso]) VALUES (1, 1, 1)
INSERT [dbo].[CursosPorNivel] ([id], [id_nivel], [id_curso]) VALUES (2, 1, 2)
INSERT [dbo].[CursosPorNivel] ([id], [id_nivel], [id_curso]) VALUES (3, 2, 3)
SET IDENTITY_INSERT [dbo].[CursosPorNivel] OFF
GO
SET IDENTITY_INSERT [dbo].[EstudianteGrado] ON 

INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (2, 2, 1, 1, 4, 1)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (3, 3, 1, 1, 4, 1)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (4, 6, 1, 1, 4, 1)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (5, 8, 3, 14, 4, 1)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (6, 8, 3, 12, 4, 0)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (7, 8, 3, 13, 4, 0)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (8, 8, 3, 12, 4, 0)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (9, 8, 3, 14, 4, 0)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (10, 9, 8, 36, 4, 1)
INSERT [dbo].[EstudianteGrado] ([id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_seccion], [id_anio_escolar], [estado]) VALUES (11, 9, 8, 37, 4, 1)
SET IDENTITY_INSERT [dbo].[EstudianteGrado] OFF
GO
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (1, 1, N'1° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (2, 1, N'2° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (3, 2, N'1° Secundaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (4, 1, N'3° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (5, 1, N'4° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (6, 1, N'5° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (7, 1, N'6° Primaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (8, 2, N'2° Secundaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (9, 2, N'3° Secundaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (10, 2, N'4° Secundaria', 1)
INSERT [dbo].[Grados] ([id_grado], [id_nivel], [nombre_grado], [estado]) VALUES (11, 2, N'5° Secundaria', 1)
GO
SET IDENTITY_INSERT [dbo].[HistorialCursos] ON 

INSERT [dbo].[HistorialCursos] ([id_historial], [id_curso], [nombre_anterior], [nombre_nuevo], [accion], [fecha_cambio], [usuario_responsable]) VALUES (1, 4, NULL, N'Historia', N'CREAR', CAST(N'2025-07-05T14:13:46.750' AS DateTime), 3)
INSERT [dbo].[HistorialCursos] ([id_historial], [id_curso], [nombre_anterior], [nombre_nuevo], [accion], [fecha_cambio], [usuario_responsable]) VALUES (2, 5, NULL, N'Diseno', N'CREAR', CAST(N'2025-07-05T16:45:50.193' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[HistorialCursos] OFF
GO
SET IDENTITY_INSERT [dbo].[HistorialEstudiantes] ON 

INSERT [dbo].[HistorialEstudiantes] ([id_historial], [id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_anio_escolar], [estado_anterior], [estado_nuevo], [accion], [fecha_cambio], [usuario_responsable], [id_seccion]) VALUES (1, 4, 6, 1, 4, NULL, 1, N'ASIGNADO', CAST(N'2025-07-05T15:32:32.977' AS DateTime), 4, 12)
INSERT [dbo].[HistorialEstudiantes] ([id_historial], [id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_anio_escolar], [estado_anterior], [estado_nuevo], [accion], [fecha_cambio], [usuario_responsable], [id_seccion]) VALUES (7, 10, 9, 8, 4, NULL, 1, N'ASIGNADO', CAST(N'2025-07-06T17:34:45.777' AS DateTime), 4, 36)
INSERT [dbo].[HistorialEstudiantes] ([id_historial], [id_estudiante_grado], [id_usuario_estudiante], [id_grado], [id_anio_escolar], [estado_anterior], [estado_nuevo], [accion], [fecha_cambio], [usuario_responsable], [id_seccion]) VALUES (8, 11, 9, 8, 4, NULL, 1, N'ASIGNADO', CAST(N'2025-07-06T17:35:18.430' AS DateTime), 4, 37)
SET IDENTITY_INSERT [dbo].[HistorialEstudiantes] OFF
GO
SET IDENTITY_INSERT [dbo].[HistorialNotas] ON 

INSERT [dbo].[HistorialNotas] ([id_historial], [id_nota], [id_tema], [id_usuario_estudiante], [id_usuario_docente], [nota_anterior], [nota_nueva], [comentario_anterior], [comentario_nuevo], [accion], [fecha_cambio], [justificacion]) VALUES (1, 4, 10, 2, 1, NULL, N'15', NULL, N'Bien hechio', N'CREAR', CAST(N'2025-07-06T19:13:50.840' AS DateTime), N'-')
INSERT [dbo].[HistorialNotas] ([id_historial], [id_nota], [id_tema], [id_usuario_estudiante], [id_usuario_docente], [nota_anterior], [nota_nueva], [comentario_anterior], [comentario_nuevo], [accion], [fecha_cambio], [justificacion]) VALUES (2, 5, 1, 6, 1, NULL, N'15', NULL, N'Se puede mejorar', N'CREAR', CAST(N'2025-07-06T19:18:09.033' AS DateTime), N'-')
SET IDENTITY_INSERT [dbo].[HistorialNotas] OFF
GO
SET IDENTITY_INSERT [dbo].[HistorialRamas] ON 

INSERT [dbo].[HistorialRamas] ([IdHistorial], [IdRama], [Accion], [NombreAnterior], [NombreNuevo], [EstadoAnterior], [EstadoNuevo], [FechaCambio], [IdUsuario], [NombreUsuario]) VALUES (1, 5, N'CREADO', NULL, N'Trigonometria', NULL, 1, CAST(N'2025-07-05T15:34:00.100' AS DateTime), 4, NULL)
INSERT [dbo].[HistorialRamas] ([IdHistorial], [IdRama], [Accion], [NombreAnterior], [NombreNuevo], [EstadoAnterior], [EstadoNuevo], [FechaCambio], [IdUsuario], [NombreUsuario]) VALUES (2, 6, N'CREADO', NULL, N'Pintado 1', NULL, 1, CAST(N'2025-07-05T16:46:02.420' AS DateTime), 4, NULL)
INSERT [dbo].[HistorialRamas] ([IdHistorial], [IdRama], [Accion], [NombreAnterior], [NombreNuevo], [EstadoAnterior], [EstadoNuevo], [FechaCambio], [IdUsuario], [NombreUsuario]) VALUES (3, 7, N'CREADO', NULL, N'Computacion Basica', NULL, 1, CAST(N'2025-07-05T17:50:30.517' AS DateTime), 4, NULL)
SET IDENTITY_INSERT [dbo].[HistorialRamas] OFF
GO
SET IDENTITY_INSERT [dbo].[HistorialTemas] ON 

INSERT [dbo].[HistorialTemas] ([Id], [IdTema], [Accion], [NombreAnterior], [NombreNuevo], [IdRamaAnterior], [IdRamaNueva], [FechaCambio], [IdUsuario], [EstadoAnterior], [EstadoNuevo]) VALUES (1, 6, N'CREADO', NULL, N'Encuentra los triangulos', NULL, 5, CAST(N'2025-07-05T15:36:23.700' AS DateTime), 4, NULL, 1)
INSERT [dbo].[HistorialTemas] ([Id], [IdTema], [Accion], [NombreAnterior], [NombreNuevo], [IdRamaAnterior], [IdRamaNueva], [FechaCambio], [IdUsuario], [EstadoAnterior], [EstadoNuevo]) VALUES (2, 7, N'CREADO', NULL, N'Pintado Con La Mano', NULL, 6, CAST(N'2025-07-05T17:33:40.477' AS DateTime), 4, NULL, 1)
INSERT [dbo].[HistorialTemas] ([Id], [IdTema], [Accion], [NombreAnterior], [NombreNuevo], [IdRamaAnterior], [IdRamaNueva], [FechaCambio], [IdUsuario], [EstadoAnterior], [EstadoNuevo]) VALUES (3, 8, N'CREADO', NULL, N'Pintado Con brocha', NULL, 6, CAST(N'2025-07-05T17:34:37.917' AS DateTime), 4, NULL, 1)
INSERT [dbo].[HistorialTemas] ([Id], [IdTema], [Accion], [NombreAnterior], [NombreNuevo], [IdRamaAnterior], [IdRamaNueva], [FechaCambio], [IdUsuario], [EstadoAnterior], [EstadoNuevo]) VALUES (4, 9, N'CREADO', NULL, N'Crear Archivos En windows', NULL, 7, CAST(N'2025-07-05T17:50:51.730' AS DateTime), 4, NULL, 1)
SET IDENTITY_INSERT [dbo].[HistorialTemas] OFF
GO
INSERT [dbo].[NivelesEducativos] ([id_nivel], [nombre_nivel], [estado]) VALUES (1, N'Primaria', 1)
INSERT [dbo].[NivelesEducativos] ([id_nivel], [nombre_nivel], [estado]) VALUES (2, N'Secundaria', 1)
GO
SET IDENTITY_INSERT [dbo].[Notas] ON 

INSERT [dbo].[Notas] ([id_nota], [id_tema], [id_usuario_estudiante], [nota], [id_anio_escolar], [id_usuario_docente], [comentario], [justificacion]) VALUES (1, 1, 2, N'18', 4, 1, N'Buen inicio', NULL)
INSERT [dbo].[Notas] ([id_nota], [id_tema], [id_usuario_estudiante], [nota], [id_anio_escolar], [id_usuario_docente], [comentario], [justificacion]) VALUES (2, 2, 2, N'17', 4, 1, N'Debe practicar más', N'Faltó a clase')
INSERT [dbo].[Notas] ([id_nota], [id_tema], [id_usuario_estudiante], [nota], [id_anio_escolar], [id_usuario_docente], [comentario], [justificacion]) VALUES (3, 1, 3, N'19', 4, 1, N'Excelente', NULL)
INSERT [dbo].[Notas] ([id_nota], [id_tema], [id_usuario_estudiante], [nota], [id_anio_escolar], [id_usuario_docente], [comentario], [justificacion]) VALUES (4, 10, 2, N'15', 4, NULL, N'Bien hechio', N'-')
INSERT [dbo].[Notas] ([id_nota], [id_tema], [id_usuario_estudiante], [nota], [id_anio_escolar], [id_usuario_docente], [comentario], [justificacion]) VALUES (5, 1, 6, N'15', 4, NULL, N'Se puede mejorar', N'-')
SET IDENTITY_INSERT [dbo].[Notas] OFF
GO
SET IDENTITY_INSERT [dbo].[Notificaciones] ON 

INSERT [dbo].[Notificaciones] ([id_notificacion], [id_usuario_destino], [titulo], [mensaje], [fecha], [leida], [id_nota]) VALUES (1, 2, N'Nueva nota registrada', N'Tu profesor ha creardo tu nota del tema "Division".', CAST(N'2025-07-06T19:13:50.887' AS DateTime), 0, NULL)
INSERT [dbo].[Notificaciones] ([id_notificacion], [id_usuario_destino], [titulo], [mensaje], [fecha], [leida], [id_nota]) VALUES (2, 6, N'Nueva nota registrada', N'Tu profesor ha creardo tu nota del tema "Sumas y Restas".', CAST(N'2025-07-06T19:18:09.043' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Notificaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[RamasCurso] ON 

INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (1, 1, N'Aritmética', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (2, 1, N'Geometría', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (3, 2, N'Lenguaje', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (4, 2, N'Literatura', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (5, 1, N'Trigonometria', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (6, 5, N'Pintado 1', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (7, 3, N'Computacion Basica', 1)
INSERT [dbo].[RamasCurso] ([id_rama], [id_curso], [nombre], [estado]) VALUES (8, 4, N'Historial del peru', 1)
SET IDENTITY_INSERT [dbo].[RamasCurso] OFF
GO
INSERT [dbo].[Roles] ([id_rol], [nombre_rol]) VALUES (3, N'entidad')
INSERT [dbo].[Roles] ([id_rol], [nombre_rol]) VALUES (2, N'Estudiante')
INSERT [dbo].[Roles] ([id_rol], [nombre_rol]) VALUES (1, N'Profesor')
GO
SET IDENTITY_INSERT [dbo].[Secciones] ON 

INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (1, 1, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (2, 1, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (3, 2, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (4, 3, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (5, 1, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (6, 1, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (7, 1, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (8, 2, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (9, 2, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (10, 2, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (11, 2, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (12, 3, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (13, 3, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (14, 3, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (15, 3, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (16, 4, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (17, 4, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (18, 4, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (19, 4, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (20, 4, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (21, 5, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (22, 5, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (23, 5, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (24, 5, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (25, 5, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (26, 6, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (27, 6, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (28, 6, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (29, 6, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (30, 6, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (31, 7, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (32, 7, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (33, 7, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (34, 7, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (35, 7, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (36, 8, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (37, 8, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (38, 8, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (39, 8, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (40, 8, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (41, 9, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (42, 9, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (43, 9, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (44, 9, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (45, 9, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (46, 10, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (47, 10, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (48, 10, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (49, 10, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (50, 10, N'E', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (51, 11, N'A', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (52, 11, N'B', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (53, 11, N'C', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (54, 11, N'D', 1)
INSERT [dbo].[Secciones] ([id_seccion], [id_grado], [nombre], [estado]) VALUES (55, 11, N'E', 1)
SET IDENTITY_INSERT [dbo].[Secciones] OFF
GO
SET IDENTITY_INSERT [dbo].[TemasCurso] ON 

INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (1, 1, 1, N'Sumas y Restas', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (2, 1, 1, N'Multiplicación y División', 1, 2)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (3, 2, 1, N'Figuras planas', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (4, 3, 1, N'Uso de mayúsculas', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (5, 3, 1, N'Lectura de palabras', 1, 2)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (6, 5, 1, N'Encuentra los triangulos', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (7, 6, 1, N'Pintado Con La Mano', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (8, 6, 1, N'Pintado Con brocha', 1, 2)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (9, 7, 3, N'Crear Archivos En windows', 1, 1)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (10, 1, 1, N'Division', 1, 3)
INSERT [dbo].[TemasCurso] ([id_tema], [id_rama], [id_grado], [nombre], [estado], [orden]) VALUES (11, 8, 1, N'Conociendo el Peru', 1, 1)
SET IDENTITY_INSERT [dbo].[TemasCurso] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (1, N'Lucía', N'García', N'lucia@demo.com', N'pass123', 1, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (2, N'Pedro', N'López', N'pedro@demo.com', N'pass123', 2, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (3, N'María', N'Torres', N'maria@demo.com', N'pass123', 2, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (4, N'Andrés', N'Vega', N'andres@demo.com', N'pass123', 3, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (5, N'Juan', N'Palomino', N'palomino@gmail.com', N'1234', 1, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (6, N'Johan', N'Pomalaza Baldoceda', N'pomalaza@gmail.com', N'1234', 2, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (7, N'Lucho', N'Perez', N'perez@gmail.com', N'12345', 1, 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (8, N'Juan', N'Ramirez', N'ramirez1@gmail.com', N'1234', 2, 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [correo], [contrasena], [id_rol], [estado]) VALUES (9, N'Juana', N'Virgil', N'virgil@gmail.com', N'1234', 2, 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
/****** Object:  Index [UQ__Notas__7B72E2FF25B89578]    Script Date: 09/07/2025 22:59:29 ******/
ALTER TABLE [dbo].[Notas] ADD UNIQUE NONCLUSTERED 
(
	[id_usuario_estudiante] ASC,
	[id_tema] ASC,
	[id_anio_escolar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__673CB43584C218F0]    Script Date: 09/07/2025 22:59:29 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[nombre_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__2A586E0BC4029B62]    Script Date: 09/07/2025 22:59:29 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnioEscolar] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Cursos] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[EstudianteGrado] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Grados] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[HistorialCursos] ADD  DEFAULT (getdate()) FOR [fecha_cambio]
GO
ALTER TABLE [dbo].[HistorialDocentes] ADD  DEFAULT (getdate()) FOR [fecha_cambio]
GO
ALTER TABLE [dbo].[HistorialEstudiantes] ADD  DEFAULT (getdate()) FOR [fecha_cambio]
GO
ALTER TABLE [dbo].[HistorialNotas] ADD  DEFAULT (getdate()) FOR [fecha_cambio]
GO
ALTER TABLE [dbo].[NivelesEducativos] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Notificaciones] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Notificaciones] ADD  DEFAULT ((0)) FOR [leida]
GO
ALTER TABLE [dbo].[RamasCurso] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Secciones] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[TemasCurso] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_anio_escolar])
REFERENCES [dbo].[AnioEscolar] ([id_anio_escolar])
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_asignador])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_rama])
REFERENCES [dbo].[RamasCurso] ([id_rama])
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_seccion])
REFERENCES [dbo].[Secciones] ([id_seccion])
GO
ALTER TABLE [dbo].[AsignacionesDocente]  WITH CHECK ADD FOREIGN KEY([id_usuario_docente])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD FOREIGN KEY([id_nivel])
REFERENCES [dbo].[NivelesEducativos] ([id_nivel])
GO
ALTER TABLE [dbo].[CursosPorNivel]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[Cursos] ([id_curso])
GO
ALTER TABLE [dbo].[CursosPorNivel]  WITH CHECK ADD FOREIGN KEY([id_nivel])
REFERENCES [dbo].[NivelesEducativos] ([id_nivel])
GO
ALTER TABLE [dbo].[EstudianteGrado]  WITH CHECK ADD FOREIGN KEY([id_anio_escolar])
REFERENCES [dbo].[AnioEscolar] ([id_anio_escolar])
GO
ALTER TABLE [dbo].[EstudianteGrado]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[EstudianteGrado]  WITH CHECK ADD FOREIGN KEY([id_seccion])
REFERENCES [dbo].[Secciones] ([id_seccion])
GO
ALTER TABLE [dbo].[EstudianteGrado]  WITH CHECK ADD FOREIGN KEY([id_usuario_estudiante])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Grados]  WITH CHECK ADD FOREIGN KEY([id_nivel])
REFERENCES [dbo].[NivelesEducativos] ([id_nivel])
GO
ALTER TABLE [dbo].[HistorialCursos]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[Cursos] ([id_curso])
GO
ALTER TABLE [dbo].[HistorialCursos]  WITH CHECK ADD FOREIGN KEY([usuario_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([id_anio_escolar])
REFERENCES [dbo].[AnioEscolar] ([id_anio_escolar])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([id_asignacion])
REFERENCES [dbo].[AsignacionesDocente] ([id_asignacion])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([id_rama])
REFERENCES [dbo].[RamasCurso] ([id_rama])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([id_usuario_docente])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialDocentes]  WITH CHECK ADD FOREIGN KEY([usuario_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialEstudiantes]  WITH CHECK ADD FOREIGN KEY([id_anio_escolar])
REFERENCES [dbo].[AnioEscolar] ([id_anio_escolar])
GO
ALTER TABLE [dbo].[HistorialEstudiantes]  WITH CHECK ADD FOREIGN KEY([id_estudiante_grado])
REFERENCES [dbo].[EstudianteGrado] ([id_estudiante_grado])
GO
ALTER TABLE [dbo].[HistorialEstudiantes]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[HistorialEstudiantes]  WITH CHECK ADD FOREIGN KEY([id_usuario_estudiante])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialEstudiantes]  WITH CHECK ADD FOREIGN KEY([usuario_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD FOREIGN KEY([id_nota])
REFERENCES [dbo].[Notas] ([id_nota])
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD FOREIGN KEY([id_tema])
REFERENCES [dbo].[TemasCurso] ([id_tema])
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD FOREIGN KEY([id_usuario_estudiante])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD FOREIGN KEY([id_usuario_docente])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_anio_escolar])
REFERENCES [dbo].[AnioEscolar] ([id_anio_escolar])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_tema])
REFERENCES [dbo].[TemasCurso] ([id_tema])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_usuario_estudiante])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_usuario_docente])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Notificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Notificaciones_Nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[Notas] ([id_nota])
GO
ALTER TABLE [dbo].[Notificaciones] CHECK CONSTRAINT [FK_Notificaciones_Nota]
GO
ALTER TABLE [dbo].[Notificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Notificaciones_UsuarioDestino] FOREIGN KEY([id_usuario_destino])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Notificaciones] CHECK CONSTRAINT [FK_Notificaciones_UsuarioDestino]
GO
ALTER TABLE [dbo].[RamasCurso]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[Cursos] ([id_curso])
GO
ALTER TABLE [dbo].[Secciones]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[TemasCurso]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[Grados] ([id_grado])
GO
ALTER TABLE [dbo].[TemasCurso]  WITH CHECK ADD FOREIGN KEY([id_rama])
REFERENCES [dbo].[RamasCurso] ([id_rama])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
ON DELETE SET NULL
GO
