namespace Apirest.Modelos
{
    public class AsignacionDto
    {
        public int IdUsuarioDocente { get; set; }
        public int IdAsignacion { get; set; }
        public int IdAsignador { get; set; }
        public int IdRamaCurso { get; set; }
        public string RamaCursoNombre { get; set; }

        public int IdGrado { get; set; }
        public string GradoNombre { get; set; }
        public int IdSeccion { get; set; }
        public string SeccionNombre { get; set; }
        public int IdAnioEscolar { get; set; }
        public int IdCurso { get; set; }
        public string CursoNombre { get; set; }
    }
}
