using CoreWebProject.Models;
using Microsoft.EntityFrameworkCore;

namespace CoreWebProject.Data
{
    public class KonserEtkinlikDbContext : DbContext
    {
        public KonserEtkinlikDbContext(DbContextOptions<KonserEtkinlikDbContext> options) : base(options)
        {

        }
        public virtual DbSet<Sanatcilar> Sanatcilars { get; set; }
        public virtual DbSet<Mekanlar> Mekanlars { get; set; }
        public virtual DbSet<Dinleyiciler> Dinleyicilers { get; set; }
    }
}
