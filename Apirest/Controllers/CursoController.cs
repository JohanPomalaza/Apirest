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
        [HttpGet("usuario/{id_usuario}/cursos")]
        public async Task<ActionResult<IEnumerable<Cursos>>> GetCursosPorUsuario(int id_usuario)
        {
            var cursos = await _context.Cursos
                .Join(_context.CursosPorNivel,
                    curso => curso.IdCurso,
                    cursoNivel => cursoNivel.IdCurso,
                    (curso, cursoNivel) => new { curso, cursoNivel })
                .Join(_context.EstudianteGrado,
                    cursoNivel => cursoNivel.cursoNivel.IdNivel,
                    estudianteGrado => estudianteGrado.Grado.IdNivel,
                    (cursoNivel, estudianteGrado) => new { cursoNivel.curso, estudianteGrado })
                .Where(x => x.estudianteGrado.IdUsuario == id_usuario)
                .Select(x => x.curso)
                .Distinct()
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
                .Join(_context.TemasCurso,
                    nota => nota.IdTema,
                    tema => tema.IdTema,
                    (nota, tema) => new { nota, tema })
                .Join(_context.RamasCurso,
                    nt => nt.tema.IdRama,
                    rama => rama.IdRama,
                    (nt, rama) => new { nt.nota, nt.tema, rama })
                .Where(x => x.rama.IdCurso == id_curso && x.nota.IdUsuario == id_usuario)
                .Select(x => new
                {
                    x.nota.IdNota,
                    x.nota.Nota,
                    x.nota.Semestre,
                    x.nota.Trimestre,
                    Tema = x.tema.Nombre,
                    Rama = x.rama.Nombre
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
    }
}