using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class guest_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtpassword.Text = "";
        txtusername.Text = "";
    }
    protected void butnlogin_Click(object sender, EventArgs e)
    {
        string sel1 = "select * from tbl_admin where ad_uname='" + txtusername.Text + "' and ad_pswd='" + txtpassword.Text + "'";
        DataTable dt1 = obj.GetDataTable(sel1);

        string sel = "select * from tbl_user_registration where user_username='" + txtusername.Text + "' and user_password='" + txtpassword.Text + "'";
        DataTable dt = obj.GetDataTable(sel);


        if (dt1.Rows.Count > 0)
        {
            Session["adminid"] = dt1.Rows[0]["admin_id"].ToString();
            Response.Redirect("~/Admin/AdminHome.aspx");
        }
       
        else if (dt.Rows.Count > 0)
        {

            Session["userid"] = dt.Rows[0]["user_id"].ToString();
            //Session["name"] = dt.Rows[0]["uname"].ToString();
            Session["username"] = txtusername.Text;

            Response.Redirect("~/User/Rules.aspx");
        }

        else
        {
            Response.Write("<script>alert('Invalid username or password')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Guest/ForgotPassword.aspx");
    }
}