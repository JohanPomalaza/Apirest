using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class EstudiantesController : ControllerBase
    {
        private readonly AppDbContext _context;

        public EstudiantesController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/Estudiantes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetEstudiantes()
        {
            var estudiantes = await _context.Usuarios
                .Where(u => u.IdRol == 2)
                .Select(u => new
                {
                    u.IdUsuario,
                    u.Nombre,
                    u.Apellido,
                    Grado = _context.EstudianteGrado
                                .Where(eg => eg.IdUsuarioEstudiante == u.IdUsuario && eg.Estado)
                                .OrderByDescending(eg => eg.IdEstudianteGrado) // por si hay varios, toma el más reciente
                                .Select(eg => eg.Grado.NombreGrado)
                                .FirstOrDefault()
                })
                .ToListAsync();

            return Ok(estudiantes);
        }

        // POST: api/Estudiantes
        [HttpPost]
        public async Task<ActionResult> CrearEstudiante([FromBody] EstudianteCrearDto dto)
        {
            var estudiante = new Usuario
            {
                Nombre = dto.Nombre,
                Apellido = dto.Apellido,
                Correo = dto.Correo,
                Contrasena = dto.Contrasena,
                IdRol = 2,
                Estado = true
            };

            _context.Usuarios.Add(estudiante);
            await _context.SaveChangesAsync();

            return Ok(new { estudiante.IdUsuario, estudiante.Nombre, estudiante.Apellido });
        }

        // PUT: api/Estudiantes/{id}
        [HttpPut("{id}")]
        public async Task<ActionResult> EditarEstudiante(int id, [FromBody] EstudianteCrearDto dto)
        {
            var estudiante = await _context.Usuarios.FindAsync(id);

            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound(new { message = "Estudiante no encontrado." });

            estudiante.Nombre = dto.Nombre;
            estudiante.Apellido = dto.Apellido;
            estudiante.Correo = dto.Correo;
            estudiante.Contrasena = dto.Contrasena;

            await _context.SaveChangesAsync();

            return Ok(new { estudiante.IdUsuario, estudiante.Nombre, estudiante.Apellido });
        }

        // POST: api/Estudiantes/{idEstudiante}/asignar
        [HttpPost("{idEstudiante}/asignar")]
        public async Task<ActionResult> AsignarAGrado(int idEstudiante, [FromBody] AsignacionGradoDto dto)
        {
            var estudiante = await _context.Usuarios.FindAsync(idEstudiante);

            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound(new { message = "Estudiante no encontrado." });

            var asignacion = new EstudianteGrado
            {
                IdUsuarioEstudiante = idEstudiante,
                IdGrado = dto.IdGrado,
                IdAnioEscolar = dto.IdAnioEscolar,
                Estado = true
            };

            _context.EstudianteGrado.Add(asignacion);
            await _context.SaveChangesAsync();

            return Ok(asignacion);
        }
        [HttpGet("grados")]
        public async Task<ActionResult> ObtenerGrados()
        {
            var grados = await _context.Grados
                .Where(g => g.Estado)
                .Select(g => new
                {
                    g.IdGrado,
                    g.NombreGrado
                })
                .ToListAsync();

            return Ok(grados);
        }
        // GET: api/Estudiantes/{idEstudiante}/historial
        [HttpGet("{idEstudiante}/historial")]
        public async Task<IActionResult> ObtenerHistorialEstudiante(int idEstudiante)
        {
            var historial = await _context.HistorialEstudiantes
                .Where(h => h.IdUsuarioEstudiante == idEstudiante)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.IdHistorial,
                    h.IdUsuarioEstudiante,
                    h.IdGrado,
                    h.IdAnioEscolar,
                    h.EstadoAnterior,
                    h.EstadoNuevo,
                    h.Accion,
                    FechaCambio = h.FechaCambio.HasValue ? h.FechaCambio.Value.ToString("yyyy-MM-dd HH:mm:ss") : null,
                    NombreResponsable = _context.Usuarios
                        .Where(u => u.IdUsuario == h.UsuarioResponsable)
                        .Select(u => u.Nombre)
                        .FirstOrDefault()
                })
                .ToListAsync();

            if (historial.Count == 0)
                return NotFound(new { message = "No hay historial para el estudiante indicado." });

            return Ok(historial);
        }
    }
}
