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
                .Select(t => new
                {
                    t.IdTema,
                    t.Nombre,
                    t.Orden,
                    t.Estado,
                    Rama = t.RamaCurso.Nombre,
                    Grado = t.Grado.NombreGrado
                })
                .ToListAsync();

            return Ok(temas);
        }

        // GET: api/TemasCurso/porRama/3
        [HttpGet("porRama/{idRama}")]
        public async Task<IActionResult> GetTemasPorRama(int idRama)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdRama == idRama && t.Estado)
                .Include(t => t.Grado)
                .OrderBy(t => t.Orden)
                .ToListAsync();

            return Ok(temas);
        }

        // GET: api/TemasCurso/porGrado/2
        [HttpGet("porGrado/{idGrado}")]
        public async Task<IActionResult> GetTemasPorGrado(int idGrado)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdGrado == idGrado && t.Estado)
                .Include(t => t.RamaCurso)
                .OrderBy(t => t.Orden)
                .ToListAsync();

            return Ok(temas);
        }

        // GET: api/TemasCurso/porRamaYGrado/3/2
        [HttpGet("porRamaYGrado/{idRama}/{idGrado}")]
        public async Task<IActionResult> GetTemasPorRamaYGrado(int idRama, int idGrado)
        {
            var temas = await _context.TemasCurso
                .Where(t => t.IdRama == idRama && t.IdGrado == idGrado && t.Estado)
                .OrderBy(t => t.Orden)
                .ToListAsync();

            return Ok(temas);
        }

        // POST: api/TemasCurso
        [HttpPost("{idUsuario}")]
        public async Task<IActionResult> CrearTema(int idUsuario, [FromBody] TemaCrearDTO dto)
        {
            if (string.IsNullOrWhiteSpace(dto.Nombre) || dto.Orden <= 0)
                return BadRequest("Nombre y orden del tema son requeridos.");

            if (!await _context.RamasCurso.AnyAsync(r => r.IdRama == dto.IdRama))
                return NotFound("Rama no encontrada.");

            if (!await _context.Grados.AnyAsync(g => g.IdGrado == dto.IdGrado))
                return NotFound("Grado no encontrado.");

            var tema = new TemasCurso
            {
                Nombre = dto.Nombre,
                IdRama = dto.IdRama,
                IdGrado = dto.IdGrado,
                Orden = dto.Orden,
                Estado = true
            };

            _context.TemasCurso.Add(tema);
            await _context.SaveChangesAsync();

            _context.HistorialTemas.Add(new HistorialTemas
            {
                IdTema = tema.IdTema,
                Accion = "CREADO",
                NombreAnterior = null,
                NombreNuevo = tema.Nombre,
                IdRamaAnterior = null,
                IdRamaNueva = dto.IdRama,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario,
                EstadoAnterior = null,
                EstadoNuevo = true
            });

            await _context.SaveChangesAsync();
            return Ok(tema);
        }

        [HttpPut("{id}/{idUsuario}")]
        public async Task<IActionResult> EditarTema(int id, int idUsuario, [FromBody] TemaEditarDTO dto)
        {
            if (id != dto.IdTema)
                return BadRequest("El ID no coincide con el tema.");

            var temaAntes = await _context.TemasCurso.AsNoTracking().FirstOrDefaultAsync(t => t.IdTema == id);
            if (temaAntes == null)
                return NotFound("Tema no encontrado.");

            if (!await _context.RamasCurso.AnyAsync(r => r.IdRama == dto.IdRama))
                return NotFound("Rama no encontrada.");

            var tema = await _context.TemasCurso.FindAsync(id);
            tema.Nombre = dto.Nombre;
            tema.IdRama = dto.IdRama;
            tema.Orden = dto.Orden;

            await _context.SaveChangesAsync();

            _context.HistorialTemas.Add(new HistorialTemas
            {
                IdTema = tema.IdTema,
                Accion = "EDITADO",
                NombreAnterior = temaAntes.Nombre,
                NombreNuevo = dto.Nombre,
                IdRamaAnterior = temaAntes.IdRama,
                IdRamaNueva = dto.IdRama,
                FechaCambio = DateTime.Now,
                IdUsuario = idUsuario,
                EstadoAnterior = temaAntes.Estado,
                EstadoNuevo = tema.Estado
            });

            await _context.SaveChangesAsync();

            return Ok(new { mensaje = "Tema actualizado correctamente." });
        }

        // DELETE: api/TemasCurso/5
        [HttpDelete("{id}/{idUsuario}")]
        public async Task<IActionResult> EliminarTema(int id, int idUsuario)
        {
            var tema = await _context.TemasCurso.FindAsync(id);
            if (tema == null)
                return NotFound();
            bool estadoAnterior = tema.Estado;
            tema.Estado = false;
            _context.Entry(tema).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            var historial = new HistorialTemas
            {
                IdTema = tema.IdTema,
                Accion = "Eliminado",
                NombreAnterior = tema.Nombre,
                NombreNuevo = null,
                EstadoAnterior = estadoAnterior,
                EstadoNuevo = tema.Estado,
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
                .Include(h => h.Usuario)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.Id,
                    h.IdTema,
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
        [HttpGet("grados/porNivel/{idNivel}")]
        public async Task<ActionResult> ObtenerGradosPorNivel(int idNivel)
        {
            var grados = await _context.Grados
                .Where(g => g.Estado && g.IdNivel == idNivel)
                .Select(g => new
                {
                    g.IdGrado,
                    g.NombreGrado
                })
                .ToListAsync();

            if (grados.Count == 0)
                return NotFound(new { mensaje = "No se encontraron grados para el nivel indicado." });

            return Ok(grados);
        }
    }
}
