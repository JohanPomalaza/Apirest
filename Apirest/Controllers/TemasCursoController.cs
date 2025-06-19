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
        [HttpPost("{idUsuario}")]
        public async Task<IActionResult> CrearTema(int idUsuario, [FromBody] TemaCrearDTO dto)
        {
            // Verificar que la rama y grado existen (opcional pero recomendado)
            var rama = await _context.RamasCurso.FindAsync(dto.IdRama);
            if (rama == null)
                return NotFound("Rama no encontrada");

            var grado = await _context.Grados.FindAsync(dto.IdGrado);
            if (grado == null)
                return NotFound("Grado no encontrado");

            var tema = new TemasCurso
            {
                Nombre = dto.Nombre,
                IdRama = dto.IdRama,
                IdGrado = dto.IdGrado
            };

            _context.TemasCurso.Add(tema);
            await _context.SaveChangesAsync();

            var historial = new HistorialTemas
            {
                IdTema = tema.IdTema,
                Accion = "Creado",
                NombreAnterior = null,
                NombreNuevo = tema.Nombre,
                IdRamaAnterior = null,
                IdRamaNueva = tema.IdRama,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario
            };

            _context.HistorialTemas.Add(historial);
            await _context.SaveChangesAsync();

            return Ok(tema);
        }

        [HttpPut("{id}/{idUsuario}")]
        public async Task<IActionResult> EditarTemaSimple(int id, int idUsuario, [FromBody] TemaEditarDTO temaDto)
        {
            if (id != temaDto.IdTema)
                return BadRequest("El ID no coincide");

            var temaExistente = await _context.TemasCurso.FindAsync(id);
            if (temaExistente == null)
                return NotFound("Tema no encontrado");

            var nombreAnterior = temaExistente.Nombre;
            var idRamaAnterior = temaExistente.IdRama;

            temaExistente.Nombre = temaDto.Nombre;

            var nuevaRama = await _context.RamasCurso.FindAsync(temaDto.IdRama);
            if (nuevaRama == null)
                return NotFound("Rama no encontrada");

            temaExistente.IdRama = temaDto.IdRama;

            await _context.SaveChangesAsync();

            var historial = new HistorialTemas
            {
                IdTema = temaExistente.IdTema,
                Accion = "Editado",
                NombreAnterior = nombreAnterior,
                NombreNuevo = temaExistente.Nombre,
                IdRamaAnterior = idRamaAnterior,
                IdRamaNueva = temaExistente.IdRama,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario
            };

            _context.HistorialTemas.Add(historial);
            await _context.SaveChangesAsync();

            return Ok(new { mensaje = "Tema actualizado correctamente" });
        }

        // DELETE: api/TemasCurso/5
        [HttpDelete("{id}/{idUsuario}")]
        public async Task<IActionResult> EliminarTema(int id, int idUsuario)
        {
            var tema = await _context.TemasCurso.FindAsync(id);
            if (tema == null)
                return NotFound();

            _context.TemasCurso.Remove(tema);

            var historial = new HistorialTemas
            {
                IdTema = tema.IdTema,
                Accion = "Eliminado",
                NombreAnterior = tema.Nombre,
                NombreNuevo = null,
                IdRamaAnterior = tema.IdRama,
                IdRamaNueva = null,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario
            };

            _context.HistorialTemas.Add(historial);

            await _context.SaveChangesAsync();
            return Ok("Tema eliminado");
        }
        [HttpGet("historial/{idTema}")]
        public async Task<IActionResult> GetHistorialPorTema(int idTema)
        {
            var historial = await _context.HistorialTemas
                .Where(h => h.IdTema == idTema)
                .OrderByDescending(h => h.FechaCambio)
                .ToListAsync();

            return Ok(historial);
        }
    }
}
