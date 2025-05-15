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
            var estudiantes = await _context.AsignacionesDocente
                .Where(ad => ad.IdUsuarioDocente == id_usuario && ad.RamaCurso.IdCurso == id_curso)
                .SelectMany(ad => _context.EstudianteGrado
                    .Where(eg => eg.IdGrado == ad.IdGrado)
                    .Select(eg => new { eg.IdUsuarioEstudiante, eg.Usuario.Nombre, eg.Usuario.Apellido }))
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
            var notas = await _context.AsignacionesDocente
        .Where(ad => ad.IdUsuarioDocente == id_usuario && ad.RamaCurso.IdCurso == id_curso)
        .SelectMany(ad => _context.EstudianteGrado
            .Where(eg => eg.IdGrado == ad.IdGrado)
            .Select(eg => new {
                eg.Usuario.Nombre,
                eg.Usuario.Apellido,
                Notas = _context.Notas
                    .Where(n => n.IdUsuarioEstudiante == eg.IdUsuarioEstudiante)
                    .Select(n => new { n.IdTema, n.Nota })
                    .ToList()
            }))
        .ToListAsync();

            return Ok(notas);
        }

        [HttpPost("notas")]
        public async Task<IActionResult> AgregarOEditarNota(int id_usuario_estudiante, int id_tema, decimal nota)
        {
            var existingNota = await _context.Notas.FirstOrDefaultAsync(n => n.IdUsuarioEstudiante == id_usuario_estudiante && n.IdTema == id_tema);

            if (existingNota != null)
            {
                existingNota.Nota = nota;
                _context.Notas.Update(existingNota);
            }
            else
            {
                var nuevaNota = new Notas
                {
                    IdUsuarioEstudiante = id_usuario_estudiante,
                    IdTema = id_tema,
                    Nota = nota
                };
                await _context.Notas.AddAsync(nuevaNota);
            }

            await _context.SaveChangesAsync();

            return Ok("Nota guardada correctamente.");
        }
    }
}