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
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }

        public void loadData()
        {
            try
            {
                string userid = "";
                if (Request.QueryString["UserId"]  != null)
                {
                   userid = Request.QueryString["UserId"].ToString();
                }
                if (!userid.Equals(""))
                {
                    tblUser user = new UserDB().GetUserByID(userid);
                    if (user != null)
                    {
                        List<tblUser> list = new List<tblUser>();
                        list.Add(user);
                        rptDetailUser.DataSource = list;
                        rptDetailUser.DataBind();
                    }
                    else
                    {
                        Response.Redirect("/Admin/ErroPage.aspx");
                    }
                }
                else
                {
                    Response.Redirect("/Admin/ErroPage.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("/Admin/ErroPage.aspx");
            }
        }


    }
}