using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TermProjectNew.Startup))]
namespace TermProjectNew
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
