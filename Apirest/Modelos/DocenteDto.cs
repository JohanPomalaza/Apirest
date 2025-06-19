namespace Apirest.Modelos
{
    public class DocenteDto
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public List<AsignacionDto> Asignaciones { get; set; }
    }
}
