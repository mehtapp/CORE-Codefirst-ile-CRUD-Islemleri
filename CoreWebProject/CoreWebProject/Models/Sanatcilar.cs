using System.ComponentModel.DataAnnotations;

namespace CoreWebProject.Models
{
    public class Sanatcilar
    {
        [Key]
        public int SanatciId { get; set; }



        [StringLength(50)]
        [Required]
        public string SanatciAd { get; set; } = "";

        [StringLength(10)]
        public string SanatciCinsiyet { get; set; } = "";

        [Required]
        public int Yas { get; set; }



    }
}
