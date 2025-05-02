using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Usuarios")]
    public class Usuario
    {
        [Key]
        [Column("id_usuario")]
        public int id_usuario { get; set; }

        public string nombre { get; set; }
        public string apellido { get; set; }
        public string Correo { get; set; }
        public string Contrasena { get; set; }

        public int? id_rol { get; set; }
        public Rol Rol { get; set; }
    }
}
