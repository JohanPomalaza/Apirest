using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("CursosPorNivel")]
    public class CursosPorNivel
    {
        [ForeignKey("Nivel")]
        [Column("id_nivel")]
        public int IdNivel { get; set; }
        public NivelEducativo Nivel { get; set; }

        [ForeignKey("Curso")]
        [Column("id_curso")]
        public int IdCurso { get; set; }
        public Cursos Curso { get; set; }
    }
}
