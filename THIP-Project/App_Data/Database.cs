using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for Class1
/// </summary>
namespace My_Library
{
    public class Database
    {
        // thuộc tính
        SqlConnection conn;
        //String datasource = "192.168.10.100";
        ////String port = "1433";
        //String database = "thie83c4_TH02";
        //String username = "sa";
        //String password = "Kuga1996";
        //String datasource = "112.78.2.112";
        //String database = "thie83c4_TH05";
        //String username = "thie83c4_TH01";
        //String password = "!1Qwerty123";

        String datasource = "THIPFMS.mssql.somee.com";
        String database = "THIPFMS";
        String username = "bossdiemmaimai_SQLLogin_1";
        String password = "1upfbzj8vl";
        String connString;

        // hàm khởi tạo
        public Database()
        {
            connString = @"Data Source=" + datasource + ";Initial Catalog="
                        + database + ";Persist Security Info=True;User ID=" + username + ";Password=" + password;
            this.conn = new SqlConnection(connString);
        }
        public void openConn()
        {
            if (this.conn != null)
            this.conn.Open();
        }
        public void closeConn()
        {
            if (this.conn != null)
                this.conn.Close();
        }
        public String getConnStr()
        {
            return this.connString;
        }
        public SqlConnection getConn()
        {
            return this.conn;
        }
        // hàm lấy data
        public DataTable getData(String getString)
        {
            this.openConn();
            SqlCommand cmd = new SqlCommand(getString, this.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            da.Fill(table);
            this.closeConn();
            return table;
        }
    }
}