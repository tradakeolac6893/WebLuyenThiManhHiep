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
    public partial class EditQLClass : System.Web.UI.Page
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

            selectRole.DataSource = list;
            selectRole.DataTextField = "Name";
            selectRole.DataValueField = "Id";
            selectRole.DataBind();

        }

        public void ChangeItem(object sender, EventArgs e)
        {
            try
            {
                string id = selectRole.SelectedIndex.ToString();
            }
            catch (Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Có vấn đề từ phía sever :')" + ex, true);
            }
        }

        protected void selectRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string id = selectRole.SelectedValue.ToString();
                tblClass clas = new ClassDB().GetClassById(id);
                txtClassName.Value = clas.Name;
                avataEdit.Src = string.IsNullOrEmpty(clas.Avata) ? "/Content/Image_Class/lophoc4.jpg" : avataEdit.Src = clas.Avata;
                cbkActive.Checked = clas.Status == true ? true : false;
            }
            catch (Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Có vấn đề từ phía sever :')" + ex, true);
            }
        }


        bool SaveAvata(HttpPostedFile file)
        {
            try
            {
                string inputfileName = file.FileName;
                string filemap = "~/Content/Image_Class/" + inputfileName;
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
                        file.SaveAs(Server.MapPath("~/Content/Image_Class/") + inputfileName);
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

        protected void btnEditClass_Click(object sender, EventArgs e)
        {
            try
            {
                tblClass clas = new tblClass();
                clas.Id = selectRole.SelectedValue.ToString();
                clas.Name = txtClassName.Value;
                clas.Status = cbkActive.Checked ? true : false;
                if (fleUpload.HasFile)
                {
                    string img = SaveAvata(fleUpload.PostedFile) ? "~/Content/Image_Class/" + fleUpload.PostedFile.FileName : "";
                    if (!string.IsNullOrEmpty(img))
                    {
                        clas.Avata = img;
                    }
                }
                bool check = new ClassDB().UpdateClass(clas);
                if (check)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thành công')", true);
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thất bại')", true);
                }
            }
            catch (Exception)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thất bại')", true);

            }
        }
    }
}