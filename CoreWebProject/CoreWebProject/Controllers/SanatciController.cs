using CoreWebProject.Data;
using CoreWebProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreWebProject.Controllers
{
    public class SanatciController : Controller
    {
        public readonly KonserEtkinlikDbContext _context;

        public SanatciController(KonserEtkinlikDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<Sanatcilar> applicants;
            applicants = _context.Sanatcilars.ToList();
            return View(applicants);
        }

        public IActionResult Create()
        {
            Sanatcilar sanatci = new Sanatcilar();
            return View(sanatci);
        }
        [HttpPost]
        public IActionResult Create(Sanatcilar sanatci)
        {
            _context.Add(sanatci);
            _context.SaveChanges();

            return RedirectToAction("Index", "Sanatci");
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();

            }
            var applicant= await _context.Sanatcilars.FindAsync(id);
            if (applicant == null)
            {
                return NotFound();

            }
            return View(applicant);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("SanatciId, SanatciAd, SanatciCinsiyet, Yas")] Sanatcilar sanatci)
        {
            _context.Update(sanatci);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        public async Task<IActionResult> Delete(int? id)
        {
            if (id==0)
            {
                return NotFound();
            }
            var sanatci = await _context.Sanatcilars.FindAsync(id);
            if (sanatci ==null)
            {
                return NotFound();
            }
            return View(sanatci);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var sanatci= await _context.Sanatcilars.FirstOrDefaultAsync(m=>m.SanatciId== id);
            _context.Sanatcilars.Remove(sanatci);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

      
    }
}
