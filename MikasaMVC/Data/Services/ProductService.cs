using Microsoft.EntityFrameworkCore;
using MikasaData;
using MikasaMVC.Data.Base;
using MikasaMVC.Data.Base.Interface;
using MikasaMVC.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MikasaMVC.Data.Services
{
    public class ProductService : EntityBaseRepository<Product>, IProductService
    {
        private readonly AppDbContext _context;
        private readonly IReadWriteToJson _readWriteToJson;
        public ProductService(AppDbContext context, IReadWriteToJson readWriteToJson) : base(context)
        {
            _context = context;
            _readWriteToJson = readWriteToJson;
        }
        
        public async Task<Product> GetProductByAsync(int id)
        {
            var products = await _readWriteToJson.ReadJson<Product>("Products.json");
            return products.Where(v => v.Id == id).SingleOrDefault();
            //  return await _context.Products.FirstOrDefaultAsync(v => v.Id == id);
        }
    }
}
