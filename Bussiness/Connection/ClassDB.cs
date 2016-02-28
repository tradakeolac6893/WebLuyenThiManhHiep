using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Database;
namespace Bussiness.Connection
{
    public class ClassDB
    {
        DatabaseDataContext dbcontext = new DatabaseDataContext();
        public tblClass GetClassById(string id)
        {
            try
            {
                var obj = from clas in dbcontext.tblClasses
                          where clas.Id.Equals(id)
                          select clas;
                return obj.SingleOrDefault<tblClass>();
            }
            catch (Exception)
            {
                return new tblClass();
            }
        }

        public List<tblClass> GetClassByStatus(bool stt)
        {
            try
            {
                var obj = from clas in dbcontext.tblClasses
                          where clas.Status==stt
                          select clas;
                return obj.ToList<tblClass>();
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<tblClass> GetAllClass()
        {
            try
            {
                var list = (from agent in dbcontext.tblClasses
                            select agent).ToList<tblClass>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblClass>();
            }
        }

        public List<tblClass> SearchClass(string name)
        {
            try
            {
                var list = (from clas in dbcontext.tblClasses
                            where (clas.Name.ToLower().Contains(name.ToLower()) || clas.Name == null)
                            select clas).ToList<tblClass>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblClass>();
            }
        }

        public bool DeleteClass(string id)
        {
            try
            {
                var obj = (from u in dbcontext.tblClasses
                           where u.Id.Equals(id)
                           select u).SingleOrDefault<tblClass>();
                dbcontext.tblClasses.DeleteOnSubmit(obj);
                dbcontext.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool UpdateClass(tblClass obj)
        {
            bool isOk = false;
            try
            {
                tblClass exist = dbcontext.tblClasses.SingleOrDefault(u => u.Id.Equals(obj.Id));
                if (exist != null)
                {
                    exist.Name = obj.Name;
                    exist.Status = obj.Status;
                    exist.Avata = obj.Avata;
                    dbcontext.SubmitChanges();
                    isOk = true;
                }
                return isOk;
            }
            catch (Exception)
            {
                return false;
            }
        }


        public bool InsertDB(tblClass obj)
        {
            try
            {
                dbcontext.tblClasses.InsertOnSubmit(obj);
                dbcontext.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
