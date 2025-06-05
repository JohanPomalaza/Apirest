using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TemasCursoController : ControllerBase
    {
        private readonly AppDbContext _context;
        public TemasCursoController(AppDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<IActionResult> GetTodosLosTemas()
        {
            var temas = await _context.TemasCurso
                .Include(t => t.RamaCurso)
                .Include(t => t.Grado)
                .ToListAsync();
            return Ok(temas);
        }

        // GET: api/TemasCurso/porRama/3
        [HttpGet("porRama/{idRama}")]
        public async Task<IActionResult> GetTemasPorRama(int idRama)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdRama == idRama)
                .Include(t => t.Grado)
                .ToListAsync();
            return Ok(temas);
        }

        // GET: api/TemasCurso/porGrado/2
        [HttpGet("porGrado/{idGrado}")]
        public async Task<IActionResult> GetTemasPorGrado(int idGrado)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdGrado == idGrado)
                .Include(t => t.RamaCurso)
                .ToListAsync();
            return Ok(temas);
        }

        // GET: api/TemasCurso/porRamaYGrado/3/2
        [HttpGet("porRamaYGrado/{idRama}/{idGrado}")]
        public async Task<IActionResult> GetTemasPorRamaYGrado(int idRama, int idGrado)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdRama == idRama && t.IdGrado == idGrado)
                .ToListAsync();
            return Ok(temas);
        }

        // POST: api/TemasCurso
        [HttpPost]
        public async Task<IActionResult> CrearTema([FromBody] TemasCurso tema)
        {
            _context.TemasCurso.Add(tema);
            await _context.SaveChangesAsync();
            return Ok(tema);
        }



        [HttpPut("{id}")]
        public async Task<IActionResult> EditarTemaSimple(int id, [FromBody] TemaEditarDTO temaDto)
        {
            if (id != temaDto.IdTema)
                return BadRequest("El ID no coincide");

            var temaExistente = await _context.TemasCurso.FindAsync(id);
            if (temaExistente == null)
                return NotFound("Tema no encontrado");

            // Actualizar nombre
            temaExistente.Nombre = temaDto.Nombre;

            // Verificar si la rama existe antes de asignar
            var nuevaRama = await _context.RamasCurso.FindAsync(temaDto.IdRama);
            if (nuevaRama == null)
                return NotFound("Rama no encontrada");

            // Actualizar la relación con la nueva rama
            temaExistente.IdRama = temaDto.IdRama;

            await _context.SaveChangesAsync();
            return Ok(new { mensaje = "Tema actualizado correctamente" });
        }

        // DELETE: api/TemasCurso/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> EliminarTema(int id)
        {
            var tema = await _context.TemasCurso.FindAsync(id);
            if (tema == null)
                return NotFound();

            _context.TemasCurso.Remove(tema);
            await _context.SaveChangesAsync();
            return Ok("Tema eliminado");
        }
    }
}
