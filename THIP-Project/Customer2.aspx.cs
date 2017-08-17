using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using My_Library;
using System.Data;
using System.Web.Services;
using System.Collections;

namespace THAIHOA_FMS
{
    public partial class Customer2 : System.Web.UI.Page
    {
        public String id_KH;
        public String getStr;
        public Database db = new Database();
        //public static DataView dv = new DataView();
        public static DataTable chiphi_KH = new DataTable();

        public int cost_month = DateTime.Now.Month;
        public int cost_year = DateTime.Now.Year;
        public String dinhky = "Chưa xác nhận";
        public String phatsinh = "Chưa xác nhận";
        public String tongtien = "Chưa xác nhận";
        public String trangthai = "Chưa xác nhận";

        protected void Page_Load(object sender, EventArgs e)
        {
            id_KH = "TH_002";
            getStr = "select * from exp_cus where id_kh='" + id_KH + "'";
            chiphi_KH = db.getData(getStr);


            init();

            // dv = chiphi_KH.DefaultView;
            //chiphi_KH = dv.ToTable();
            GridView1.DataSource = chiphi_KH.DefaultView;
            GridView1.DataBind();
        }
        protected void init()
        {

            if (cost_month == 1)
            {
                cost_month = 12;
                cost_year = cost_year - 1;
            }
            else
            {
                cost_month = cost_month - 1;
            }
            DataTable dt = new DataTable();
            dt = chiphi_KH.Copy();
            DataView dv = dt.DefaultView;
            //dv.RowFilter = "thang=" + cost_month + " and nam=" + cost_year;
            if (dv != null && dv.Count > 0)
            {
                //rv_kh = dv[0];
                //DataRow dr = dv[0].Row;
                dinhky = dv[0].Row["exp_1"].ToString();
                phatsinh = dv[0].Row["exp_2"].ToString();
                tongtien = dv[0].Row["total"].ToString();
                trangthai = dv[0].Row["stat"].ToString();
            }
        }
        [WebMethod]
        public static Array GetChart()
        {
            //var data = new { Greeting = "Hello", Name = firstName + " " + lastName };
            // We are using an anonymous object above, but we could use a typed one too (SayHello class is defined below)
            // SayHello data = new SayHello { Greeting = "Hello", Name = firstName + " " + lastName };
            //System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
            //return js.Serialize(data);
            DataView dv = chiphi_KH.DefaultView;
            dv.Sort = "nam DESC, thang DESC";
            DataTable dt = dv.ToTable();

            ArrayList arrChart = new ArrayList();
            ArrayList arrCategories = new ArrayList();
            ArrayList arrChartPowerData1 = new ArrayList();
            ArrayList arrChartPowerData2 = new ArrayList();
            ArrayList arrChartWaterData1 = new ArrayList();
            ArrayList arrChartWaterData2 = new ArrayList();
            ArrayList arrChartWasteData1 = new ArrayList();
            ArrayList arrChartWasteData2 = new ArrayList();
            ArrayList arrChartCodData = new ArrayList();

            for (int i = 0; i < 6; i++)
            {
                arrCategories.Add(dt.Rows[i]["thang"].ToString() + "/" + dt.Rows[i]["nam"].ToString());
                arrChartPowerData1.Add(dt.Rows[i]["elec"]);
                arrChartPowerData2.Add(dt.Rows[i]["elec_"]);
                arrChartWaterData1.Add(dt.Rows[i]["water"]);
                arrChartWaterData2.Add(dt.Rows[i]["water_"]);
                arrChartWasteData1.Add(dt.Rows[i]["waste"]);
                arrChartWasteData2.Add(dt.Rows[i]["waste_"]);
                arrChartCodData.Add(dt.Rows[i]["waste"]);
            }
            arrCategories.Reverse();
            arrChartPowerData1.Reverse();
            arrChartPowerData2.Reverse();
            arrChartWaterData1.Reverse();
            arrChartWaterData2.Reverse();
            arrChartWasteData1.Reverse();
            arrChartWasteData2.Reverse();
            arrChartCodData.Reverse();

            arrChart.Add(arrCategories);
            arrChart.Add(arrChartPowerData1);
            arrChart.Add(arrChartPowerData2);
            arrChart.Add(arrChartWaterData1);
            arrChart.Add(arrChartWaterData2);
            arrChart.Add(arrChartWasteData1);
            arrChart.Add(arrChartWasteData2);
            return arrChart.ToArray();
        }

        [WebMethod]
        public string GetChartPeriod()
        {
            //var List= new List<>();
            return "5;4;1;0;3;4;5;6;7;4;6;0";
        }
    }
}