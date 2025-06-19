using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialRamas")]
    public class HistorialRamas
    {
        [Key]
        [Column("IdHistorial")]
        public int IdHistorial { get; set; }

        public int IdRama { get; set; }

        public string Accion { get; set; }

        public string? NombreAnterior { get; set; }

        public string? NombreNuevo { get; set; }

        public bool? EstadoAnterior { get; set; }

        public bool? EstadoNuevo { get; set; }

        public DateTime FechaCambio { get; set; }

        public int IdUsuario { get; set; }

        [ForeignKey("IdRama")]
        public RamasCurso Rama { get; set; }

        [ForeignKey("IdUsuario")]
        public Usuario Usuario { get; set; }
    }
}
