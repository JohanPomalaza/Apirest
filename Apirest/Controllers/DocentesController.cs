using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DocentesController : ControllerBase
    {
        private readonly AppDbContext _context;
        public DocentesController(AppDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<ActionResult<IEnumerable<DocenteDto>>> GetDocentes()
        {
            var docentes = await _context.Usuarios
                .Where(u => u.IdRol == 1)
                .Where(u => u.Estado == true)
                .Select(u => new DocenteDto
                {
                    IdUsuario = u.IdUsuario,
                    Nombre = u.Nombre,
                    Apellido = u.Apellido,
                    Correo = u.Correo,
                    Asignaciones = u.AsignacionesComoDocente.Select(a => new AsignacionDto
                    {
                        IdAsignacion = a.IdAsignacion,
                        IdRamaCurso = a.IdRama,
                        RamaCursoNombre = a.RamaCurso.Nombre,
                        IdGrado = a.IdGrado,
                        GradoNombre = a.Grado.NombreGrado
                    }).ToList()
                })
                .ToListAsync();

            return docentes;
        }

        [HttpPost]
        public async Task<ActionResult> CrearDocente([FromBody] DocenteCrearDto docenteDto)
        {
            if (string.IsNullOrWhiteSpace(docenteDto.Nombre) ||
                string.IsNullOrWhiteSpace(docenteDto.Apellido) ||
                string.IsNullOrWhiteSpace(docenteDto.Correo) ||
                string.IsNullOrWhiteSpace(docenteDto.Contrasena))
            {
                return BadRequest("Todos los campos son obligatorios: Nombre, Apellido, Correo, Contraseña.");
            }

            if (!new System.ComponentModel.DataAnnotations.EmailAddressAttribute().IsValid(docenteDto.Correo))
            {
                return BadRequest("El correo no es válido.");
            }

            var nuevo = new Usuario
            {
                Nombre = docenteDto.Nombre,
                Apellido = docenteDto.Apellido,
                Correo = docenteDto.Correo,
                Contrasena = docenteDto.Contrasena,
                IdRol = 1,
                Estado = true
            };

            try
            {
                _context.Usuarios.Add(nuevo);
                await _context.SaveChangesAsync();

                return Ok(new
                {
                    nuevo.IdUsuario,
                    nuevo.Nombre,
                    nuevo.Apellido,
                    nuevo.Correo
                });
            }
            catch (DbUpdateException ex)
            {
                // Si es por duplicado o error de base de datos
                return StatusCode(500, $"Error al guardar el usuario: {ex.Message}");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error inesperado: {ex.Message}");
            }
        }

        [HttpPut("{id}")]
        public async Task<ActionResult> EditarDocente(int id, [FromBody] DocenteEditarDto docenteDto)
        {
            var existente = await _context.Usuarios.FindAsync(id);
            if (existente == null || existente.IdRol != 1)
                return NotFound("Docente no encontrado.");

            existente.Nombre = docenteDto.Nombre;
            existente.Apellido = docenteDto.Apellido;
            existente.Correo = docenteDto.Correo;

            if (!string.IsNullOrWhiteSpace(docenteDto.Contrasena))
            {
                existente.Contrasena = docenteDto.Contrasena;
            }

            await _context.SaveChangesAsync();

            return Ok(new
            {
                existente.IdUsuario,
                existente.Nombre,
                existente.Apellido,
                existente.Correo
            });
        }

        [HttpPost("{idDocente}/asignar")]
        public async Task<ActionResult> AsignarCursoYGrado(int idDocente, [FromBody] AsignacionCrearDto dto)
        {
            var docente = await _context.Usuarios.FindAsync(idDocente);
            if (docente == null || docente.IdRol != 1)
                return NotFound("Docente no encontrado.");

            var asignacion = new AsignacionesDocente
            {
                IdUsuarioDocente = idDocente,
                IdAsignador = dto.IdAsignador,
                IdRama = dto.IdRama,
                IdGrado = dto.IdGrado,
                IdAnioEscolar = dto.IdAnioEscolar
            };

            _context.AsignacionesDocente.Add(asignacion);
            await _context.SaveChangesAsync();

            return Ok(new
            {
                asignacion.IdAsignacion,
                asignacion.IdUsuarioDocente,
                asignacion.IdAsignador,
                asignacion.IdRama,
                asignacion.IdGrado,
                asignacion.IdAnioEscolar
            });
        }
        [HttpGet("{idDocente}/asignaciones")]
        public async Task<ActionResult<IEnumerable<AsignacionDto>>> GetAsignacionesDocente(int idDocente)
        {
            var asignaciones = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == idDocente)
                .Select(a => new AsignacionDto
                {
                    IdAsignacion = a.IdAsignacion,
                    IdRamaCurso = a.IdRama,
                    RamaCursoNombre = a.RamaCurso.Nombre,
                    IdGrado = a.IdGrado,
                    GradoNombre = a.Grado.NombreGrado
                })
                .ToListAsync();

            return Ok(asignaciones);
        }
        [HttpPut("asignacion/{idAsignacion}")]
        public async Task<IActionResult> ActualizarAsignacion(int idAsignacion, [FromBody] AsignacionActualizarDto dto)
        {
            var asignacion = await _context.AsignacionesDocente.FindAsync(idAsignacion);
            if (asignacion == null)
                return NotFound();

            asignacion.IdRama = dto.IdRama;
            asignacion.IdGrado = dto.IdGrado;
            await _context.SaveChangesAsync();

            return NoContent();
        }
        [HttpPut("{idDocente}/inactivar")]
        public async Task<ActionResult> InactivarDocente(int idDocente)
        {
            var docente = await _context.Usuarios.FindAsync(idDocente);

            if (docente == null || docente.IdRol != 1)
                return NotFound("Docente no encontrado.");

            if (!docente.Estado)
                return BadRequest("El docente ya está inactivo.");

            docente.Estado = false;
            await _context.SaveChangesAsync();

            return Ok(new
            {
                docente.IdUsuario,
                docente.Nombre,
                docente.Estado
            });
        }
        /*---------------------------------------------------*/

        /*RAMAS Y GRADOS PARA ASIGNACION*/
        [HttpGet("ramas")]
        public async Task<ActionResult<IEnumerable<object>>> GetRamas()
        {
            var ramas = await _context.RamasCurso
                .Where(r => r.Estado)  // Solo activas
                .Select(r => new
                {
                    r.IdRama,
                    r.Nombre
                })
                .ToListAsync();

            return Ok(ramas);
        }

        [HttpGet("grados")]
        public async Task<ActionResult<IEnumerable<object>>> GetGrados()
        {
            var grados = await _context.Grados
                .Where(g => g.Estado)  // Solo activos
                .Select(g => new
                {
                    g.IdGrado,
                    g.NombreGrado
                })
                .ToListAsync();

            return Ok(grados);
        }

    }
}
