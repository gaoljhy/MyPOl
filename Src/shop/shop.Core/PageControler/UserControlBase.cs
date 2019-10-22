using shop.Core.Factory;
using shop.Core.Model;
namespace shop.Core.PageControler
{
    public class UserControlBase : System.Web.UI.UserControl
    {
        public string getadlinks(int linkid)
        {
            LinkModel l = LinkFactory.Get(linkid);
            if (l != null)
            {
                return string.Format("<a href='{0}' target='_blank'><img src='{1}' width='1000' height='80' /></a>", l.linkurl, l.includepic);
            }

            return string.Empty;
        }
    }
}
