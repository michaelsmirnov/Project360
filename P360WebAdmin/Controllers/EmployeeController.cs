using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using P360Lib;

namespace P360WebAdmin.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/

        Database360Entities de = new Database360Entities();

        public ActionResult Index()
        {
            return View(de.Employees.ToList ());
        }

        //
        // GET: /Employee/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Employee/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Employee/Create

        [HttpPost]
        public ActionResult Create(Employee emp)
        {
            if (ModelState.IsValid)
            {
                de.Employees.Add(emp);

                de.SaveChanges();

                return RedirectToAction("index");
            }
            else
                return View();
        }

        //
        // GET: /Employee/Edit/5

        public ActionResult Edit(int id)
        {
            return View(de.Employees.Find (id));
        }

        //
        // POST: /Employee/Edit/5

        [HttpPost]
        public ActionResult Edit(Employee emp)
        {
            if (ModelState.IsValid)
            {
                de.Entry<Employee>(emp).State = System.Data.Entity.EntityState.Modified;
                de.SaveChanges();

                return RedirectToAction("index");
            }
            else
                return View();
        }

        //
        // GET: /Employee/Delete/5

        public ActionResult Delete(Employee emp)
        {
            de.Entry<Employee>(emp).State = System.Data.Entity.EntityState.Deleted;

            de.SaveChanges();

            return RedirectToAction("index");
        }
    }
}
