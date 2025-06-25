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

        [Column("id_usuario_estudiante")]
        public int IdUsuarioEstudiante { get; set; }

        [Column("id_grado")]
        public int IdGrado { get; set; }

        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public bool Estado { get; set; }

      
        [ForeignKey(nameof(IdUsuarioEstudiante))]
        public Usuario UsuarioEstudiante { get; set; }

        [ForeignKey(nameof(IdGrado))]
        public Grado Grado { get; set; }

        [ForeignKey(nameof(IdAnioEscolar))]
        public AnioEscolar AnioEscolar { get; set; }

    }
}
