using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Cursos")]
    public class Cursos
    {
        [Key]
        [Column("id_curso")]
        public int IdCurso { get; set; }

        [Required]
        [MaxLength(100)]
        [Column("nombre_curso")]
        public string NombreCurso { get; set; }
        [Column("estado")]
        public bool Estado {  get; set; }
    }
}
