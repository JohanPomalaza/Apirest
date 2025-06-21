using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialDocentes")]
    public class HistorialDocentes
    {
        [Key]
        [Column("id_historial")]
        public int IdHistorial { get; set; }

        [Column("id_asignacion")]
        public int IdAsignacion { get; set; }

        [Column("id_usuario_docente")]
        public int IdUsuarioDocente { get; set; }

        [Column("id_rama")]
        public int? IdRama { get; set; }

        [Column("id_grado")]
        public int? IdGrado { get; set; }

        [Column("id_anio_escolar")]
        public int? IdAnioEscolar { get; set; }

        [Column("accion")]
        public string Accion { get; set; }

        [Column("fecha_cambio")]
        public DateTime? FechaCambio { get; set; }

        [Column("usuario_responsable")]
        public int? UsuarioResponsable { get; set; }
    }
}