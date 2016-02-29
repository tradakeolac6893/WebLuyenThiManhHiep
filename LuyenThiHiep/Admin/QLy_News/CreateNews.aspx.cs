using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CKEditor;
using CKFinder;
namespace LuyenThiHiep.Admin.QLy_News
{
    public partial class CreateNews : System.Web.UI.Page
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
                CKEditorControl1.Language = "vi";
                CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
                _FileBrowser.BasePath = "/ckfinder/";
                _FileBrowser.SetupCKEditor(CKEditorControl1);
            }
            catch (Exception)
            {

            }
        }
    }
}