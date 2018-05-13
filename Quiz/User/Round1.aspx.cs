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
        string sel = "select * from tbl_question where section_id='1'";
        DataTable dt = obj.GetDataTable(sel);

        

        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["question"].ToString();
            RadioButtonList1.Items[0].Value = dt.Rows[0]["opt1"].ToString();
            RadioButtonList1.Items[1].Value = dt.Rows[0]["opt2"].ToString();
            RadioButtonList1.Items[2].Value = dt.Rows[0]["opt3"].ToString();
            RadioButtonList1.Items[3].Value = dt.Rows[0]["opt4"].ToString();

        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_question where section_id='1'";
        DataTable dt = obj.GetDataTable(sel);
        if (RadioButtonList1.SelectedValue == dt.Rows[0]["answer"].ToString())
        {
            string ins = "insert into tbl_marks(user_id,marks_obtained,section_id) values('" + Session["userid"] + "','10','1')";
            obj.ExceuteCommand(ins);
            string ins1 = "insert into tbl_result(user_id,total_mark) values('" + Session["userid"] + "','10')";
            obj.ExceuteCommand(ins1);
        }
        else
        {
            string ins = "insert into tbl_marks(user_id,marks_obtained,section_id) values('" + Session["userid"] + "','0','1')";
            obj.ExceuteCommand(ins);
            string ins1 = "insert into tbl_result(user_id,total_mark) values('" + Session["userid"] + "','0')";
            obj.ExceuteCommand(ins1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Round2.aspx");
    }
}