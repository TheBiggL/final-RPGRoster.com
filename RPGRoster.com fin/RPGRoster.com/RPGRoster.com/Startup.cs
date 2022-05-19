using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RPGRoster.com.Startup))]
namespace RPGRoster.com
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
