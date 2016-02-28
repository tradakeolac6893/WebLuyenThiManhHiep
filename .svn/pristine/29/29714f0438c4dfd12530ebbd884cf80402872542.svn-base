using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenThiHiep.Admin
{
    public partial class ErroPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }
        protected void Back_Page(object sender, EventArgs e)
        {
            try
            {
                 string prevPage = String.Empty;
                 prevPage = Request.UrlReferrer.ToString();
                 Response.Redirect(prevPage);
            }
            catch (Exception)
            {
            }
        }
    }
}