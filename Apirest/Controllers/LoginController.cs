using Apirest.Modelos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;

namespace Apirest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly AppDbContext _context;
        public LoginController(AppDbContext context)
        {
            _context = context;
        }
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginRequest loginRequest)
        {
            var user = await _context.Usuarios
                .Include(u => u.Rol)
                .FirstOrDefaultAsync(u => u.Correo == loginRequest.Correo &&
                                          u.Contrasena == loginRequest.Contrasena);

            if (user == null)
                return Unauthorized(new { mensaje = "Credenciales incorrectas" });

            return Ok(new
            {
                mensaje = "Login exitoso",
                id = user.id_usuario,
                rol = user.Rol?.nombre_rol,
                nombre = user.nombre,
                apellido = user.apellido
            });
        }
    }
}
