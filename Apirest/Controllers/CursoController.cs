using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion.Internal;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CursoController : ControllerBase
    {
        private readonly AppDbContext _context;
        public CursoController(AppDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Cursos>>> GetCursos()
        {
            return await _context.Cursos
                                 .Where(c => c.Estado == true)
                                 .ToListAsync();
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<Cursos>> GetCurso(int id)
        {
            var curso = await _context.Cursos
                                      .Where(c => c.IdCurso == id && c.Estado == true)
                                      .FirstOrDefaultAsync();

            if (curso == null)
            {
                return NotFound();
            }

            return curso;
        }
        [HttpPost]
        public async Task<IActionResult> CrearCurso([FromBody] Cursos curso, [FromQuery] int id_usuario_admin)
        {
            if (!await _context.NivelesEducativos.AnyAsync(n => n.IdNivel == curso.IdNivel))
                return BadRequest("El nivel educativo especificado no existe.");

            curso.Estado = true;
            _context.Cursos.Add(curso);
            await _context.SaveChangesAsync();

            _context.HistorialCursos.Add(new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = null,
                NombreNuevo = curso.NombreCurso,
                Accion = "CREAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = id_usuario_admin
            });
            await _context.SaveChangesAsync();

            return Ok(curso);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> EditarCurso(int id, [FromBody] CursoUpdateDTO cursoDto)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
                return NotFound();

            string nombreAnterior = curso.NombreCurso;

            curso.NombreCurso = cursoDto.NombreCurso;
            _context.Entry(curso).Property(c => c.NombreCurso).IsModified = true;
            await _context.SaveChangesAsync();

            _context.HistorialCursos.Add(new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = nombreAnterior,
                NombreNuevo = curso.NombreCurso,
                Accion = "EDITAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = cursoDto.UsuarioResponsable
            });
            await _context.SaveChangesAsync();

            return Ok(curso);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> EliminarCurso(int id, [FromQuery] int id_usuario_admin)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
                return NotFound();

            string nombreAnterior = curso.NombreCurso;
            curso.Estado = false;
            _context.Entry(curso).Property(c => c.Estado).IsModified = true;
            await _context.SaveChangesAsync();

            _context.HistorialCursos.Add(new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = nombreAnterior,
                NombreNuevo = curso.NombreCurso,
                Accion = "ELIMINAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = id_usuario_admin
            });
            await _context.SaveChangesAsync();

            return Ok();
        }

        [HttpGet("Historial/{id}")]
        public async Task<IActionResult> GetHistorialCurso(int id)
        {
            var historial = await _context.HistorialCursos
                .Where(h => h.IdCurso == id)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.IdHistorial,
                    h.IdCurso,
                    h.NombreAnterior,
                    h.NombreNuevo,
                    h.Accion,
                    h.FechaCambio,
                    h.UsuarioResponsable,
                    NombreUsuario = _context.Usuarios
                        .Where(u => u.IdUsuario == h.UsuarioResponsable)
                        .Select(u => u.Nombre + " " + u.Apellido)
                        .FirstOrDefault()
                })
                .ToListAsync();

            if (historial == null || historial.Count == 0)
            {
                return NotFound(new { message = "No hay historial para este curso." });
            }

            return Ok(historial);
        }

        [HttpGet("usuario/{id_usuario}/cursos")]
        public async Task<IActionResult> GetCursosPorUsuario(int id_usuario)
        {
            var cursos = await _context.EstudianteGrado
                .Where(eg => eg.IdUsuarioEstudiante == id_usuario)
                .Join(_context.Grados, eg => eg.IdGrado, g => g.IdGrado, (eg, g) => g)
                .Join(_context.TemasCurso, g => g.IdGrado, t => t.IdGrado, (g, t) => t)
                .Join(_context.RamasCurso, t => t.IdRama, r => r.IdRama, (t, r) => r)
                .Join(_context.Cursos, r => r.IdCurso, c => c.IdCurso, (r, c) => c)
                .Where(c => c.Estado)
                .Distinct()
                .Select(c => new { c.IdCurso, c.NombreCurso })
                .ToListAsync();

            if (!cursos.Any())
                return NotFound("No hay cursos asignados para este usuario.");

            return Ok(cursos);
        }

        //SE LISTA SECCIONES SEGUN DOCENTE

        [HttpGet("docente/{id_docente}/secciones")]
        public async Task<ActionResult<IEnumerable<object>>> GetSeccionesAsignadas(int id_docente)
        {
            var anioActivo = await _context.AnioEscolar
                .FirstOrDefaultAsync(a => a.Estado == true);

            if (anioActivo == null)
                return NotFound("No hay un año escolar activo.");

            var agrupado = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == id_docente && a.IdAnioEscolar == anioActivo.IdAnioEscolar)
                .Where(a => a.RamaCurso.Curso.Estado)
                .Include(a => a.Grado)
                    .ThenInclude(g => g.Nivel)
                .Include(a => a.Seccion)
                .Include(a => a.RamaCurso)
                    .ThenInclude(r => r.Curso)
                .GroupBy(a => new
                {
                    a.IdGrado,
                    NombreGrado = a.Grado.NombreGrado,
                    a.IdSeccion,
                    NombreSeccion = a.Seccion.Nombre,
                    a.IdAnioEscolar
                })
                .Select(g => new
                {
                    IdGrado = g.Key.IdGrado,
                    Grado = g.Key.NombreGrado,
                    IdSeccion = g.Key.IdSeccion,
                    Seccion = g.Key.NombreSeccion,
                    IdAnioEscolar = g.Key.IdAnioEscolar,
                    Cursos = g.Select(a => new
                    {
                        a.IdRama,
                        Rama = a.RamaCurso.Nombre,
                        Curso = a.RamaCurso.Curso.NombreCurso
                    }).Distinct()
                })
                .ToListAsync();

            if (!agrupado.Any())
                return NotFound("No hay asignaciones para este docente en el año escolar activo.");

            return Ok(agrupado);
        }
        /*-----------------------------------------------------------*/


        //SE LISTA ALUMNOS POR SECCION
        [HttpGet("grado/{id_grado}/seccion/{id_seccion}/anio/{id_anio}/alumnos")]
        public async Task<ActionResult<IEnumerable<object>>> GetAlumnosPorGradoSeccion(
        int id_grado, int id_seccion, int id_anio)
        {
            var alumnos = await _context.EstudianteGrado
                .Where(e =>
                    e.IdGrado == id_grado &&
                    e.IdSeccion == id_seccion &&
                    e.IdAnioEscolar == id_anio &&
                    e.UsuarioEstudiante.Estado == true)
                .Include(e => e.UsuarioEstudiante)
                .Include(e => e.Grado)
                .Include(e => e.Seccion)
                .ToListAsync(); // 

           
            var alumnosUnicos = alumnos
                .GroupBy(e => e.IdUsuarioEstudiante)
                .Select(g => g.First())
                .Select(e => new
                {
                    e.IdUsuarioEstudiante,
                    NombreCompleto = e.UsuarioEstudiante.Nombre + " " + e.UsuarioEstudiante.Apellido,
                    IdGrado = e.IdGrado,
                    GradoNombre = e.Grado.NombreGrado,
                    IdSeccion = e.IdSeccion,
                    SeccionNombre = e.Seccion.Nombre
                })
                .ToList();

            if (!alumnosUnicos.Any())
                return NotFound("No hay estudiantes activos asignados a este grado y sección en el año escolar indicado.");

            return Ok(alumnosUnicos);
        }
        /*-----------------------------------------------------------*/

        //SE LISTA CURSOS POR ALUMNO
        [HttpGet("alumno/{id_usuario}/cursos")]
        public async Task<ActionResult<IEnumerable<object>>> GetCursosDelAlumno(int id_usuario)
        {
            var estudianteGrado = await _context.EstudianteGrado
                .Where(e => e.IdUsuarioEstudiante == id_usuario)
                .OrderByDescending(e => e.IdAnioEscolar)
                .FirstOrDefaultAsync();

            if (estudianteGrado == null)
                return NotFound("No se encontró la información del estudiante.");

            var cursos = await _context.TemasCurso
                .Where(t => t.IdGrado == estudianteGrado.IdGrado)
                .Where(t => t.RamaCurso.Curso.Estado)
                .Select(t => new
                {
                    t.IdRama,
                    Rama = t.RamaCurso.Nombre,
                    Curso = t.RamaCurso.Curso.NombreCurso,
                    IdCurso = t.RamaCurso.IdCurso
                })
                .Distinct()
                .ToListAsync();

            return Ok(cursos);
        }
        [HttpGet("alumno/{id_usuario}/docente/{id_docente}/cursos")]
        public async Task<ActionResult<IEnumerable<object>>> GetCursosDelAlumnoPorDocente(int id_usuario, int id_docente)
        {
            // 1. Obtener la asignación del estudiante más reciente
            var estudianteGrado = await _context.EstudianteGrado
                .Where(e => e.IdUsuarioEstudiante == id_usuario)
                .OrderByDescending(e => e.IdAnioEscolar)
                .FirstOrDefaultAsync();

            if (estudianteGrado == null)
                return NotFound("No se encontró la información del estudiante.");

            var idGrado = estudianteGrado.IdGrado;
            var idAnio = estudianteGrado.IdAnioEscolar;

            // 2. Obtener las ramas/cursos asignadas al docente para ese grado y año escolar
            var ramasDocente = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == id_docente
                            && a.IdGrado == idGrado
                            && a.IdAnioEscolar == idAnio)
                .Select(a => a.IdRama)
                .ToListAsync();

            if (!ramasDocente.Any())
                return NotFound("El docente no tiene cursos asignados en este grado para este año.");

            // 3. Obtener los cursos del estudiante que coincidan con las ramas del docente
            var cursos = await _context.TemasCurso
                .Where(t => t.IdGrado == idGrado && ramasDocente.Contains(t.IdRama))
                .Where(t => t.RamaCurso.Curso.Estado)
                .Select(t => new
                {
                    t.IdRama,
                    Rama = t.RamaCurso.Nombre,
                    Curso = t.RamaCurso.Curso.NombreCurso,
                    IdCurso = t.RamaCurso.IdCurso
                })
                .Distinct()
                .ToListAsync();

            return Ok(cursos);
        }
        /*-----------------------------------------------------------*/

        //SE LISTA NOTAS POR CURSO
        [HttpGet("alumno/{id_usuario}/curso/{id_rama}/anio/{id_anio}/notas")]
        public async Task<ActionResult<IEnumerable<object>>> GetNotasPorCurso(int id_usuario, int id_rama, int id_anio)
        {
            var notas = await _context.Notas
                .Where(n => n.IdUsuarioEstudiante == id_usuario && n.IdAnioEscolar == id_anio && n.TemaCurso.IdRama == id_rama)
                .Where(n => n.TemaCurso.RamaCurso.Curso.Estado)
                .Select(n => new
                {
                    IdNota = n.IdNota,
                    IdTema = n.IdTema,
                    Tema = n.TemaCurso.Nombre,
                    Nota = n.Nota,
                    Comentario = n.Comentario
                })
                .ToListAsync();

            return Ok(notas);
        }

        /*-----------------------------------------------------------*/


        [HttpGet("usuario/{id_usuario}/curso/{id_curso}/notas")]
        public async Task<ActionResult<IEnumerable<object>>> GetNotasPorCurso(int id_usuario, int id_curso)
        {
            var notas = await _context.Notas
                .Where(n => n.IdUsuarioEstudiante == id_usuario)
                .Join(_context.TemasCurso,
                    n => n.IdTema,
                    t => t.IdTema,
                    (n, t) => new { n, t })
                .Join(_context.RamasCurso,
                    nt => nt.t.IdRama,
                    r => r.IdRama,
                    (nt, r) => new { nt.n, nt.t, r })
                .Where(x => x.r.IdCurso == id_curso && x.r.Curso.Estado)
                .Select(x => new 
                {
                    x.n.IdNota,
                    x.n.Nota,
                    x.t.Nombre,
                    Comentario = x.n.Comentario,
                    Rama = x.r.Nombre
                })
                .ToListAsync();

            if (!notas.Any())
            {
                return NotFound("No se encontraron notas para este curso y usuario.");
            }

            return Ok(notas);
        }

        [HttpPost("notas/comentario")]
        public async Task<IActionResult> AgregarOEditarNotaConComentario(
        int id_usuario_estudiante, int id_tema, string nota, string comentario, int id_usuario_docente,string justificacion)
        {
            var existingNota = await _context.Notas
                .FirstOrDefaultAsync(n => n.IdUsuarioEstudiante == id_usuario_estudiante && n.IdTema == id_tema);

            string accion;
            string notaAnterior = null;
            string comentarioAnterior = null;

            if (existingNota != null)
            {
                // Guardar valores antiguos para historial
                notaAnterior = existingNota.Nota;
                comentarioAnterior = existingNota.Comentario;

                // Actualizar nota
                existingNota.Nota = nota;
                existingNota.Comentario = comentario;
                existingNota.Justificacion = justificacion;
                _context.Notas.Update(existingNota);

                accion = "ACTUALIZAR";
            }
            else
            {
                var nuevaNota = new Notas
                {
                    IdUsuarioEstudiante = id_usuario_estudiante,
                    IdTema = id_tema,
                    Nota = nota,
                    Comentario = comentario,
                    Justificacion = justificacion,
                    IdAnioEscolar = 4
                };
                await _context.Notas.AddAsync(nuevaNota);
                await _context.SaveChangesAsync(); // Guardamos aquí para obtener id_nota

                existingNota = nuevaNota;
                accion = "CREAR";
            }

            var tema = await _context.TemasCurso.FirstOrDefaultAsync(t => t.IdTema == id_tema);
            string nombreTema = tema != null ? tema.Nombre : $"ID {id_tema}";

            // Agregar al historial
            var historial = new HistorialNotas
            {
                IdNota = existingNota.IdNota,
                IdTema = existingNota.IdTema,
                IdUsuarioEstudiante = id_usuario_estudiante,
                IdUsuarioDocente = id_usuario_docente,
                NotaAnterior = notaAnterior,
                NotaNueva = nota,
                ComentarioAnterior = comentarioAnterior,
                ComentarioNuevo = comentario,
                Justificacion = justificacion,
                Accion = accion,
                FechaCambio = DateTime.Now
            };

            await _context.HistorialNotas.AddAsync(historial);
            await _context.SaveChangesAsync();

            var notificacion = new Notificacion
            {
                IdUsuarioDestino = id_usuario_estudiante,
                Titulo = accion == "CREAR" ? "Nueva nota registrada" : "Nota actualizada",
                Mensaje = $"Tu profesor ha {accion.ToLower()}do tu nota del tema \"{nombreTema}\".",
                Fecha = DateTime.Now,
                Leida = false
            };

            await _context.Notificaciones.AddAsync(notificacion);
            await _context.SaveChangesAsync();

            return Ok(new { message = "Nota guardada y registrada en historial correctamente." });
        }

        [HttpGet("temas/pendientes")]
        public async Task<IActionResult> GetTemasSinNota(int id_usuario_estudiante, int id_rama)
        {
            var temasCurso = await _context.TemasCurso
                .Where(t => t.IdRama == id_rama)
                .OrderBy(t => t.Orden) // Asegúrate de tener un campo "Orden"
                .ToListAsync();

            var temasConNota = await _context.Notas
                .Where(n => n.IdUsuarioEstudiante == id_usuario_estudiante)
                .Select(n => n.IdTema)
                .ToListAsync();

            var temasPendientes = temasCurso
                .Where(t => !temasConNota.Contains(t.IdTema))
                .Select(t => new {
                    t.IdTema,
                    t.Nombre,
                    t.Orden
                })
                .ToList();

            return Ok(temasPendientes);
        }

        [HttpGet("notas/historial")]
        public async Task<IActionResult> ObtenerHistorialPorIdNota(int idNota)
        {
            var historial = await _context.HistorialNotas
                .Where(h => h.IdNota == idNota)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.IdHistorial,
                    h.IdNota,
                    h.IdTema,
                    h.IdUsuarioEstudiante,
                    h.IdUsuarioDocente,
                    NombreDocente = _context.Usuarios
                        .Where(u => u.IdUsuario == h.IdUsuarioDocente)
                        .Select(u => u.Nombre)
                        .FirstOrDefault(),
                    h.NotaAnterior,
                    h.NotaNueva,
                    h.ComentarioAnterior,
                    h.ComentarioNuevo,
                    h.Accion,
                    h.Justificacion,
                    FechaCambio = h.FechaCambio.ToString("yyyy-MM-dd HH:mm:ss")
                })
                .ToListAsync();

            if (historial.Count == 0)
                return NotFound(new { message = "No hay historial para la nota indicada." });

            return Ok(historial);
        }
        /*----------------------NOTFICACIONES------------------------*/
        [HttpPut("notificaciones/{id}/leer")]
        public async Task<IActionResult> MarcarNotificacionComoLeida(int id)
        {
            var notificacion = await _context.Notificaciones.FindAsync(id);
            if (notificacion == null)
                return NotFound(new { message = "Notificación no encontrada" });

            notificacion.Leida = true;
            _context.Notificaciones.Update(notificacion);
            await _context.SaveChangesAsync();

            return Ok(new { message = "Notificación marcada como leída" });
        }
        [HttpGet("notificaciones/estudiante/{id_usuario}")]
        public async Task<IActionResult> GetNotificacionesNoLeidas(int id_usuario)
        {
            var notificaciones = await _context.Notificaciones
                .Where(n => n.IdUsuarioDestino == id_usuario && !n.Leida)
                .OrderByDescending(n => n.Fecha)
                .Select(n => new
                {
                    n.IdNotificacion,
                    n.Titulo,
                    n.Mensaje,
                    n.Fecha,
                    n.Leida
                })
                .ToListAsync();

            return Ok(notificaciones);
        }
        [HttpGet("notificaciones/estudiante/{id_usuario}/todas")]
        public async Task<IActionResult> GetHistorialNotificaciones(int id_usuario)
        {
            var notificaciones = await _context.Notificaciones
                .Where(n => n.IdUsuarioDestino == id_usuario)
                .OrderByDescending(n => n.Fecha)
                .Select(n => new
                {
                    n.IdNotificacion,
                    n.Titulo,
                    n.Mensaje,
                    n.Fecha,
                    n.Leida
                })
                .ToListAsync();

            return Ok(notificaciones);
        }
    }
}