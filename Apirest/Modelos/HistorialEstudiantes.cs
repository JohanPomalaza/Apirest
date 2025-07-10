using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialEstudiantes")]
    public class HistorialEstudiantes
    {
        [Key]
        [Column("id_historial")]
        public int IdHistorial { get; set; }

        [Column("id_estudiante_grado")]
        public int IdEstudianteGrado { get; set; }

        [Column("id_usuario_estudiante")]
        public int IdUsuarioEstudiante { get; set; }

        [Column("id_grado")]
        public int? IdGrado { get; set; }

        [Column("id_seccion")]
        public int? IdSeccion { get; set; }

        [Column("id_anio_escolar")]
        public int? IdAnioEscolar { get; set; }

        [Column("estado_anterior")]
        public bool? EstadoAnterior { get; set; }

        [Column("estado_nuevo")]
        public bool? EstadoNuevo { get; set; }

        [Column("accion")]
        public string Accion { get; set; }

        [Column("fecha_cambio")]
        public DateTime? FechaCambio { get; set; }

        [Column("usuario_responsable")]
        public int? UsuarioResponsable { get; set; }
    }
}