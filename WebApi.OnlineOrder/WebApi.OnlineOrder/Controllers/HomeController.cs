using Log4;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApi.OnlineOrder.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";
            //FileLogService.Instance.Info($"用户名{user.Name}-密码{user.Pwd}");
            return View();
        }
    }
}
