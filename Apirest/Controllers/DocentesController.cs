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
        
    }
}
