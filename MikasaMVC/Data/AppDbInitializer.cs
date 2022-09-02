using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using MikasaData;
using MikasaMVC.Data.Static;
using MikasaMVC.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MikasaMVC.Data
{
    public class AppDbInitializer
    {
        public static void Seed(IApplicationBuilder applicationBuilder)
        {
            using (var serviceScope = applicationBuilder.ApplicationServices.CreateScope())
            {
                var context = serviceScope.ServiceProvider.GetService<AppDbContext>();

                context.Database.EnsureCreated();

                if (!context.Products.Any())
                {
                    context.Products.AddRange(new List<Product>()
                    {
                        new Product()
                        {
                            Name = "Nike Air Max 270 React",
                            Description = "This describes the product.",
                            Price = 299.43,
                            ImageURL = "https://i.imgur.com/hwJPScK.jpg",
                            ProductCategory = ProductCategory.Sneakers
                        },
                        new Product()
                        {
                            Name = "FS - QUILTED MAXI CROSS BAG",
                            Description = "This describes the product",
                            Price = 299.43,
                            ImageURL = "https://imgur.com/a/1gNNbJQ",
                            ProductCategory = ProductCategory.HandBags
                        },
                         new Product()
                        {
                            Name = "Blue Swade Nike Sneakers",
                            Description = "This describes the product",
                            Price = 499,
                            ImageURL = "https://i.imgur.com/apT296h.png",
                            ProductCategory = ProductCategory.Sneakers
                        },
                          new Product()
                        {
                            Name = "Nike Air Max 270 React",
                            Description = "This describes the product",
                            Price = 499,
                            ImageURL = "https://i.imgur.com/apT296h.png",
                            ProductCategory = ProductCategory.Sneakers
                        }
                    });
                }
                context.SaveChanges();
            }
        }
        public static async Task SeedUsersAndRolesAsync(IApplicationBuilder applicationBuilder)
        {
            using(var serviceScope = applicationBuilder.ApplicationServices.CreateScope())
            {
                //Roles
                var roleManager = serviceScope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
                if (!await roleManager.RoleExistsAsync(UserRoles.Admin))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.Admin));
                if (!await roleManager.RoleExistsAsync(UserRoles.User))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.User));

                //User
                var userManager = serviceScope.ServiceProvider.GetRequiredService<UserManager<ApplicationUser>>();
                var adminUser = await userManager.FindByEmailAsync("admin@ecomm.com");
                if(adminUser == null)
                {
                    var newAdminUser = new ApplicationUser()
                    {
                        FullName = "User Admin",
                        UserName = "admin-user",
                        Email = "admin@ecomm.com",
                        EmailConfirmed = true,
                    };
                    await userManager.CreateAsync(newAdminUser, "Nezuko@slayer4");
                    await userManager.AddToRoleAsync(newAdminUser, UserRoles.Admin);
                }

                var appUser = await userManager.FindByEmailAsync("user@ecomm.com");
                if (appUser == null)
                {
                    var newAppUser = new ApplicationUser()
                    {
                        FullName = "User Rando",
                        UserName = "app-user",
                        Email = "user@ecomm.com",
                        EmailConfirmed = true,
                    };
                    await userManager.CreateAsync(newAppUser, "Nezuko@slayer4");
                    await userManager.AddToRoleAsync(newAppUser, UserRoles.User);
                }
            }
        }
    }
}
