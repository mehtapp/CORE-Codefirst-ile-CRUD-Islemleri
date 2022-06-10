using CoreWebProject.Data;
using CoreWebProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreWebProject.Controllers
{
    public class MekanController : Controller
    {
        public readonly KonserEtkinlikDbContext _context;
        public MekanController(KonserEtkinlikDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<Mekanlar> applicants;
            applicants = _context.Mekanlars.ToList();
            return View(applicants);
        }
        public IActionResult Create()
        {
            Mekanlar mekan = new Mekanlar();
            return View(mekan);
        }
        [HttpPost]
        public IActionResult Create(Mekanlar mekan)
        {
            _context.Add(mekan);
            _context.SaveChanges();
            return RedirectToAction("Index", "Mekan");
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var applicant = await _context.Mekanlars.FindAsync(id);
            if (applicant == null)
            {
                return NotFound();
            }
            return View(applicant);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MekanId,MekanAdi,Il, Ilce, AcikAdres")] Mekanlar mekan)
        {

            _context.Update(mekan);
            await _context.SaveChangesAsync();


            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Delete(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }

            var mekan = await _context.Mekanlars.FirstOrDefaultAsync(m => m.MekanId == id);
            if (mekan == null)
            {
                return NotFound();
            }

            return View(mekan);
        }

        [HttpPost, ActionName("Delete")]   
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var user = await _context.Mekanlars.FirstOrDefaultAsync(m => m.MekanId == id);
            _context.Mekanlars.Remove(user);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
    }
}
