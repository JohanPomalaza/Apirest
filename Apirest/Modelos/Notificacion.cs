using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Apirest.Modelos
{
    [Table("Notificaciones")]
    public class Notificacion
    {
        [Key]
        [Column("id_notificacion")]
        public int IdNotificacion { get; set; }

        [Required]
        [Column("id_usuario_destino")]
        public int IdUsuarioDestino { get; set; }

        [ForeignKey("IdUsuarioDestino")]
        public Usuario UsuarioDestino { get; set; }

        [Column("titulo")]
        public string Titulo { get; set; }

        [Column("mensaje")]
        public string Mensaje { get; set; }

        [Column("fecha")]
        public DateTime Fecha { get; set; } = DateTime.Now;

        [Column("leida")]
        public bool Leida { get; set; } = false;

        // (Opcional) Si quieres enlazar con una nota específica:
        [Column("id_nota")]
        public int? IdNota { get; set; }

        [ForeignKey("IdNota")]
        public Notas Nota { get; set; }
    }
}
