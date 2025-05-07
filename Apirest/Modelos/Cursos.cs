using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Cursos")]
    public class Cursos
    {
        [Key]
        [Column("id_curso")]
        public int id_curso { get; set; }

        public string nombre_curso { get; set; }
    }
}
