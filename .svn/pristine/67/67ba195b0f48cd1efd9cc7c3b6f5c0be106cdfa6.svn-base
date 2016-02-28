using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using Bussiness.Connection;
using System.Web.UI.HtmlControls;
namespace LuyenThiHiep.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                Loaddata();
            }
        }
        public void Loaddata()
        {
            
            try
            {
                List<tblUser> list = null;
                //int pageNum = Int32.Parse(string.IsNullOrEmpty(Request.QueryString["page"]) ? "0" : Request.QueryString["page"].ToString());
                list = new UserDB().GetAllUser();
                if (list.Count != 0)
                {
                    int iRowCount = list.Count;
                    const int iPageSize = 2;
                    const int iItemInPage = 5;
                    int iCurrentPage = Int32.Parse(string.IsNullOrEmpty(Request.QueryString["page"]) ? "1" : Request.QueryString["page"].ToString());

                    repGetAllUser.DataSource = new UserDB().GetByPage(iPageSize, iCurrentPage);
                    repGetAllUser.DataBind();
                    CreateListPage(iRowCount, iPageSize, iCurrentPage, iItemInPage, listpage);
                }
                
            }
            catch (Exception)
            {
            }
        }

        public void CreateListPage(double iRowCount, double iPageSize, int iCurrentPage, int iItemInPage, HtmlGenericControl myDiv)
        {
            try
            {
                myDiv.InnerHtml = string.Empty;
                string str = "";
                int next = iCurrentPage + 1;
                int back = iCurrentPage - 1;
                int fist = 1;
                double totalPage = Math.Ceiling(iRowCount / iPageSize);
                double last = totalPage;
                int k = 0;
                if (iCurrentPage > 1)
                {
                    str += string.Format("<li><a href =\"?page={0}\"><span aria-hidden=\"true\">" + "FIRST" + "</span></ a ></li>", fist);
                    str += string.Format("<li><a href =\"?page={0}\"><span aria-hidden=\"true\">" + "Back" + "</span></a></li>", back);
                }

                if (iCurrentPage + iItemInPage < totalPage)
                {
                    k = iCurrentPage;
                    for (int i = iCurrentPage; i < iCurrentPage + iItemInPage; i++)
                    {
                        k++;
                        str += string.Format("<li><a href=\"?page={0}\"><span aria-hidden=\"true\">" + k + "</span></a></li>", k);
                    }
                    str += string.Format("<li><a href=\"?page={0}\"><span aria-hidden=\"true\">...</span></a></li>", k);
                }
                else
                {
                    for (int i = iCurrentPage; i < totalPage; i++)
                    {
                        k++;
                        str += string.Format("<li><a href=\"?page={0}\"><span aria-hidden=\"true\">" + k + "</span></a></li>", k);
                    }
                }
                
                if (iCurrentPage < totalPage)
                {
                    str += string.Format("<li><a href =\"?page ={0}\"><span aria-hidden=\"true\">" + "Next" + "</span></a></li> ", next);
                    str += string.Format("<li><a href = \" ?page={0}\"><span aria-hidden=\"true\">" + "LAST" + "</span></a></li>", last);
                }

                myDiv.InnerHtml = totalPage == 1 ? string.Empty : str;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}