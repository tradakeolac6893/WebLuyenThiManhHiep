using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Database;
namespace Bussiness.Connection
{
    public class NewsDB
    {
        DatabaseDataContext dbContext = new DatabaseDataContext();
        public List<tblNew> GetAllNews()
        {
            try
            {
                var list = (from n in dbContext.tblNews
                            select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblNew>();
            }
        }

        //public List<tblNew> GetAllNewsByCateAndReGion(string cateid, string regionid)
        //{
        //    try
        //    {
        //        List<tblNew> list = new List<tblNew>();
        //        if (string.IsNullOrEmpty(regionid) || string.IsNullOrWhiteSpace(regionid))
        //        {
        //            list = (from n in dbContext.tblNews
        //                    where n.CateID.Equals(cateid)
        //                    select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
        //        }
        //        else
        //        {
        //            list = (from n in dbContext.tblNews
        //                    where n.CateID.Equals(cateid) & n.RegionID.Equals(regionid)
        //                    select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
        //        }

        //        return list;
        //    }
        //    catch (Exception)
        //    {
        //        return new List<tblNew>();
        //    }
        //}

        public List<tblNew> GetByPage(List<tblNew> listNews, int pageSize, int pageNum)
        {
            List<tblNew> temp = listNews;
            var list = temp.Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
            return list;
        }

        public List<tblNew> GetNewsByPage(int pageSize, int pageNum)
        {
            try
            {
                var list = (from n in dbContext.tblNews
                            select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblNew>();
            }
        }

        //public List<tblNew> SearchNews(string content, string region)
        //{
        //    try
        //    {
        //        var list = (from n in dbContext.tblNews
        //                    where (n.Title.Contains(content) || n.Description.Contains(content) || n.Note.Contains(content)) && n.RegionID == region
        //                    select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
        //        return list;
        //    }
        //    catch (Exception)
        //    {
        //        return new List<tblNew>();
        //    }
        //}

        //public List<tblNew> SearchAllNews(string content, string region1, string region2)
        //{
        //    try
        //    {
        //        var list = (from n in dbContext.tblNews
        //                    where (n.Title.Contains(content) || n.Description.Contains(content) || n.Note.Contains(content))
        //                    && (n.RegionID.Equals(region1) || n.RegionID.Equals(region2))
        //                    select n).OrderByDescending(n => n.CreateDate).ToList<tblNew>();
        //        return list;
        //    }
        //    catch (Exception)
        //    {
        //        return new List<tblNew>();
        //    }
        //}

        public tblNew GetNewsById(int id)
        {
            try
            {
                return dbContext.tblNews.SingleOrDefault<tblNew>(u => u.Id.Equals(id));
            }
            catch (Exception)
            {
                return new tblNew();
            }
        }
        public bool InsertNews(tblNew obj)
        {
            try
            {
                if (obj != null)
                {
                    dbContext.tblNews.InsertOnSubmit(obj);
                    dbContext.SubmitChanges();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool EditNews(tblNew obj)
        {
            bool isOk = false;
            try
            {
                tblNew exist = dbContext.tblNews.SingleOrDefault(a => a.Id == obj.Id);
                if (exist != null)
                {
                    exist.Title = obj.Title;
                    exist.UserId = obj.UserId;
                    exist.CateID = obj.CateID;
                    exist.Contents = obj.Contents;
                    exist.Statust = obj.Statust;
                    exist.Alias = obj.Alias;
                    exist.LinkYoutube = obj.LinkYoutube;
                    exist.CateID = obj.CateID;
                    exist.Type = obj.Type;
                    exist.CreateDate = obj.CreateDate;
                    dbContext.SubmitChanges();
                    isOk = true;
                }
                return true;
            }
            catch (Exception)
            {
                return isOk;
            }
        }

        public bool DeleteNews(int id)
        {
            bool isOk = false;
            try
            {
                var exist = dbContext.tblNews.SingleOrDefault(a => a.Id == id);
                if (exist != null)
                {
                    dbContext.tblNews.DeleteOnSubmit(exist);
                    dbContext.SubmitChanges();
                    isOk = true;
                }
                else
                {
                    isOk = false;
                }
            }
            catch
            {
                isOk = false;
            }
            return isOk;
        }
    }
}
