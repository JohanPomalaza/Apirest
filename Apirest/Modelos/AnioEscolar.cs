using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("AnioEscolar")]
    public class AnioEscolar
    {
        [Key]
        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public int Anio { get; set; }
        public bool Estado { get; set; }
    }
}
