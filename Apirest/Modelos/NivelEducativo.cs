using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("NivelesEducativos")]
    public class NivelEducativo
    {
        [Key]
        [Column("id_nivel")]
        public int IdNivel { get; set; }

        [Required]
        [MaxLength(50)]
        public string NombreNivel { get; set; }

        public ICollection<Grado> Grados { get; set; }
    }
}
