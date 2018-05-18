using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agricathon.Controllers
{
    public class DMController : Controller
    {
        // GET: DM
        public ActionResult ACPDM()
        {
            return View();
        }

        public ActionResult VentesEnLigneDM()
        {
            return View();
        }

        public ActionResult ReseauxPlateformesDM()
        {
            return View();
        }
    }
}