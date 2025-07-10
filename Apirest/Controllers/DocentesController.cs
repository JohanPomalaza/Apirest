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
        [HttpGet("lista")]
        public async Task<ActionResult<IEnumerable<DocenteDto>>> GetDocentes()
        {
            var docentes = await _context.Usuarios
                .Where(u => u.IdRol == 1 && u.Estado)
                .Include(u => u.AsignacionesComoDocente)
                    .ThenInclude(a => a.RamaCurso)
                .Include(u => u.AsignacionesComoDocente)
                    .ThenInclude(a => a.Grado)
                .Include(u => u.AsignacionesComoDocente)
                    .ThenInclude(a => a.Seccion)
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
                        GradoNombre = a.Grado.NombreGrado,
                        IdSeccion = a.IdSeccion,
                        SeccionNombre = a.Seccion.Nombre
                    }).ToList()
                })
                .ToListAsync();

            return Ok(docentes);
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

        [HttpPost("{idDocente}/asignar")]
        public async Task<ActionResult> AsignarCursoYGrado(int idDocente, [FromBody] AsignacionCrearDto dto)
        {
            var docente = await _context.Usuarios.FindAsync(idDocente);
            if (docente == null || docente.IdRol != 1)
                return NotFound("Docente no encontrado.");

            foreach (var idRama in dto.IdRamas)
            {
                var asignacion = new AsignacionesDocente
                {
                    IdUsuarioDocente = idDocente,
                    IdAsignador = dto.IdAsignador,
                    IdRama = idRama,
                    IdGrado = dto.IdGrado,
                    IdSeccion = dto.IdSeccion,
                    IdAnioEscolar = dto.IdAnioEscolar,
                    Estado = true
                };

                _context.AsignacionesDocente.Add(asignacion);
            }

            await _context.SaveChangesAsync();
            return Ok("Asignación completada.");
        }

        [HttpGet("{idDocente}/asignaciones")]
        public async Task<ActionResult<IEnumerable<AsignacionDto>>> GetAsignacionesDocente(int idDocente)
        {
            var asignaciones = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == idDocente && a.Estado)
                .Include(a => a.RamaCurso)
                    .ThenInclude(r => r.Curso)
                .Include(a => a.Grado)
                .Include(a => a.Seccion)
                .Select(a => new AsignacionDto
                {
                    IdAsignacion = a.IdAsignacion,
                    IdCurso = a.RamaCurso.IdCurso,
                    CursoNombre = a.RamaCurso.Curso.NombreCurso,
                    IdRamaCurso = a.IdRama,
                    RamaCursoNombre = a.RamaCurso.Nombre,
                    IdGrado = a.IdGrado,
                    GradoNombre = a.Grado.NombreGrado,
                    IdSeccion = a.IdSeccion,
                    SeccionNombre = a.Seccion.Nombre,
                    IdAnioEscolar = a.IdAnioEscolar
                }).ToListAsync();

            return Ok(asignaciones);
        }

        [HttpPut("asignacion/{idAsignacion}")]
        public async Task<IActionResult> ActualizarAsignacion(int idAsignacion, [FromBody] AsignacionActualizarDto dto)
        {
            var asignacion = await _context.AsignacionesDocente.FindAsync(idAsignacion);
            if (asignacion == null) return NotFound();

            asignacion.IdRama = dto.IdRama;
            asignacion.IdGrado = dto.IdGrado;
            asignacion.IdSeccion = dto.IdSeccion;

            await _context.SaveChangesAsync();
            return NoContent();
        }

        [HttpGet("ramas")]
        public async Task<ActionResult<IEnumerable<object>>> GetRamas()
        {
            var ramas = await _context.RamasCurso
                .Where(r => r.Estado)
                .Select(r => new { r.IdRama, r.Nombre })
                .ToListAsync();

            return Ok(ramas);
        }

        [HttpGet("grados")]
        public async Task<ActionResult<IEnumerable<object>>> GetGrados()
        {
            var grados = await _context.Grados
                .Where(g => g.Estado)
                .Select(g => new { g.IdGrado, g.NombreGrado })
                .ToListAsync();

            return Ok(grados);
        }

        [HttpGet("grados/{idGrado}/secciones")]
        public async Task<ActionResult> GetSeccionesPorGrado(int idGrado)
        {
            var secciones = await _context.Secciones
                .Where(s => s.IdGrado == idGrado && s.Estado)
                .Select(s => new { s.IdSeccion, s.Nombre })
                .ToListAsync();

            return Ok(secciones);
        }

        [HttpGet("porNivel/{idNivel}")]
        public async Task<IActionResult> GetGradosYSeccionesPorNivel(int idNivel)
        {
            var grados = await _context.Grados
                .Where(g => g.IdNivel == idNivel && g.Estado)
                .Include(g => g.Secciones.Where(s => s.Estado))
                .ToListAsync();

            var resultado = grados.SelectMany(g => g.Secciones.Select(s => new {
                IdGrado = g.IdGrado,
                NombreGrado = g.NombreGrado,
                IdSeccion = s.IdSeccion,
                NombreSeccion = s.Nombre
            }));

            return Ok(resultado);
        }

        [HttpGet("niveles")]
        public async Task<IActionResult> GetNiveles()
        {
            var niveles = await _context.NivelesEducativos
                .Where(n => n.Estado == true)
                .Select(n => new { n.IdNivel, n.NombreNivel })
                .ToListAsync();

            return Ok(niveles);
        }

        [HttpGet("anios")]
        public async Task<IActionResult> GetAniosEscolares()
        {
            var anios = await _context.AnioEscolar
                .Where(a => a.Estado == true)
                .OrderByDescending(a => a.Anio)
                .Select(a => new { a.IdAnioEscolar, a.Anio })
                .ToListAsync();

            return Ok(anios);
        }
        [HttpGet("cursos/porNivel/{idNivel}")]
        public async Task<IActionResult> GetCursosPorNivel(int idNivel)
        {
            var cursos = await _context.Cursos
                .Where(c => c.Estado && c.IdNivel == idNivel)
                .Select(c => new
                {
                    c.IdCurso,
                    c.NombreCurso,
                    c.IdNivel
                })
                .ToListAsync();

            return Ok(cursos);
        }
        [HttpGet("cursos/{idCurso}/ramas")]
        public async Task<IActionResult> GetRamasPorCurso(int idCurso)
        {
            var ramas = await _context.RamasCurso
                .Where(r => r.IdCurso == idCurso && r.Estado)
                .Select(r => new
                {
                    r.IdRama,
                    r.Nombre
                })
                .ToListAsync();

            return Ok(ramas);
        }
        [HttpPut("asignacion/{idAsignacion}/inactivar")]
        public async Task<IActionResult> InactivarAsignacion(int idAsignacion)
        {
            var asignacion = await _context.AsignacionesDocente.FindAsync(idAsignacion);

            if (asignacion == null)
                return NotFound("Asignación no encontrada.");

            if (asignacion.Estado == false)
                return BadRequest("La asignación ya está inactiva.");

            asignacion.Estado = false;
            await _context.SaveChangesAsync();

            return Ok(new { message = "Asignación inactivada correctamente." });
        }
        /* CANTIDAD DE ALUMNOS Y CURSOS ASIGNADOS POR GRADO Y SECCION */
        [HttpGet("{idDocente}/resumen")]
        public async Task<IActionResult> GetResumenDocente(int idDocente)
        {
            var anioActivo = await _context.AnioEscolar.FirstOrDefaultAsync(a => a.Estado);
            if (anioActivo == null)
                return NotFound("No hay un año escolar activo.");

            // Obtener cursos (ramas asignadas)
            var cursosAsignados = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == idDocente && a.IdAnioEscolar == anioActivo.IdAnioEscolar)
                .Select(a => a.IdRama)
                .Distinct()
                .CountAsync();

            // Obtener alumnos únicos según asignación de grado y sección
            var gradosSeccionesAsignadas = await _context.AsignacionesDocente
                .Where(a => a.IdUsuarioDocente == idDocente && a.IdAnioEscolar == anioActivo.IdAnioEscolar)
                .Select(a => new { a.IdGrado, a.IdSeccion })
                .Distinct()
                .ToListAsync();

            var alumnosQuery = _context.EstudianteGrado
                .Where(e => e.IdAnioEscolar == anioActivo.IdAnioEscolar && e.UsuarioEstudiante.Estado == true);

            int totalAlumnos = 0;

            foreach (var item in gradosSeccionesAsignadas)
            {
                totalAlumnos += await alumnosQuery
                    .Where(e => e.IdGrado == item.IdGrado && e.IdSeccion == item.IdSeccion)
                    .Select(e => e.IdUsuarioEstudiante)
                    .Distinct()
                    .CountAsync();
            }

            return Ok(new
            {
                CursosAsignados = cursosAsignados,
                AlumnosAsignados = totalAlumnos
            });
        }
    }
}
