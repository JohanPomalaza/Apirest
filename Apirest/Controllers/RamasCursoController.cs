using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RamasCursoController : ControllerBase
    {
        private readonly AppDbContext _context;
        public RamasCursoController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetTodasRamas()
        {
            var ramas = await _context.RamasCurso.Include(r => r.Curso).ToListAsync();
            return Ok(ramas);
        }

        // GET: api/RamasCurso/porCurso/1
        [HttpGet("porCurso/{idCurso}")]
        public async Task<IActionResult> GetRamasPorCurso(int idCurso)
        {
            var ramas = await _context.RamasCurso
                .Where(r => r.IdCurso == idCurso)
                .ToListAsync();
            return Ok(ramas);
        }

        // POST: api/RamasCurso
        [HttpPost]
        public async Task<IActionResult> CrearRama([FromBody] RamasCurso rama)
        {
            _context.RamasCurso.Add(rama);
            await _context.SaveChangesAsync();
            return Ok(rama);
        }

        // PUT: api/RamasCurso/5
        [HttpPut("{id}")]
        public async Task<IActionResult> EditarRama(int id, [FromBody] RamasCurso rama)
        {
            if (id != rama.IdRama)
                return BadRequest("ID no coincide");

            _context.Entry(rama).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(rama);
        }

        // DELETE: api/RamasCurso/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> EliminarRama(int id)
        {
            var rama = await _context.RamasCurso.FindAsync(id);
            if (rama == null)
                return NotFound();

            _context.RamasCurso.Remove(rama);
            await _context.SaveChangesAsync();
            return Ok("Rama eliminada");
        }
    }
}
