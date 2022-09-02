using MikasaData;
using System.ComponentModel.DataAnnotations;

namespace MikasaMVC.Models
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double ? Price { get; set; }
        public string ImageURL { get; set; }
        public ProductCategory productCategory { get; set; }
    }
}
