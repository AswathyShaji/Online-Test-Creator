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
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
          
            Response.Redirect("Round1.aspx");
        }
        else
        {
            Label1.Text = "Please accept the Terms & Conditions";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}