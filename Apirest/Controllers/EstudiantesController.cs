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
                .Where(u => u.IdRol == 2 && u.Estado)
                .Select(u => new
                {
                    u.IdUsuario,
                    u.Nombre,
                    u.Apellido,
                    u.Correo,
                    Asignacion = _context.EstudianteGrado
                        .Where(e => e.IdUsuarioEstudiante == u.IdUsuario && e.Estado)
                        .OrderByDescending(e => e.IdEstudianteGrado)
                        .Select(e => new
                        {
                            e.IdGrado,
                            GradoNombre = e.Grado.NombreGrado,
                            e.IdSeccion,
                            SeccionNombre = e.Seccion.Nombre,
                            e.IdAnioEscolar
                        })
                        .FirstOrDefault()
                })
                .ToListAsync();

            return Ok(estudiantes);
        }

        // POST: api/Estudiantes
        [HttpPost]
        public async Task<ActionResult> CrearEstudiante([FromBody] EstudianteCrearDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            if (await _context.Usuarios.AnyAsync(u => u.Correo == dto.Correo))
                return Conflict("Ya existe un usuario con ese correo.");

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

            return Ok(new
            {
                estudiante.IdUsuario,
                estudiante.Nombre,
                estudiante.Apellido
            });
        }

        // PUT: api/Estudiantes/{id}
        [HttpPut("{id}")]
        public async Task<ActionResult> EditarEstudiante(int id, [FromBody] EstudianteCrearDto dto)
        {
            var estudiante = await _context.Usuarios.FindAsync(id);
            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound("Estudiante no encontrado.");

            estudiante.Nombre = dto.Nombre;
            estudiante.Apellido = dto.Apellido;
            estudiante.Correo = dto.Correo;
            estudiante.Contrasena = dto.Contrasena;

            await _context.SaveChangesAsync();

            return Ok(new
            {
                estudiante.IdUsuario,
                estudiante.Nombre,
                estudiante.Apellido
            });
        }

        // POST: api/Estudiantes/{idEstudiante}/asignar
        [HttpPost("{idEstudiante}/asignar")]
        public async Task<ActionResult> AsignarAGrado(int idEstudiante, [FromBody] AsignacionGradoDto dto)
        {
            var estudiante = await _context.Usuarios.FindAsync(idEstudiante);
            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound("Estudiante no encontrado.");

            if (!await _context.Grados.AnyAsync(g => g.IdGrado == dto.IdGrado))
                return NotFound("Grado no válido.");

            if (!await _context.Secciones.AnyAsync(s => s.IdSeccion == dto.IdSeccion && s.IdGrado == dto.IdGrado))
                return NotFound("Sección no válida para el grado.");

            if (!await _context.AnioEscolar.AnyAsync(a => a.IdAnioEscolar == dto.IdAnioEscolar))
                return NotFound("Año escolar inválido.");

            var asignacion = new EstudianteGrado
            {
                IdUsuarioEstudiante = idEstudiante,
                IdGrado = dto.IdGrado,
                IdSeccion = dto.IdSeccion,
                IdAnioEscolar = dto.IdAnioEscolar,
                Estado = true
            };

            _context.EstudianteGrado.Add(asignacion);
            await _context.SaveChangesAsync();

            // Registrar historial
            _context.HistorialEstudiantes.Add(new HistorialEstudiantes
            {
                IdEstudianteGrado = asignacion.IdEstudianteGrado,
                IdUsuarioEstudiante = idEstudiante,
                IdGrado = dto.IdGrado,
                IdSeccion = dto.IdSeccion,
                IdAnioEscolar = dto.IdAnioEscolar,
                EstadoAnterior = null,
                EstadoNuevo = true,
                Accion = "ASIGNADO",
                FechaCambio = DateTime.Now,
                UsuarioResponsable = dto.UsuarioResponsable
            });

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
                    GradoNombre = _context.Grados
                        .Where(g => g.IdGrado == h.IdGrado)
                        .Select(g => g.NombreGrado)
                        .FirstOrDefault(),

                    h.IdSeccion,
                    SeccionNombre = _context.Secciones
                        .Where(s => s.IdSeccion == h.IdSeccion)
                        .Select(s => s.Nombre)
                        .FirstOrDefault(),

                    h.IdAnioEscolar,
                    h.EstadoAnterior,
                    h.EstadoNuevo,
                    h.Accion,
                    FechaCambio = h.FechaCambio.HasValue
                        ? h.FechaCambio.Value.ToString("yyyy-MM-dd HH:mm:ss")
                        : null,

                    NombreResponsable = _context.Usuarios
                        .Where(u => u.IdUsuario == h.UsuarioResponsable)
                        .Select(u => u.Nombre + " " + u.Apellido)
                        .FirstOrDefault()
                })
                .ToListAsync();

            if (!historial.Any())
                return NotFound(new { message = "No hay historial para el estudiante indicado." });

            return Ok(historial);
        }
        [HttpPut("{idEstudiante}/inactivar")]
        public async Task<ActionResult> InactivarEstudiante(int idEstudiante)
        {
            var estudiante = await _context.Usuarios.FindAsync(idEstudiante);

            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound("Estudiante no encontrado.");

            if (!estudiante.Estado)
                return BadRequest("El Estudiante ya está inactivo.");

            estudiante.Estado = false;
            await _context.SaveChangesAsync();

            return Ok(new
            {
                estudiante.IdUsuario,
                estudiante.Nombre,
                estudiante.Estado
            });
        }
    }
}
