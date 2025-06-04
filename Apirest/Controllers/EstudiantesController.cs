using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EstudiantesController : ControllerBase
    {
        private readonly AppDbContext _context;
        public EstudiantesController(AppDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Usuario>>> GetEstudiantes()
        {
            return await _context.Usuarios
                .Where(u => u.IdRol == 2) // Suponiendo que 2 es el rol estudiante
                .Include(u => u.EstudiantesGrado)
                .ThenInclude(eg => eg.Grado)
                .ToListAsync();
        }

        [HttpPost]
        public async Task<ActionResult> CrearEstudiante(Usuario estudiante)
        {
            if (estudiante.IdRol != 2)
                return BadRequest("El usuario debe tener el rol de estudiante.");

            _context.Usuarios.Add(estudiante);
            await _context.SaveChangesAsync();
            return Ok(estudiante);
        }

        [HttpPut("{id}")]
        public async Task<ActionResult> EditarEstudiante(int id, Usuario estudianteActualizado)
        {
            var existente = await _context.Usuarios.FindAsync(id);
            if (existente == null || existente.IdRol != 2)
                return NotFound();

            existente.Nombre = estudianteActualizado.Nombre;
            existente.Apellido = estudianteActualizado.Apellido;
            existente.Correo = estudianteActualizado.Correo;
            existente.Contrasena = estudianteActualizado.Contrasena;

            await _context.SaveChangesAsync();
            return Ok(existente);
        }

        [HttpPost("{idEstudiante}/asignar")]
        public async Task<ActionResult> AsignarAGrado(int idEstudiante, [FromBody] EstudianteGrado asignacion)
        {
            var estudiante = await _context.Usuarios.FindAsync(idEstudiante);
            if (estudiante == null || estudiante.IdRol != 2)
                return NotFound("Estudiante no encontrado");

            asignacion.IdUsuarioEstudiante = idEstudiante;
            _context.EstudianteGrado.Add(asignacion);
            await _context.SaveChangesAsync();
            return Ok(asignacion);
        }
    }
}
