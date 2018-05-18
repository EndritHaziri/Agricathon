using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agricathon.Controllers
{
    public class PlusieursActivitésController : Controller
    {
        // GET: PlusieursActivités
        public ActionResult ACPPA()
        {
            return View();
        }

        public ActionResult VentesEnLignePA()
        {
            return View();
        }

        public ActionResult ReseauxPlateformesPA()
        {
            return View();
        }
    }
}