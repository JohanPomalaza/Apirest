using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("HistorialNotas")]
    public class HistorialNotas
    {
        [Key]
        [Column("id_historial")]
        public int IdHistorial { get; set; }

        [Column("id_nota")]
        public int IdNota { get; set; }

        [Column("id_tema")]
        public int IdTema { get; set; }

        [Column("id_usuario_estudiante")]
        public int IdUsuarioEstudiante { get; set; }

        [Column("id_usuario_docente")]
        public int IdUsuarioDocente { get; set; }

        [Column("nota_anterior")]
        public string? NotaAnterior { get; set; }

        [Column("nota_nueva")]
        public string? NotaNueva { get; set; }

        [Column("comentario_anterior")]
        public string? ComentarioAnterior { get; set; }

        [Column("comentario_nuevo")]
        public string? ComentarioNuevo { get; set; }
        [Column("justificacion")]
        public string? Justificacion { get; set; }

        [Column("accion")]
        public string Accion { get; set; }

        [Column("fecha_cambio")]
        public DateTime FechaCambio { get; set; }
    }
}
