using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {
        string sel = "select top 1 * from tbl_result where user_id='" + Session["userid"] + "' ";
        DataTable dt = obj.GetDataTable(sel);
        Label1.Text = dt.Rows[0]["total_mark"].ToString();
    }
   
}