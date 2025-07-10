using Apirest.Modelos;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace Apirest.Modelos
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<NivelEducativo> NivelesEducativos { get; set; }
        public DbSet<Grado> Grados { get; set; }
        public DbSet<EstudianteGrado> EstudianteGrado { get; set; }
        public DbSet<CursosPorNivel> CursosPorNivel { get; set; }
        public DbSet<Cursos> Cursos { get; set; }
        public DbSet<RamasCurso> RamasCurso { get; set; }
        public DbSet<TemasCurso> TemasCurso { get; set; }
        public DbSet<AnioEscolar> AnioEscolar { get; set; }
        public DbSet<Notas> Notas { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }

        public DbSet<AsignacionesDocente> AsignacionesDocente { get; set; }

        public DbSet<EstudianteGrado>EstudianteGrados { get; set; }

        public DbSet<HistorialNotas> HistorialNotas { get; set; }
        public DbSet<HistorialCursos> HistorialCursos { get; set; }
        public DbSet<HistorialRamas> HistorialRamas { get; set; }
        public DbSet<HistorialTemas> HistorialTemas { get; set; }
        public DbSet<HistorialEstudiantes> HistorialEstudiantes { get; set; }
        public DbSet<Notificacion> Notificaciones { get; set; }
        public DbSet<Seccion> Secciones { get; set; }

        public DbSet<HistorialDocentes> HistorialDocentes { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Usuario>()
                .HasOne(u => u.Rol)
                .WithMany()
                .HasForeignKey(u => u.IdRol)
                .HasConstraintName("FK__Usuarios__id_rol__3B75D760"); // opcional: por si SQL Server ya tiene ese nombre

            // También puedes mapear nombres de columnas si los nombres de propiedades no coinciden exactamente
            modelBuilder.Entity<Usuario>().ToTable("Usuarios");
            modelBuilder.Entity<Rol>().ToTable("Roles");
            modelBuilder.Entity<CursosPorNivel>().HasKey(cp => new { cp.IdNivel, cp.IdCurso });
            modelBuilder.Entity<EstudianteGrado>()
                .HasOne(e => e.AnioEscolar)
                .WithMany()
                .HasForeignKey(e => e.IdAnioEscolar)
                .HasConstraintName("FK_EstudianteGrado_AnioEscolar");

            modelBuilder.Entity<Notas>()
                .HasOne(n => n.AnioEscolar)
                .WithMany()
                .HasForeignKey(n => n.IdAnioEscolar)
                .HasConstraintName("FK_Notas_AnioEscolar");
            modelBuilder.Entity<AsignacionesDocente>()
            .HasOne(a => a.Grado)
            .WithMany()
            .HasForeignKey(a => a.IdGrado);

            modelBuilder.Entity<Grado>()
                .Property(g => g.NombreGrado)
                .HasColumnName("nombre_grado");

            modelBuilder.Entity<AsignacionesDocente>()
                .HasOne(a => a.UsuarioDocente)
                .WithMany(u => u.AsignacionesComoDocente)
                .HasForeignKey(a => a.IdUsuarioDocente)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<AsignacionesDocente>()
                .HasOne(a => a.Asignador)
                .WithMany(u => u.AsignacionesComoAsignador)
                .HasForeignKey(a => a.IdAsignador)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<AsignacionesDocente>()
                .Property(a => a.IdSeccion)
                .HasColumnName("id_seccion");
        }
    }
}
   

