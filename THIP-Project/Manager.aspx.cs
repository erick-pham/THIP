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
    public partial class Manager : System.Web.UI.Page
    {
        public static Database db = new Database();

        public DataTable confirm_task_list = new DataTable();
        //string id_nv;
        protected void Page_Load(object sender, EventArgs e)
        {

            confirm_task_list = db.getData("select * from Task t1 where t1.id_pct in (select t2.id_pct from Task_ t2 where t2.id_nv ='mg_002' and t2.stat is null)");
            //GridView1.DataSource = confirm_task_list.DefaultView;
            //Array a = GetTask("task_00001");
        }

        [WebMethod]
        public static Array GetTask(String idTask)
        {
            //string id_task = "task_00001";
            ArrayList arrTask = new ArrayList();
            DataTable detailTask = db.getData("select * from Task t where t.id_pct = '" + idTask + "'");
            arrTask.Add(detailTask.Rows[0]["id_pct"]);
            arrTask.Add(detailTask.Rows[0]["id_nv"]);
            arrTask.Add(detailTask.Rows[0]["time_1"].ToString());
            arrTask.Add(detailTask.Rows[0]["time_2"].ToString());
            arrTask.Add(detailTask.Rows[0]["time_3"].ToString());
            arrTask.Add(detailTask.Rows[0]["time_4"].ToString());
            arrTask.Add(detailTask.Rows[0]["id_lot"]);
            arrTask.Add(detailTask.Rows[0]["id_pb"]);
            arrTask.Add(detailTask.Rows[0]["ten_pb"]);
            arrTask.Add(detailTask.Rows[0]["cont"]);
            arrTask.Add(detailTask.Rows[0]["expen"]);
            arrTask.Add(detailTask.Rows[0]["stat"]);
            return arrTask.ToArray();
        }
    }
}