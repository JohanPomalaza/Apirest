using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Grados")]
    public class Grado
    {
        [Key]
        [Column("id_grado")]
        public int IdGrado { get; set; }

        [Required]
        [MaxLength(50)]
        public string NombreGrado { get; set; }

        [ForeignKey("Nivel")]
        [Column("id_nivel")]
        public int IdNivel { get; set; }
        [Column("estado")]
        public bool Estado { get; set; }
        public NivelEducativo Nivel { get; set; }

        public ICollection<EstudianteGrado> Estudiantes { get; set; }
    }
}
