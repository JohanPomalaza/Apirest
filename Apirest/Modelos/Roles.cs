using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("Roles")] // Asegura que EF lo mapee a la tabla correcta
    public class Rol
    {
        [Key] // <-- Esto es esencial
        [Column("id_rol")] // Opcional, pero puede ayudar a evitar confusiones
        public int id_rol { get; set; }

        [Column("nombre_rol")] // Asegura coincidencia exacta con tu tabla SQL
        public string nombre_rol { get; set; }
    }
}
