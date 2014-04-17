BootstrapNotifications
======================

Bootstrap Notifications is a controller extension built with bootstrap for ASP.NET MVC projects. It enables you to easily notify your users per request from the controller. 

![Screenshot of demo project][1]


Installation
======================

You can download it using the Package Manager Console:

     Install-Package BootstrapNotifications
     
or download it from [NuGet](https://www.nuget.org/packages/BootstrapNotifications/)
     
     
Alternatively, you can use the demo project from this repository. 


Setup
======================

1. To use this extension, you'll need to include the shared partial where you plan 
   on displaying the notifications. I would suggest above `@RenderBody()` in `_Layout.cshtml`.

   **Example `_Layout.cshtml`:**

    <div class="container">
        @Html.Partial("_Notifications")
        @RenderBody()
    </div>
    
    <sub>NOTE: make sure to include bootstrap in your layout.</sub>
    
2. In any controller, include the `NotificationExtensions` and you can start notifying your users:
  
   **Example `HomeController.cs`:**

    using System.Web.Mvc;
    using YourApp.Extensions;
    
    namespace YourApp.Controllers
    {
        public class HomeController : Controller
        {
    
            public ActionResult Index()
            {
                this.AddNotification("You're on fire, run!", NotificationType.ERROR);
                return View("Index");
            }
        }
    }

![Screenshot of demo index code snippet][2]
    
3. You're ready to go!

------------------
    
The available `NotificationType`s are:
  - ERROR
  - WARNING
  - SUCCESS
  - INFO

  
[1]: https://raw.github.com/MFFoX/BootstrapNotifications/master/Screenshot.png
[2]: https://raw.github.com/MFFoX/BootstrapNotifications/master/Demo-example.png
  
  
    
    


    
     
     
