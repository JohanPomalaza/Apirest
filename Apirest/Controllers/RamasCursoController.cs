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
            var ramas = await _context.RamasCurso
               .Include(r => r.Curso)
               .Where(r => r.Estado == true)
               .ToListAsync();

            return Ok(ramas);
        }

        // GET: api/RamasCurso/porCurso/1
        [HttpGet("porCurso/{idCurso}")]
        public async Task<IActionResult> GetRamasPorCurso(int idCurso)
        {
            var ramas = await _context.RamasCurso
                .Where(r => r.IdCurso == idCurso && r.Estado == true)
                .ToListAsync();

            return Ok(ramas);
        }

        // POST: api/RamasCurso
        [HttpPost]
        public async Task<IActionResult> CrearRama([FromBody] RamaCursoCrearDTO dto)
        {
            if (string.IsNullOrWhiteSpace(dto.Nombre) || dto.IdCurso <= 0 || dto.IdUsuario <= 0)
            {
                return BadRequest("IdCurso, NombreRama e IdUsuario son requeridos.");
            }

            var nuevaRama = new RamasCurso
            {
                IdCurso = dto.IdCurso,
                Nombre = dto.Nombre,
                Estado = true
            };

            _context.RamasCurso.Add(nuevaRama);
            await _context.SaveChangesAsync();

            var historial = new HistorialRamas
            {
                IdRama = nuevaRama.IdRama,
                FechaCambio = DateTime.Now,
                Accion = "CREADO",
                IdUsuario = dto.IdUsuario
            };

            _context.HistorialRamas.Add(historial);
            await _context.SaveChangesAsync();

            return Ok(nuevaRama);
        }

        // PUT: api/RamasCurso/5
        [HttpPut("{id}/{idUsuario}")]
        public async Task<IActionResult> EditarRama(int id, [FromBody] RamaEditarDto dto, int idUsuario)
        {
            var ramaAntes = await _context.RamasCurso.AsNoTracking().FirstOrDefaultAsync(r => r.IdRama == id);
            if (ramaAntes == null)
                return NotFound("Rama no encontrada");

            // Actualiza los campos permitidos
            var rama = new RamasCurso
            {
                IdRama = id,
                IdCurso = dto.IdCurso,
                Nombre = dto.Nombre,
                Estado = ramaAntes.Estado
            };

            _context.Entry(rama).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            var historial = new HistorialRamas
            {
                IdRama = rama.IdRama,
                Accion = "Editado",
                NombreAnterior = ramaAntes.Nombre,
                NombreNuevo = rama.Nombre,
                EstadoAnterior = ramaAntes.Estado,
                EstadoNuevo = rama.Estado,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario
            };

            _context.HistorialRamas.Add(historial);
            await _context.SaveChangesAsync();

            return Ok(rama);
        }
        [HttpDelete("{id}/{idUsuario}")]
        public async Task<IActionResult> EliminarRama(int id, int idUsuario)
        {
            var rama = await _context.RamasCurso.FindAsync(id);
            if (rama == null)
                return NotFound();

            bool estadoAnterior = rama.Estado;
            rama.Estado = false;
            _context.Entry(rama).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            var historial = new HistorialRamas
            {
                IdRama = rama.IdRama,
                Accion = "Eliminado",
                NombreAnterior = rama.Nombre,
                NombreNuevo = rama.Nombre,
                EstadoAnterior = estadoAnterior,
                EstadoNuevo = rama.Estado,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario
            };

            _context.HistorialRamas.Add(historial);
            await _context.SaveChangesAsync();

            return Ok("Rama eliminada (lógicamente)");
        }

        // GET: api/RamasCurso/historial/5
        [HttpGet("historial/{idRama}")]
        public async Task<IActionResult> GetHistorial(int idRama)
        {
            var historial = await _context.HistorialRamas
                .Where(h => h.IdRama == idRama)
                .Include(h => h.Usuario)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.IdHistorial,
                    h.IdRama,
                    h.Accion,
                    h.NombreAnterior,
                    h.NombreNuevo,
                    h.EstadoAnterior,
                    h.EstadoNuevo,
                    h.FechaCambio,
                    h.IdUsuario,
                    NombreUsuario = h.Usuario != null ? h.Usuario.Nombre : null
                })
                .ToListAsync();

            return Ok(historial);
        }

    }
}
