using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Web;
using System.IO;
using System.Net;
using System.Net.Sockets;

namespace Bussiness.Ultility
{
    public class Utilities
    {
        public static object HttpContext { get; private set; }

        public static DateTime GetDate(string date, string format)
        {
            date = date.Replace("-", "/");
            DateTime dt = DateTime.Now;
            CultureInfo provider = CultureInfo.InvariantCulture;
            DateTime.TryParseExact(date, format, provider, DateTimeStyles.None, out dt);
            return dt;
        }

        public static string GetLocalIPAddress()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    return ip.ToString();
                }
            }
            throw new Exception("");
        }
        public static bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }
        public static DateTime GetDateByDayAndTime(string day, string time)
        {
            day = day.Replace("-", "/");
            DateTime date = DateTime.Now;
            CultureInfo provider = CultureInfo.InvariantCulture;
            if (time.Length < 4)
            {
                time = Convert.ToInt32(time).ToString("0000");
            }
            string format = "yyyyMMdd HHmm";
            if (!DateTime.TryParseExact(day + " " + time, format, provider, DateTimeStyles.None, out date))
            {
                date = DateTime.Now;
            }
            return date;
        }

        public static DateTime GetDate(string date, string time, string format)
        {
            DateTime dt = DateTime.Now;
            CultureInfo provider = CultureInfo.InvariantCulture;
            if (time.Length < 4)
            {
                time = Convert.ToInt32(time).ToString("0000");
            }

            if (!DateTime.TryParseExact(date + " " + time, format, provider, DateTimeStyles.None, out dt))
            {
                dt = DateTime.Now;
            }
            return dt;
        }

        public static bool CheckValidDate(string day, string format)
        {
            day = day.Replace("-", "/");
            DateTime date = DateTime.Now;
            CultureInfo provider = CultureInfo.InvariantCulture;
            return DateTime.TryParseExact(day, format, provider, DateTimeStyles.None, out date);
        }

        public static string ConvertEnglishDateTime(DateTime input)
        {
            string month = "";
            switch (input.Month)
            {
                case 1:
                    month = "JAN";
                    break;
                case 2:
                    month = "FEB";
                    break;
                case 3:
                    month = "MAR";
                    break;
                case 4:
                    month = "APR";
                    break;
                case 5:
                    month = "MAY";
                    break;
                case 6:
                    month = "JUN";
                    break;
                case 7:
                    month = "JUL";
                    break;
                case 8:
                    month = "AUG";
                    break;
                case 9:
                    month = "SEP";
                    break;
                case 10:
                    month = "OCT";
                    break;
                case 11:
                    month = "NOV";
                    break;
                case 12:
                    month = "DEC";
                    break;
                default:
                    break;
            }

            return input.Day.ToString("00") + month + input.Year.ToString().Substring(2, 2);
        }

        public static string GetRandomForToNumber(int codeCount)
        {
            string allChar = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
            List<string> allCharArray = allChar.Split(',').ToList();
            string randomCode = "";
            int temp = -1;
            Random rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(36);
                if (temp != -1 && temp == t)
                {
                    return GetRandomForToNumber(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        public static string ConvertToUnSignString(string input)
        {
            const string FindText = "áàảãạâấầẩẫậăắằẳẵặđéèẻẽẹêếềểễệíìỉĩịóòỏõọôốồổỗộơớờởỡợúùủũụưứừửữựýỳỷỹỵÁÀẢÃẠÂẤẦẨẪẬĂẮẰẲẴẶĐÉÈẺẼẸÊẾỀỂỄỆÍÌỈĨỊÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢÚÙỦŨỤƯỨỪỬỮỰÝỲỶỸỴ";
            const string ReplText = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyyAAAAAAAAAAAAAAAAADEEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOOOUUUUUUUUUUUYYYYY";
            int index = -1;
            char[] arrChar = FindText.ToCharArray();
            while ((index = input.IndexOfAny(arrChar)) != -1)
            {
                int index2 = FindText.IndexOf(input[index]);
                input = input.Replace(input[index], ReplText[index2]);
            }
            return input.Replace("\'", "");
        }

        public static string GetAlias(string input)
        {
            return ConvertToUnSignString(input.Trim()).Replace(" ", "-").Replace("/", "-").Replace("&", "va");
        }

        public static string SaveFile(string filename, string input, bool overwrite)
        {
            string status = "Failed";
            try
            {
                FileInfo file = new FileInfo(filename);
                System.IO.FileStream wFile;
                wFile = new FileStream(filename, FileMode.Create);
                byte[] data = Encoding.UTF8.GetBytes(input);
                wFile.Write(data, 0, data.Length);
                wFile.Close();
                status = "Success";
            }
            catch (IOException ex)
            {
            }
            return status;
        }

        public static string SaveFile(string filename, string input)
        {
            string status = "Failed";
            try
            {
                FileInfo file = new FileInfo(filename);
                System.IO.FileStream wFile;
                wFile = new FileStream(filename, FileMode.Append);
                byte[] data = Encoding.UTF8.GetBytes(input);
                wFile.Write(data, 0, data.Length);
                wFile.Close();
                status = "Success";
            }
            catch (IOException ex)
            {
            }
            return status;
        }


        public static double ConvertStringToDouble(string value)
        {
            try
            {
                CultureInfo culture = CultureInfo.CreateSpecificCulture("es-ES");
                return double.Parse(value, culture);
            }
            catch { return 0; }
        }

        //public static int IntegerForNull(object x)
        //{
        //    try
        //    {
        //        if (x == null)
        //        {
        //            return 0;
        //        }
        //        if (x is DBNull)
        //        {
        //            return 0;
        //        }
        //        return x.ToString() == "" ? 0 : int.Parse(x.ToString());
        //    }
        //    catch (Exception)
        //    {
        //        return 0;
        //    }
        //}

        public static int IntegerForNull(object x)
        {
            try
            {
                return (int)DoubleForNull(x);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public static string StringForNull(object x)
        {
            try
            {
                if (x is DBNull)
                {
                    return "";
                }
                return x == null ? "" : x.ToString().Trim();
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static double DoubleForNull(object x)
        {
            try
            {
                if (x == null)
                {
                    return 0;
                }
                if (x is DBNull)
                {
                    return 0;
                }
                return x.ToString() == "" ? 0 : Double.Parse(x.ToString(), CultureInfo.InvariantCulture);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public static string GetScriptInitBalance()
        {
            string script = "function InitBalance() {"
                                + "$('#imgLoadingBalance').show();"
                                + "$.ajax({"
                                    + "type: 'POST',"
                                    + "contentType: 'application/json; charset=utf-8',"
                                    + "url: '/Controls/GetBalance.asmx/GetBalanceAmount',"
                                    + "data: '',"
                                    + "dataType: 'json',"
                                    + "success: function(data) {"
                                        + "$('#lblBalance').text(data.d);"
                                        + "$('#imgLoadingBalance').hide();"
                                    + "}"
                                + "}); "
                            + "}"
                            + "$(function () {setInterval('InitBalance()', 3000);});";
            return script;
        }
    }
}
