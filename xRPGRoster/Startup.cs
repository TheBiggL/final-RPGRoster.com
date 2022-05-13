using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RPGRoster.Startup))]
namespace RPGRoster
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
