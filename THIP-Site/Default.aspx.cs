using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ConnectDB;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;

public partial class Default: Page
{

    Database db = new Database();
    DataTable chiphi_KH = new DataTable();
    protected String _hello;
    protected double _index = 8.8;
    protected double[] Powerdata = { 7.0, 6.9, 9.5, 14.5, 2.2, 4.5, 5.2, 3.1, 2, 4, 6, 8 };
    protected void Page_Load(object sender, EventArgs e)
    {

        //int now_year = DateTime.Now.Year;
        //String idKH = "A101";
        //String getStr = "select * from chiphi_kh where idkh='" + idKH + "' and nam=" + now_year;
        //chiphi_KH = db.getData(getStr);
        //DataView dv = chiphi_KH.DefaultView;
        //dv.Sort = "thang ASC";
        //GridView1.DataSource = dv;
        //GridView1.DataBind();


        _hello = "<script> họ và tên</script>";

        //Response.

    }

    [WebMethod]
    public string SayHello(string firstName, string lastName)
    {
        return "Hello " + firstName + " " + lastName;
    }

    [WebMethod]
    public string SayHelloJson(string firstName, string lastName)
    {
        var data = new { Greeting = "Hello", Name = firstName + " " + lastName };

        // We are using an anonymous object above, but we could use a typed one too (SayHello class is defined below)
        // SayHello data = new SayHello { Greeting = "Hello", Name = firstName + " " + lastName };

        System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();

        return js.Serialize(data);
    }

    [WebMethod]
    public static string OnSubmit(string name, bool isGoing, string returnAddress)
    {
        return "it worked";
    }

    public static string GetData()
    {
        Dictionary<string, string> name = new Dictionary<string, string>();
        name.Add("1", "Sourav Kayal");
        name.Add("2", "Ram mishra");
        string myJsonString = (new JavaScriptSerializer()).Serialize(name);
        return myJsonString;
    }
}