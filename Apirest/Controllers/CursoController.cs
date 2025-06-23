using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
            curso.Estado = true;  // Se crea como activo por defecto
            _context.Cursos.Add(curso);
            await _context.SaveChangesAsync();

            // Guardar en historial
            var historial = new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = null,
                NombreNuevo = curso.NombreCurso,
                Accion = "CREAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = id_usuario_admin
            };
            _context.HistorialCursos.Add(historial);
            await _context.SaveChangesAsync();

            return Ok(curso);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> EditarCurso(int id, [FromBody] CursoUpdateDTO cursoDto)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
            {
                return NotFound();
            }

            string nombreAnterior = curso.NombreCurso;

            // Actualizamos solo el nombre
            curso.NombreCurso = cursoDto.NombreCurso;
            _context.Entry(curso).Property(c => c.NombreCurso).IsModified = true;

            await _context.SaveChangesAsync();

            // Guardar en historial
            var historial = new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = nombreAnterior,
                NombreNuevo = curso.NombreCurso,
                Accion = "EDITAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = cursoDto.UsuarioResponsable
            };
            _context.HistorialCursos.Add(historial);
            await _context.SaveChangesAsync();

            return Ok();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> EliminarCurso(int id, [FromQuery] int id_usuario_admin)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
            {
                return NotFound();
            }

            string nombreAnterior = curso.NombreCurso;

            curso.Estado = false;  // Marcamos como inactivo
            _context.Entry(curso).Property(c => c.Estado).IsModified = true;
            await _context.SaveChangesAsync();

            // Guardar en historial
            var historial = new HistorialCursos
            {
                IdCurso = curso.IdCurso,
                NombreAnterior = nombreAnterior,
                NombreNuevo = curso.NombreCurso, // sigue siendo el mismo nombre
                Accion = "ELIMINAR",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = id_usuario_admin
            };
            _context.HistorialCursos.Add(historial);
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
        public async Task<ActionResult<IEnumerable<object>>> GetCursosPorUsuario(int id_usuario)
        {
            var cursos = await _context.EstudianteGrado
                .Where(eg => eg.IdUsuarioEstudiante == id_usuario)
                .Join(_context.Grados,
                    eg => eg.IdGrado,
                    g => g.IdGrado,
                    (eg, g) => g)
                .Join(_context.TemasCurso,
                    g => g.IdGrado,
                    t => t.IdGrado,
                    (g, t) => t)
                .Join(_context.RamasCurso,
                    t => t.IdRama,
                    r => r.IdRama,
                    (t, r) => r)
                .Join(_context.Cursos,
                    r => r.IdCurso,
                    c => c.IdCurso,
                    (r, c) => c)
                .Where(c => c.Estado)
                .Distinct()
                .Select(c => new { c.IdCurso, c.NombreCurso })
                .ToListAsync();

            if (!cursos.Any())
            {
                return NotFound("No hay cursos asignados para este usuario.");
            }

            return Ok(cursos);
        }

        //SE LISTA SECCIONES SEGUN DOCENTE

        [HttpGet("docente/{id_docente}/secciones")]
        public async Task<ActionResult<IEnumerable<object>>> GetSeccionesAsignadas(int id_docente)
        {
            // Obtener el año escolar activo
            var anioActivo = await _context.AnioEscolar
                .FirstOrDefaultAsync(a => a.Estado == true);

            if (anioActivo == null)
                return NotFound("No hay un año escolar activo.");

            // Obtener secciones solo para el año escolar activo
            var secciones = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == id_docente && a.IdAnioEscolar == anioActivo.IdAnioEscolar)
                .Where(a => a.RamaCurso.Curso.Estado)
                .Select(a => new
                {
                    a.IdAsignacion,
                    a.IdGrado,
                    Grado = a.Grado.NombreGrado,
                    a.IdRama,
                    Rama = a.RamaCurso.Nombre,
                    Curso = a.RamaCurso.Curso.NombreCurso,
                    a.IdAnioEscolar
                })
                .ToListAsync();

            if (!secciones.Any())
                return NotFound("No hay secciones asignadas a este docente para el año escolar activo.");

            return Ok(secciones);
        }
        /*-----------------------------------------------------------*/


        //SE LISTA ALUMNOS POR SECCION
        [HttpGet("grado/{id_grado}/anio/{id_anio}/alumnos")]
        public async Task<ActionResult<IEnumerable<object>>> GetAlumnosPorGrado(int id_grado, int id_anio)
        {
            var alumnos = await _context.EstudianteGrado
                .Where(e => e.IdGrado == id_grado && e.IdAnioEscolar == id_anio)
                .Include(e => e.UsuarioEstudiante)
                .Select(e => new
                {
                    e.IdUsuarioEstudiante,
                    NombreCompleto = e.UsuarioEstudiante.Nombre + " " + e.UsuarioEstudiante.Apellido
                })
                .ToListAsync();

            if (!alumnos.Any())
                return NotFound("No hay estudiantes en esta sección.");

            return Ok(alumnos);
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
    int id_usuario_estudiante, int id_tema, string nota, string comentario, int id_usuario_docente)
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
                    Comentario = comentario
                };
                await _context.Notas.AddAsync(nuevaNota);
                await _context.SaveChangesAsync(); // Guardamos aquí para obtener id_nota

                existingNota = nuevaNota;
                accion = "CREAR";
            }

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
                Accion = accion,
                FechaCambio = DateTime.Now
            };

            await _context.HistorialNotas.AddAsync(historial);
            await _context.SaveChangesAsync();

            return Ok(new { message = "Nota guardada y registrada en historial correctamente." });
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
                    FechaCambio = h.FechaCambio.ToString("yyyy-MM-dd HH:mm:ss")
                })
                .ToListAsync();

            if (historial.Count == 0)
                return NotFound(new { message = "No hay historial para la nota indicada." });

            return Ok(historial);
        }
    }
}