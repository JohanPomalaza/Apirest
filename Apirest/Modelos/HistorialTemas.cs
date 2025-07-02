using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialTemas")]
    public class HistorialTemas
    {
        [Key]
        [Column("Id")]
        public int Id { get; set; }

        public int IdTema { get; set; }
        public string Accion { get; set; }

        public string? NombreAnterior { get; set; }
        public string? NombreNuevo { get; set; }

        public int? IdRamaAnterior { get; set; }
        public int? IdRamaNueva { get; set; }

        public DateTime FechaCambio { get; set; }
        public int IdUsuario { get; set; }
    }
}
