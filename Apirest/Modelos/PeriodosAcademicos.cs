using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("PeriodosAcademicos")]
    public class PeriodosAcademicos
    {
        [Key]
        [Column("id_periodo")]
        public int idPeriodo {  get; set; }
        public string nombrePeriodo { get; set; }
        public string tipoPeriodo { get; set; }
        public DateTime fechaInicio { get; set; }
        public DateTime fechaFin {  get; set; }

    }
}
