using System.ComponentModel.DataAnnotations;

namespace CoreWebProject.Models
{
    public class Dinleyiciler
    {
        [Key]
        public int DinleyiciId { get; set; }

        [Required]
        public string AdSoyad { get; set; } = "";
        public int KoltukNo { get; set; }
        public int Yas { get; set; }
    }
}
