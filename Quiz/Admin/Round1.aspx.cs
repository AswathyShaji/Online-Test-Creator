using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }   
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox1.BackColor = System.Drawing.Color.Red;
        
    }
    protected void btnprevious_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
     i = i + 1;
        if (i == 10)
        {
            i = 0;
            Response.Redirect("Rules.aspx");
        }
    }
    
}