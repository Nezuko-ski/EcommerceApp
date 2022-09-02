using MikasaMVC.Models;
using System.Threading.Tasks;

namespace MikasaMVC.Data.Base.Interface
{
    public interface IProductService : IEntityBaseRepository<Product>
    {
        Task<Product> GetProductByAsync(int id);
    }
}
