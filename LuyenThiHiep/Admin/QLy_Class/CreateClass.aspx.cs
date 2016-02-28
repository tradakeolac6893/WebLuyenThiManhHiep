using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
using Bussiness.Ultility;
using System.IO;
namespace LuyenThiHiep.Admin.QLy_Class
{
    public partial class CreateClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateClass_Click(object sender, EventArgs e)
        {
            try
            {
                tblClass clas = new tblClass();
                clas.Name = txtClassName.Value;
                clas.Id = new Locdau().LocDauChuoi(txtClassName.Value).ToUpper();
                clas.Status = cbkActive.Checked ? true : false;
                if (fleUpload.HasFile)
                {
                    string img = SaveAvata(fleUpload.PostedFile) ? "/Content/Image_Class/" + fleUpload.PostedFile.FileName : "";
                    if (!img.Equals(""))
                    {
                        clas.Avata = img;
                    }
                }
                bool check = new ClassDB().InsertDB(clas);
                if (check)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm mới thông tin thành công')", true);
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm mới thông tin thất bại')", true);
                }
            }
            catch (Exception)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thất bại')", true);

            }
        }

        bool SaveAvata(HttpPostedFile file)
        {
            try
            {
                string inputfileName = file.FileName;
                string filemap = "/Content/Image_Class/" + inputfileName;
                string[] formats = new string[] { ".jpg", ".png", ".gif", ".jpeg" }; // add more if u like...
                bool flat = false;
                foreach (var item in formats)
                {
                    if (file.FileName.Contains(item))
                    {
                        flat = true;
                    }
                }
                if (flat)
                {
                    if (!File.Exists(filemap))
                    {
                        file.SaveAs(Server.MapPath("/Content/Image_Class/") + inputfileName);
                        return true;
                    }
                    else
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Avata này đã tồn tại xin hãy chọn ảnh khác')", true);
                        return false;
                    }
                }
                else
                {
                    return false;
                }


            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}