using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
namespace LuyenThiHiep.Admin
{
    public partial class DetailUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUser();
            }
        }
        public void LoadUser()
        {
            try
            {
                string userId = "";
                if (Request.QueryString["UserId"] != null)
                {
                    userId = Request.QueryString["UserId"].ToString();
                }
                if (!userId.Equals(""))
                {
                    tblUser user = new UserDB().GetUserByID(userId);
                    if (user != null)
                    {
                        List<tblUser> list = new List<tblUser>();
                        list.Add(user);
                        rptDetailUser.DataSource = list;
                        rptDetailUser.DataBind();
                    }
                }
                else
                {
                    Response.Redirect("/Admin/ErroPage.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/Admin/ErroPage.aspx");
            }
        }
    }
}