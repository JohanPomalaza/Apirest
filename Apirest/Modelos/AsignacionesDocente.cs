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

        [Column("id_usuario_docente")]
        public int IdUsuarioDocente { get; set; }

        [Column("id_asignador")]
        public int IdAsignador { get; set; }

        [Column("id_rama")]
        public int IdRama { get; set; }

        [Column("id_seccion")]
        public int IdSeccion { get; set; }

        [Column("id_grado")]
        public int IdGrado { get; set; }

        [Column("id_anio_escolar")]
        public int IdAnioEscolar { get; set; }
        [Column("estado")]
        public bool Estado {  get; set; }

        // Relaciones

        [ForeignKey("IdUsuarioDocente")]
        public Usuario UsuarioDocente { get; set; }

        [ForeignKey("IdAsignador")]
        public Usuario Asignador { get; set; }

        [ForeignKey("IdRama")]
        public RamasCurso RamaCurso { get; set; }

        [ForeignKey("IdGrado")]
        public Grado Grado { get; set; }


        [ForeignKey("IdAnioEscolar")]
        public AnioEscolar AnioEscolar { get; set; }

        [ForeignKey("IdSeccion")]
        public Seccion Seccion { get; set; }
    }
}
