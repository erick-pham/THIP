using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using My_Library;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.Collections;
using System.Web.Script.Serialization;

namespace THAIHOA_FMS
{
    public partial class Customer : System.Web.UI.Page
    {
        Database db = new Database();
        DataTable chiphi_KH = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int now_year = DateTime.Now.Year;
            String idKH = "A101";
            //String getStr = "select * from chiphi_kh where idkh='" + idKH + "' and nam=" + now_year;
            //chiphi_KH = db.getData(getStr);
            //DataView dv = chiphi_KH.DefaultView;
            //dv.Sort = "thang ASC";
            //GridView1.DataSource = dv;
            //GridView1.DataBind();

        }
        [WebMethod]
        public static string GetChartData(string MeterName)
        {
            //string json=DateTime.Now.ToLongTimeString();
            return "5;4;1;0;3;4;5;6;7;4;6;0";
        }
    }
}
