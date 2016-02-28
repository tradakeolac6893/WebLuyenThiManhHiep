using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
using System.IO;
namespace LuyenThiHiep.Admin.QLy_Class
{
    public partial class QL_Class : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        public void LoadData()
        {
            List<tblClass> list = null;
            
            list = new ClassDB().GetAllClass();
            repGetAllClass.DataSource = list;
            repGetAllClass.DataBind();

        }

       
       
    }
}