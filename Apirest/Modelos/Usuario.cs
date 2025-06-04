using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Usuarios")]
    public class Usuario
    {
        [Key]
        [Column("id_usuario")]
        public int IdUsuario { get; set; }

        [Column("nombre")]
        public string Nombre { get; set; }

        [Column("apellido")]
        public string Apellido { get; set; }

        [Column("correo")]
        public string Correo { get; set; }

        [Column("contrasena")]
        public string Contrasena { get; set; }

        [ForeignKey("Rol")]
        [Column("id_rol")]
        public int IdRol { get; set; }
        public Rol Rol { get; set; }

        [NotMapped]
        public bool EsDocente => IdRol == 1;

        public ICollection<EstudianteGrado> EstudiantesGrado { get; set; }

        public virtual ICollection<AsignacionesDocente> AsignacionesComoDocente { get; set; }
        public virtual ICollection<AsignacionesDocente> AsignacionesComoAsignador { get; set; }
    }
}
