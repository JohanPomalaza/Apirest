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
                .Select(u => new DocenteDto
                {
                    IdUsuario = u.IdUsuario,
                    Nombre = u.Nombre,
                    Correo = u.Correo,
                    Asignaciones = u.AsignacionesComoDocente.Select(a => new AsignacionDto
                    {
                        IdAsignacion = a.IdAsignacion,
                        IdRamaCurso = a.IdRama,
                        RamaCursoNombre = a.RamaCurso.Nombre
                    }).ToList()
                })
                .ToListAsync();

            return docentes;
        }

    [HttpPost]
    public async Task<ActionResult> CrearDocente(Usuario docente)
    {
        if (docente.IdRol != 1)
            return BadRequest("El usuario debe tener el rol de docente.");

        _context.Usuarios.Add(docente);
        await _context.SaveChangesAsync();
        return Ok(docente);
    }

    [HttpPut("{id}")]
    public async Task<ActionResult> EditarDocente(int id, Usuario docenteActualizado)
    {
        var existente = await _context.Usuarios.FindAsync(id);
        if (existente == null || existente.IdRol != 1)
            return NotFound();

        existente.Nombre = docenteActualizado.Nombre;
        existente.Apellido = docenteActualizado.Apellido;
        existente.Correo = docenteActualizado.Correo;
        existente.Contrasena = docenteActualizado.Contrasena;

        await _context.SaveChangesAsync();
        return Ok(existente);
    }

    [HttpPost("{idDocente}/asignar")]
    public async Task<ActionResult> AsignarCursoYGrado(int idDocente, [FromBody] AsignacionesDocente asignacion)
    {
        var docente = await _context.Usuarios.FindAsync(idDocente);
        if (docente == null || docente.IdRol != 1)
            return NotFound("Docente no encontrado");

        asignacion.IdUsuarioDocente = idDocente;
        _context.AsignacionesDocente.Add(asignacion);
        await _context.SaveChangesAsync();
        return Ok(asignacion);
    }

        // GET: api/Docentes/{idDocente}/historial
        [HttpGet("{idDocente}/historial")]
        public async Task<IActionResult> ObtenerHistorialDocente(int idDocente)
        {
            var historial = await _context.HistorialDocentes
                .Where(h => h.IdUsuarioDocente == idDocente)
                .OrderByDescending(h => h.FechaCambio)
                .Select(h => new
                {
                    h.IdHistorial,
                    h.IdAsignacion,
                    h.IdUsuarioDocente,
                    h.IdRama,
                    h.IdGrado,
                    h.IdAnioEscolar,
                    h.Accion,
                    FechaCambio = h.FechaCambio.HasValue ? h.FechaCambio.Value.ToString("yyyy-MM-dd HH:mm:ss") : null,
                    NombreResponsable = _context.Usuarios
                        .Where(u => u.IdUsuario == h.UsuarioResponsable)
                        .Select(u => u.Nombre)
                        .FirstOrDefault()
                })
                .ToListAsync();

            if (historial.Count == 0)
                return NotFound(new { message = "No hay historial para el docente indicado." });

            return Ok(historial);
        }



    }
}
