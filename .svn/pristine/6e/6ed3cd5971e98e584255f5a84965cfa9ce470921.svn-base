using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
namespace LuyenThiHiep.Admin.Control
{
    public partial class uclTop : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadData();
            }
        }

        public void LoadData()
        {
            try
            {
                imgTopAvata.Attributes["style"] = "width:35px;height:35px;float:left;background-repeat: no-repeat;";
                tblUser user = (tblUser)Session["User"];
                if (user != null)
                {
                    lblTopRole.InnerText = user.Role;
                    lblTopName.InnerText = user.Name;
                    toplinkProfile.Attributes["href"] = "/Admin/DetailUser.aspx?UserId=" + user.ID;
                    if (user.Avata != null && !user.Avata.Equals(""))
	                {
                        imgTopAvata.ImageUrl = user.Avata;
                    }
                    else
                    {
                        imgTopAvata.ImageUrl = "/Content/AvataUser/User.png";
                    }
                }
                else
                {
                    lblTopRole.InnerText = "No User";
                    lblTopName.InnerText = "No Name";
                    imgTopAvata.ImageUrl = "/Content/AvataUser/User.png";
                }
            }
            catch (Exception)
            {
            }
        }

        protected void btnLogout(object sender, EventArgs e)
        {
            try
            {
                Session.Clear();
                Response.Redirect("/Login.aspx");
            }
            catch (Exception)
            {
            }
        }

        
    }
}