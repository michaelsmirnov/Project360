using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using P360Lib;

namespace P360WebAdmin.Controllers
{
    public class RoleController : Controller
    {
        //
        // GET: /Role/

        Database360Entities de = new Database360Entities();

        public ActionResult Index()
        {
            return View(de.Roles.ToList ());
        }

        public ActionResult Delete (Role role)
        {
            de.Entry<Role>(role).State = System.Data.Entity.EntityState.Deleted;

            de.SaveChanges();

            return RedirectToAction("index");
        }


        [HttpGet]
        public ActionResult Edit(int id)
        {
            return View(de.Roles.Find (id));
        }

        [HttpPost]
        public ActionResult Edit(Role role)
        {
            if (ModelState.IsValid)
            {
                de.Entry<Role>(role).State = System.Data.Entity.EntityState.Modified;
                de.SaveChanges();

                return RedirectToAction("index");
            }
            else
                return View();

        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Role role)
        {
            if (ModelState.IsValid)
            {
                de.Roles.Add(role);

                de.SaveChanges();

                return RedirectToAction("index");
            }
            else
                return View();
            
        }
    }
}
