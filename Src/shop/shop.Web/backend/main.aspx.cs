using System;
using System.Web.UI;
using shop.Core.Common;
using shop.Core.Business;
namespace shop.Web.backend
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            shop.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                SiteServerInfo = new ServerInfo();
                LoginMember m = shop.Core.Business.Security.Check();
                if (m != null)
                {
                    this.LoginAdminid = m.adminid;
                    this.ltlUsername.Text = m.username;
                }
            }
        }

        private ServerInfo _SiteServerInfo = null;
        public ServerInfo SiteServerInfo
        {
            get { return _SiteServerInfo; }
            set { _SiteServerInfo = value; }
        }

        private int _loginUid = 0;
        public int LoginAdminid
        {
            get { return _loginUid; }
            set { _loginUid = value; }
        }
    }
}
