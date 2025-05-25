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
            return await _context.Cursos.ToListAsync();
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<Cursos>>GetCurso(int id)
        {
            var curso = await _context.Cursos.FindAsync(id);

            if(curso == null) {
                return NotFound();
            }
            return curso;
        }
        [HttpGet("docente/{id_usuario}/cursos")]
public async Task<ActionResult<IEnumerable<object>>> GetCursosPorDocente(int id_usuario)
{
    var cursos = await _context.Usuarios
        .Where(u => u.IdUsuario == id_usuario && u.IdRol == 1) // Verifica que el usuario sea docente
        .Join(_context.AsignacionesDocente,
            u => u.IdUsuario,
            ad => ad.IdUsuarioDocente,
            (u, ad) => ad)
        .Join(_context.RamasCurso, 
            ad => ad.IdRama, 
            r => r.IdRama, 
            (ad, r) => new { ad, r })
        .Join(_context.Cursos, 
            ar => ar.r.IdCurso, 
            c => c.IdCurso, 
            (ar, c) => c)
        .Distinct()
        .Select(c => new { c.IdCurso, c.NombreCurso })
        .ToListAsync();

    if (!cursos.Any())
    {
        return NotFound("No hay cursos asignados para este docente.");
    }

    return Ok(cursos);
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
                .FirstOrDefaultAsync(a => a.Activo == true);

            if (anioActivo == null)
                return NotFound("No hay un año escolar activo.");

            // Obtener secciones solo para el año escolar activo
            var secciones = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == id_docente && a.IdAnioEscolar == anioActivo.IdAnioEscolar)
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
                .Select(t => new
                {
                    t.IdRama,
                    Rama = t.RamaCurso.Nombre,
                    Curso = t.RamaCurso.Curso.NombreCurso
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
                .Select(n => new
                {
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
                .Where(x => x.r.IdCurso == id_curso)
                .Select(x => new
                {
                    x.n.IdNota,
                    x.n.Nota,
                    x.t.Nombre,
                    Rama = x.r.Nombre
                })
                .ToListAsync();

            if (!notas.Any())
            {
                return NotFound("No se encontraron notas para este curso y usuario.");
            }

            return Ok(notas);
        }
        [HttpPost]
        public async Task<ActionResult<Cursos>> PostCurso(Cursos curso)
        {
            _context.Cursos.Add(curso);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCurso", new { id = curso.IdCurso }, curso);
        }
        [HttpPut("{id}")]
        public async Task<ActionResult>PutCurso(int id, Cursos curso)
        {
            if (id != curso.IdCurso)
            {
                return BadRequest();
            }
            _context.Entry(curso).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch(DbUpdateConcurrencyException) 
            {
                if (!CursoExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return NoContent();
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCurso(int id)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
            {
                return NotFound();
            }

            _context.Cursos.Remove(curso);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CursoExists(int id)
        {
            return _context.Cursos.Any(e => e.IdCurso == id);
        }

        //APARTADO DEL PROFESOR PARA LISTAR DATOS Y EDICION DE NOTAS

        [HttpGet("docente/{id_usuario}/curso/{id_curso}/estudiantes")]
        public async Task<ActionResult<IEnumerable<object>>> GetEstudiantesPorCurso(int id_usuario, int id_curso)
        {
            // Obtener las asignaciones del docente al curso
            var asignaciones = await _context.AsignacionesDocente
                .Where(ad => ad.IdUsuarioDocente == id_usuario && ad.RamaCurso.IdCurso == id_curso)
                .ToListAsync();

            if (!asignaciones.Any())
                return NotFound("No se encontraron asignaciones para este docente y curso.");

            // Obtener todos los grados asignados al docente
            var gradosAsignados = asignaciones.Select(a => a.IdGrado).Distinct().ToList();

            // Obtener estudiantes de esos grados
            var estudiantes = await _context.EstudianteGrado
                .Where(eg => gradosAsignados.Contains(eg.IdGrado))
                .Include(eg => eg.UsuarioEstudiante) // 👈 Cargar datos del usuario
                .Select(eg => new
                {
                    eg.IdUsuarioEstudiante,
                    Nombre = eg.UsuarioEstudiante.Nombre,
                    Apellido = eg.UsuarioEstudiante.Apellido
                })
                .ToListAsync();

            return Ok(estudiantes);
        }

        [HttpGet("curso/{id_curso}/grado/{id_grado}/temas")]
        public async Task<ActionResult<IEnumerable<object>>> GetTemasPorCurso(int id_curso, int id_grado)
        {
            var temas = await _context.RamasCurso
                .Where(rc => rc.IdCurso == id_curso)
                .SelectMany(rc => _context.TemasCurso
                    .Where(t => t.IdRama == rc.IdRama && t.IdGrado == id_grado)
                    .Select(t => new { t.IdTema, t.Nombre }))
                .ToListAsync();

            return Ok(temas);
        }

        [HttpGet("docente/{id_usuario}/curso/{id_curso}/notas")]
        public async Task<ActionResult<IEnumerable<object>>> GetNotasPorCursoDocente(int id_usuario, int id_curso)
        {
            var asignaciones = await _context.AsignacionesDocente
                .Where(ad => ad.IdUsuarioDocente == id_usuario && ad.RamaCurso.IdCurso == id_curso)
                .ToListAsync();

            if (!asignaciones.Any())
                return NotFound("No hay asignaciones para este docente y curso.");

            var idRamas = asignaciones.Select(a => a.IdRama).Distinct().ToList();
            var idGrados = asignaciones.Select(a => a.IdGrado).Distinct().ToList();

            var estudiantes = await _context.EstudianteGrado
                .Where(eg => idGrados.Contains(eg.IdGrado))
                .Include(eg => eg.UsuarioEstudiante)
                .ToListAsync();

            var resultado = estudiantes.Select(est => new
            {
                est.UsuarioEstudiante.Nombre,
                est.UsuarioEstudiante.Apellido,
                Notas = _context.Notas
                    .Where(n => n.IdUsuarioEstudiante == est.IdUsuarioEstudiante && idRamas.Contains(n.TemaCurso.IdRama))
                    .Include(n => n.TemaCurso)
                    .Select(n => new
                    {
                        Tema = n.TemaCurso.Nombre,
                        n.Nota
                    })
                    .ToList()
            }).ToList();

            return Ok(resultado);
        }

        [HttpPost("notas/comentario")]
        public async Task<IActionResult> AgregarOEditarNotaConComentario(int id_usuario_estudiante, int id_tema, string nota, string comentario)
        {
            var existingNota = await _context.Notas
                .FirstOrDefaultAsync(n => n.IdUsuarioEstudiante == id_usuario_estudiante && n.IdTema == id_tema);

            if (existingNota != null)
            {
                existingNota.Nota = nota;
                existingNota.Comentario = comentario;
                _context.Notas.Update(existingNota);
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
            }

            await _context.SaveChangesAsync();

            return Ok(new { message = "Nota guardada correctamente." });
        }

    }
}