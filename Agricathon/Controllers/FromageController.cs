using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agricathon.Controllers
{
    public class FromageController : Controller
    {
        // GET: Fromage
        public ActionResult ACPFromage()
        {
            return View();
        }

        public ActionResult VentesEnLigneFromage()
        {
            return View();
        }

        public ActionResult ReseauxPlateformesFromage()
        {
            return View();
        }
    }
}