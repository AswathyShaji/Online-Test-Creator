using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Score.aspx");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ins = "insert into tbl_feedback(feedback_que,feedback_answer,user_id) values('What is your feedback about our quiz','" + RadioButtonList1.SelectedValue + "','" + Session["userid"] + "')";
        obj.ExceuteCommand(ins);
        Button1.Visible = true;
    }
}