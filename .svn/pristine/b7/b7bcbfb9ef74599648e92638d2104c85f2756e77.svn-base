using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Ultility;
using Bussiness.Connection;
namespace LuyenThiHiep
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tblUser user = (tblUser)Session["User"];
                if (user != null)
                {
                    //Response.Redirect("/Admin/Default.aspx");
                }
            }
        }

        public void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                tblUser user = (tblUser)Session["User"];
                if (user != null)
                {
                    Response.Redirect("/Admin/Default.aspx");
                }
                else
                {
                    tblUser use = new UserDB().GetUser(txtUserName.Value, MD5.EncPwd(txtPass.Value.ToString()));
                    if (use != null)
                    {
                        Session.Remove("User");
                        Session["User"] = use;
                        Response.Redirect(use.Role.ToLower().Equals("admin") ? "/Admin/Default.aspx" : "Default.aspx");
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        public void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("/UserRegister.aspx",false);
            }
            catch (Exception ex)
            {
            }
        }
    }
}