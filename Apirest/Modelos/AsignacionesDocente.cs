using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Apirest.Modelos
{
    [Table("AsignacionesDocente")]
    public class AsignacionesDocente
    {
        [Key]
        [Column("id_asignacion")]
        public int IdAsignacion { get; set; }

        [ForeignKey("UsuarioDocente")]
        [Column("id_usuario_docente")]
        public int IdUsuarioDocente { get; set; }
        public Usuario UsuarioDocente { get; set; }

        [ForeignKey("UsuarioAsignadpr")]
        [Column("id_asignador")]
        public int IdUsuarioAsignador { get; set; }
        public Usuario UsuarioAsignador { get; set; }

        [ForeignKey("RamaCurso")]
        [Column("id_rama")]
        public int IdRama { get; set; }
        public RamasCurso RamaCurso { get; set; }

        [ForeignKey("Grados")]
        [Column("id_grado")]
        public int IdGrado { get; set; }

        [ForeignKey("AnioEscolar")]
        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        public AnioEscolar AnioEscolar { get; set; }
    }
}
