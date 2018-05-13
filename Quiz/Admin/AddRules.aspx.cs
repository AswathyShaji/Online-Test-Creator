using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillevent();
        }
    }
    public void fillevent()
    {
        obj.FillDrop(ddlevent, "quiz_name", "quiz_id", "tbl_quiz");
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_rules(quiz_id,rule_name) values('" + ddlevent.SelectedValue + "','" + TextBox1.Text + "')";
        obj.ExceuteCommand(ins);
        TextBox1.Text = "";
        ddlevent.ClearSelection();
    }
}