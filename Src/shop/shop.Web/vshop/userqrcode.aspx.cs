using System;
using System.Web.UI;

namespace shop.Web.vshop
{
    public partial class userqrcode : shop.Core.PageControler.WebPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.imQrCode.ImageUrl = "qrcode.aspx?u=" + this.LoginUser.uid;
            }
        }
    }
}