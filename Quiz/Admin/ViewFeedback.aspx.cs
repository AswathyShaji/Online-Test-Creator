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

            fillgrid();


        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_user_registration u,tbl_feedback q where u.user_id=q.user_id";
        obj.FillGridView(sel, GridView1);
    }
}