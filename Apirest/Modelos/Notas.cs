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

        [ForeignKey("TemaCurso")]
        [Column("id_tema")]
        public int IdTema { get; set; }
        public TemasCurso TemaCurso { get; set; }

        [ForeignKey("Usuario")]
        [Column("id_usuario")]
        public int IdUsuario { get; set; }
        public Usuario Usuario { get; set; }

        [Column("nota")]
        public decimal Nota { get; set; }

        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public AnioEscolar AnioEscolar { get; set; }

        public byte? Semestre { get; set; }
        public byte? Trimestre { get; set; }
    }
}
