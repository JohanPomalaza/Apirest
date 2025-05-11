using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("TemasCurso")]
    public class TemasCurso
    {
        [Key]
        [Column("id_tema")]
        public int IdTema { get; set; }

        [ForeignKey("RamaCurso")]
        [Column("id_rama")]
        public int IdRama { get; set; }
        public RamasCurso RamaCurso { get; set; }

        public string Nombre { get; set; }
    }
}
