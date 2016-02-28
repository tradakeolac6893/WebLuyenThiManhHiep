using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
namespace LuyenThiHiep
{
    public partial class ProgramClass : System.Web.UI.Page
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
            try
            {
                List<tblClass> list = null;
                list = new ClassDB().GetClassByStatus(true);
                repGetAllClass.DataSource = list;
                repGetAllClass.DataBind();
            }
            catch (Exception)
            {
            }
        }
    }
}