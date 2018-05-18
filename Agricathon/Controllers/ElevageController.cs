using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agricathon.Controllers
{
    public class ElevageController : Controller
    {
        // GET: Elevage
        public ActionResult ACPElevage()
        {
            return View();
        }

        public ActionResult VentesEnLigneElevage()
        {
            return View();
        }

        public ActionResult ReseauxPlateformesElevage()
        {
            return View();
        }
    }
}