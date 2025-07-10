using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialCursos")]
    public class HistorialCursos
    {
        [Key]
        [Column("id_historial")]
        public int IdHistorial { get; set; }

        [Column("id_curso")]
        public int IdCurso { get; set; }

        [Column("usuario_responsable")]
        public int? UsuarioResponsable { get; set; }

        [Column("nombre_anterior")]
        public string? NombreAnterior { get; set; }

        [Column("nombre_nuevo")]
        public string? NombreNuevo { get; set; }


        [Column("accion")]
        public string Accion { get; set; }

        [Column("fecha_cambio")]
        public DateTime FechaCambio { get; set; }
    }
}
