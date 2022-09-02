using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MikasaData;
using MikasaMVC.Data.Base.Interface;
using MikasaMVC.Models;
using System.Threading.Tasks;

namespace MikasaMVC.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _service;
        public ProductController(IProductService service)
        {
            _service = service;
        }
        
        public async Task<IActionResult> Index()
        {
            return View(await _service.GetAllAsync());
        }
        public async Task<IActionResult> Details(int id)
        { 
            return View(await _service.GetProductByAsync(id));
        }
        public IActionResult Create()
        {
            ViewData["Welcome"] = "Welcome to our store!";
            ViewBag.Description = "Feel free to splurge!";
            return View();
        }
    }
}
