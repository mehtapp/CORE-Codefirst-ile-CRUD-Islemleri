using CoreWebProject.Data;
using CoreWebProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreWebProject.Controllers
{
    public class DinleyiciController : Controller
    {
        public readonly KonserEtkinlikDbContext _context;
        public DinleyiciController(KonserEtkinlikDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<Dinleyiciler> applicants;
            applicants = _context.Dinleyicilers.ToList();
            return View(applicants);
        }

        public IActionResult Create()
        {
            Dinleyiciler dinleyici = new Dinleyiciler();
            return View(dinleyici);
        }
        [HttpPost]
        public IActionResult Create(Dinleyiciler dinleyici)
        {
            _context.Add(dinleyici);
            _context.SaveChanges();
            return RedirectToAction("Index", "Dinleyici");
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var applicant = await _context.Dinleyicilers.FindAsync(id);
            if (applicant == null)
            {
                return NotFound();
            }
            return View(applicant);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("DinleyiciId, AdSoyad, KoltukNo, Yas")] Dinleyiciler dinleyici)
        {

            _context.Update(dinleyici);
            await _context.SaveChangesAsync();


            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Delete(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }

            var dinleyici = await _context.Dinleyicilers.FirstOrDefaultAsync(m => m.DinleyiciId == id);
            if (dinleyici == null)
            {
                return NotFound();
            }

            return View(dinleyici);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var dinleyici= await _context.Dinleyicilers.FirstOrDefaultAsync(m => m.DinleyiciId == id);
            _context.Dinleyicilers.Remove(dinleyici);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
    }
}
