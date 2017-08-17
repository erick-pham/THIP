using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(THIP.Startup))]
namespace THIP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
