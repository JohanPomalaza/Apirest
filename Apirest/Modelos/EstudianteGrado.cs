using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("EstudianteGrado")]
    public class EstudianteGrado
    {
        [Key]
        [Column("id_estudiante_grado")]
        public int IdEstudianteGrado { get; set; }

        [ForeignKey("Usuario")]
        [Column("id_usuario_estudiante")]
        public int IdUsuarioEstudiante { get; set; }
        public Usuario UsuarioEstudiante { get; set; }
        public Usuario Usuario { get; set; }

        [ForeignKey("Grado")]
        [Column("id_grado")]
        public int IdGrado { get; set; }
        public Grado Grado { get; set; }

        [ForeignKey("AnioEscolar")]
        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public AnioEscolar AnioEscolar { get; set; }

    }
}
