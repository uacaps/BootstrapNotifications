using System.Web.Mvc;
using BootstrapNotifications.Extensions;

namespace BootstrapNotifications.Demo.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ErrorDemo()
        {
            this.AddNotification("You're on fire, run!", NotificationType.ERROR);
            return View("Index");
        }

        public ActionResult ErrorsDemo()
        {
            this.AddNotification("You're doing it wrong", NotificationType.ERROR);
            this.AddNotification("You're covered in gasoline", NotificationType.ERROR);
            this.AddNotification("You're on fire, run!", NotificationType.ERROR);
            return View("Index");
        }

        public ActionResult SuccessDemo()
        {
            this.AddNotification("You've rolled the fire out!", NotificationType.SUCCESS);
            return View("Index");
        }

        public ActionResult WarningDemo()
        {
            this.AddNotification("Don't touch that!", NotificationType.WARNING);
            return View("Index");
        }

        public ActionResult InfoDemo()
        {
            this.AddNotification("Spontaneous human combustion refers to the death from a fire originating without an apparent external source of ignition", NotificationType.INFO);
            return View("Index");
        }

        public ActionResult MultiDemo()
        {
            this.AddNotification("You're on fire, run!", NotificationType.ERROR);
            this.AddNotification("Spontaneous human combustion refers to the death from a fire originating without an apparent external source of ignition", NotificationType.INFO);
            return View("Index");
        }


    }
}
