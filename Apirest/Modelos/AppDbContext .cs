using Apirest.Modelos;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace Apirest.Modelos
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Rol> Roles { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Usuario>()
                .HasOne(u => u.Rol)
                .WithMany()
                .HasForeignKey(u => u.id_rol)
                .HasConstraintName("FK__Usuarios__id_rol__3B75D760"); // opcional: por si SQL Server ya tiene ese nombre

            // También puedes mapear nombres de columnas si los nombres de propiedades no coinciden exactamente
            modelBuilder.Entity<Usuario>().ToTable("Usuarios");
            modelBuilder.Entity<Rol>().ToTable("Roles");
        }
    }
}
   

