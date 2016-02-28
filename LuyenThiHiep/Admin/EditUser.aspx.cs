﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
using Bussiness.Ultility;
using System.IO;
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
                if (Request.QueryString["UserId"] != null)
                {
                    userid = Request.QueryString["UserId"].ToString();
                }
                if (!userid.Equals(""))
                {
                    tblUser user = new UserDB().GetUserByID(userid);
                    if (user != null)
                    {
                        txtName.Value = user.Name;
                        txtClassName.Value = user.Class;
                        txtPhone.Value = user.Phone;
                        txtEmail.Value = user.Email;
                        txtUsername.Value = user.Username;
                        txtSchool.Value = user.School;
                        rboNam.Checked = true;
                        if (user.Gender != true)
                        {
                            rboNu.Checked = true;
                            rboNam.Checked = false;
                        }
                        selectRole.Items.FindByValue("ADMIN").Selected = user.Role.Equals("ADMIN") ? true : false;
                        selectRole.Items.FindByValue("USER").Selected = user.Role.Equals("USER") ? true : false;
                        avataEdit.Src= string.IsNullOrEmpty(user.Avata)? "/Content/AvataUser/User.png" : avataEdit.Src = user.Avata;
                        
                        cbkActive.Attributes["checked"]= user.Active == true ? "checked" : "";
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

        protected void btnEditClick(object sender, EventArgs e)
        {
            try
            {
                tblUser user = new tblUser();
                user.ID =Int32.Parse(Request.QueryString["UserId"].ToString());
                user.Name = txtName.Value;
                user.Class = txtClassName.Value;
                user.School = txtSchool.Value;
                user.Phone = txtPhone.Value;
                user.Email = txtEmail.Value;
                user.Gender = rboNu.Checked ? false : true;
                user.Role = selectRole.Items.FindByValue("ADMIN").Selected ? "ADMIN" : "USER";
                user.Active = cbkActive.Checked ? true : false;
                if (!txtPass.Value.Equals(""))
                {
                    user.Pass = MD5.EncPwd(txtPass.Value.ToString());
                }
                if (fleUpload.HasFile)
	            {
                    string img = SaveAvata(fleUpload.PostedFile)?"~/Content/AvataUser/" + fleUpload.PostedFile.FileName : "" ;
                    if (!string.IsNullOrEmpty(img))
                    {
                        user.Avata = img;
                    }
	            }

                bool check = new UserDB().UpdateUser(user);
                if (check)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thành công')", true);
                }else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Chỉnh Sửa thông tin thất bại')", true);
                }
            }
            catch (Exception ex)
            {
            }
        }

        bool SaveAvata(HttpPostedFile file)
        {
            try
            {
                string inputfileName = file.FileName;
                string filemap="~/Content/AvataUser/" + inputfileName;
                string[] formats = new string[] { ".jpg", ".png", ".gif", ".jpeg" }; // add more if u like...

                foreach (var item in formats)
                {
                    if (file.FileName.Contains(item))
                    {
                        return true;
                    }
                }
                if (!File.Exists(filemap))
                {
                    file.SaveAs(Server.MapPath("~/Content/AvataUser/") + inputfileName);
                    return true;
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Avata này đã tồn tại xin hãy chọn ảnh khác')", true);
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