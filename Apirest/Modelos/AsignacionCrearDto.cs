namespace Apirest.Modelos
{
    public class AsignacionCrearDto
    {
        public int IdUsuarioDocente { get; set; }
        public int IdAsignador { get; set; }
        public List<int> IdRamas { get; set; }
        public int IdGrado { get; set; }
        public int IdSeccion { get; set; }
        public int IdAnioEscolar { get; set; }
    }
}
