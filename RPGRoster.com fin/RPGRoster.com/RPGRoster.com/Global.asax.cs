using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using BCrypt.Net;

namespace RPGRoster.com
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}

//public class Hashing
//{
//	private static string GetRandomSalt()
//	{
//		return BCrypt.GenerateSalt(12);
//	}

//	public static string HashPassword(string password)
//	{
//		return BCrypt.HashPassword(password, GetRandomSalt());
//	}

//	public static bool ValidatePassword(string password, string correctHash)
//	{
//		return BCrypt.Verify(password, correctHash);
//	}
