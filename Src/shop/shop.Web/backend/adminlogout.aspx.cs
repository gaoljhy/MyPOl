using System;
using System.Web.UI;

using shop.Core.Business;
namespace shop.Web.backend
{
    public partial class adminlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Security.Logout();

                Response.Redirect("admincp.aspx");
            }
        }
    }
}
