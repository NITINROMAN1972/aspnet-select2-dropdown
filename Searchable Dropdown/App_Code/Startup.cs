using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Searchable_Dropdown.Startup))]
namespace Searchable_Dropdown
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
