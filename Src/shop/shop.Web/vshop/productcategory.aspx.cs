using System;
using System.Collections.Generic;

using shop.Core.Model;
namespace shop.Web.vshop
{
    public partial class productcategory : shop.Core.PageControler.WebPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddProductToList(List<ProductModel> list , List<ProductModel> addlist)
        {
            foreach (ProductModel pm in addlist)
            {
                if (list.Contains(pm)) continue;

                list.Add(pm);
            }
        }
    }
}