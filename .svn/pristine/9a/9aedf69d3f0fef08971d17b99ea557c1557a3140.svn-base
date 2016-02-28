using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Database;
namespace Bussiness.Connection
{
    public class UserDB
    {
        DatabaseDataContext dbContext = new DatabaseDataContext();
        #region các hàm cơ bản

        #region lấy toàn bộ user ticketing
        public List<tblUser> GetAllUser()
        {
            try
            {
                var list = from user in dbContext.tblUsers
                           select user;
                return list.ToList<tblUser>();

            }
            catch (Exception)
            {
                return new List<tblUser>();
            }
        }
        #endregion

        public List<tblUser> GetByPage(tblUser obj,string search, int pageSize, int pageNum)
        {
            List<tblUser> listUser = null;
            switch (search)
            {
                case "GetAllUser":
                      listUser = GetAllUser().Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                      break;
                case "GetUserByActive":
                      listUser = (from a in dbContext.tblUsers
                                  where a.Active == obj.Active
                                  select a).ToList<tblUser>().Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                      break;
                case "GetUserBySchool":
                      listUser = (from a in dbContext.tblUsers
                                  where a.School.Equals(obj.School)
                                  select a).ToList<tblUser>().Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                      break;
                case "GetUserByPhone":
                      listUser = (from a in dbContext.tblUsers
                                  where a.Phone.Equals(obj.Phone)
                                  select a).ToList<tblUser>().Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                      break;
                case "GetUserByName":
                      listUser = (from a in dbContext.tblUsers
                                  where a.Name.Equals(obj.Name)
                                  select a).ToList<tblUser>().Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                      break;
            }
            return listUser;
        }

        public List<tblUser> GetListPage(int pageSize, int pageNum)
        {
            try
            {
                List<tblUser> temp = GetAllUser();
                var list = temp.Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
                return list;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        #region lấy thông tin user để dăng nhập
        public tblUser GetUser(string user, string pass)
        {
            try
            {
                var list = dbContext.tblUsers.SingleOrDefault(u => u.Username.Equals(user) && u.Pass == pass);
                return list;
            }
            catch (Exception)
            {
                return new tblUser();
            }
        }

        public tblUser GetUserByID(string id)
        {
            try
            {
                var list = dbContext.tblUsers.SingleOrDefault(u => u.ID.Equals(id));
                return list;
            }
            catch (Exception)
            {
                return new tblUser();
            }
        }

        public List<tblUser> GetByPage(int pageSize, int pageNum)
        {
            List<tblUser> temp = GetAllUser();
            var list = temp.Skip(pageSize * (pageNum - 1)).Take(pageSize).ToList();
            return list;
        }

        public List<tblUser> SearchUser(string name, string school, string classname)
        {
            try
            {
                var list = (from user in dbContext.tblUsers
                            where (user.Name.ToLower().Contains(name) || user.Name == null)
                            && (user.School.ToLower().Contains(school) || user.School == null)
                            && (user.Class.ToLower().Contains(classname) || user.Class == null)
                            select user).ToList<tblUser>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblUser>();
            }
        }

        public List<tblUser> SearchUserActive(bool active)
        {
            try
            {
                var list = (from user in dbContext.tblUsers
                            where user.Active.Equals(active)
                            select user).ToList<tblUser>();
                return list;
            }
            catch (Exception)
            {
                return new List<tblUser>();
            }
        }

        public bool DeleteUser(string id)
        {
            try
            {
                var obj = (from u in dbContext.tblUsers
                           where u.ID.Equals(id)
                           select u).SingleOrDefault<tblUser>();
                dbContext.tblUsers.DeleteOnSubmit(obj);
                dbContext.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool UpdateUser(tblUser obj)
        {
            bool isOk = false;
            try
            {
                tblUser exist = dbContext.tblUsers.SingleOrDefault(u => u.ID.Equals(obj.ID));
                if (exist != null)
                {
                    exist.Name = string.IsNullOrEmpty(obj.Name) ? exist.Name : obj.Name;
                    exist.Username = string.IsNullOrEmpty(obj.Username) ? exist.Username : obj.Username;
                    exist.Pass = string.IsNullOrEmpty(obj.Pass) ? exist.Pass : obj.Pass;
                    exist.Email = string.IsNullOrEmpty(obj.Email) ? exist.Email : obj.Email;
                    exist.Avata = string.IsNullOrEmpty(obj.Avata) ? exist.Avata : obj.Avata;
                    exist.Class = string.IsNullOrEmpty(obj.Class) ? exist.Class : obj.Class;
                    exist.Address = string.IsNullOrEmpty(obj.Address) ? exist.Address : obj.Address;
                    exist.Birthday = !obj.Birthday.HasValue ? exist.Birthday : obj.Birthday;
                    exist.Role = string.IsNullOrEmpty(obj.Role) ? exist.Role : obj.Role;
                    exist.Phone = string.IsNullOrEmpty(obj.Phone) ? exist.Phone : obj.Phone;
                    exist.School = string.IsNullOrEmpty(obj.School) ? exist.School : obj.School;
                    exist.IPLastLogin = string.IsNullOrEmpty(obj.IPLastLogin) ? exist.IPLastLogin : obj.IPLastLogin;
                    exist.Gender = !obj.Gender.HasValue ? true : obj.Gender;
                    exist.Active = !obj.Active.HasValue ? true : obj.Active;
                    dbContext.SubmitChanges();
                    isOk = true;
                }
                return isOk;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public bool InsertDB(tblUser obj)
        {
            try
            {
                dbContext.tblUsers.InsertOnSubmit(obj);
                dbContext.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        #endregion

        #endregion

    }
}
