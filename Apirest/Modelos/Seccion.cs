using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    public class Seccion
    {
        [Key]
        [Column("id_seccion")]
        public int IdSeccion { get; set; }

        [Required]
        [Column("id_grado")]
        public int IdGrado { get; set; }

        [Required]
        [MaxLength(1)]
        public string Nombre { get; set; }

        public bool Estado { get; set; } = true;

        // Relaciones
        [ForeignKey("IdGrado")]
        public Grado Grado { get; set; }

        public ICollection<EstudianteGrado> Estudiantes { get; set; }
        public ICollection<AsignacionesDocente> AsignacionesDocente { get; set; }
    }
}
