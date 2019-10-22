using System;
using System.Web.UI;

using shop.Core.Common;
using shop.Core.Model;
using shop.Core.Factory;
namespace shop.Web.vshop
{
    public partial class productshow : shop.Core.PageControler.WebPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = HYRequest.GetQueryInt("id", 0);
                if (id == 0)
                    Response.Redirect("index.aspx");

                this.productinfo = ProductFactory.Get(id);


            }
        }

        private ProductModel _productinfo = null;
        public ProductModel productinfo
        {
            get { return _productinfo; }
            set { _productinfo = value; }
        }

        public bool IsFav
        {
            get
            {
                int id = HYRequest.GetQueryInt("id", 0);
                return FavoriteFactory.IsFavorite(this.LoginUser.uid, id);
            }
        }
    }
}