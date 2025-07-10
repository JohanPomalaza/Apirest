using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("RamasCurso")]
    public class RamasCurso
    {
        [Key]
        [Column("id_rama")]
        public int IdRama { get; set; }

        [ForeignKey("Curso")]
        [Column("id_curso")]
        public int IdCurso { get; set; }
        public Cursos Curso { get; set; }

        public string Nombre { get; set; }

        public bool Estado { get; set; }
        public ICollection<AsignacionesDocente> Asignaciones { get; set; }
    }
}
