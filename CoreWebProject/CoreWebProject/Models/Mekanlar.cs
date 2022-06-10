using System.ComponentModel.DataAnnotations;

namespace CoreWebProject.Models
{
    public class Mekanlar
    {
        [Key]
        public int MekanId { get; set; }

        [Required]
        [StringLength(100)]
        public string MekanAdi { get; set; } = "";


        [Required]
        public string Il { get; set; } = "";

        public string Ilce { get; set; } = "";
        public string AcikAdres { get; set; } = "";
    }
}
