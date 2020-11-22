using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace OnlyPlants
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // global variable for the user's cart
            Cart globalCart = new Cart();
            Application.Lock();
            Application["Cart"] = globalCart;
            Application.UnLock();
        }

        void Application_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["Order"] = null;
            Application.UnLock();
        }
    }
}