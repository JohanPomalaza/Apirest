using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("Notas")]
    public class Notas
    {
        [Key]
        [Column("id_nota")]
        public int IdNota { get; set; }

        public string? Comentario { get; set; }
        public string? Justificacion { get; set; }

        [ForeignKey("TemaCurso")]
        [Column("id_tema")]
        public int IdTema { get; set; }
        public TemasCurso TemaCurso { get; set; }

        [ForeignKey("UsuarioEstudiante")]
        [Column("id_usuario_estudiante")]
        public int IdUsuarioEstudiante { get; set; }
        public Usuario UsuarioEstudiante { get; set; }

        [ForeignKey("UsuarioDocente")]
        [Column("id_usuario_docente")]
        public int? IdUsuarioDocente { get; set; }
        public Usuario UsuarioDocente { get; set; }

        [Column("nota")]
        public string Nota { get; set; }

        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public AnioEscolar AnioEscolar { get; set; }

    }
}
