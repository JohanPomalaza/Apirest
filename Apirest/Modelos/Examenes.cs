using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("Examenes")]
    public class Examenes
    {
        [Key]
        [Column("id_examen")]
        public int idExamen {  get; set; }
        [ForeignKey("TemasCurso")]
        [Column("id_tema")]
        public int idTema { get; set; }
        public TemasCurso TemasCurso { get; set; }

        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public DateTime Fecha { get; set; }
        public string TipoExamen { get; set; }
        [ForeignKey("PeriodosAcademicos")]
        [Column("id_periodo")]
        public int idPeriodo { get; set; }

    }
}
