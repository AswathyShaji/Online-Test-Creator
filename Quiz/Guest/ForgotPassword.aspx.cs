using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guest_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        //string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "' and uquestion='" + lblsecurityquestion.Text + "' and uanswer='"+txtanswer.Text+"'";
        //DataTable dt = obj.GetDataTable(sel);

        //if (dt.Rows.Count > 0)
        //{
        //    lblpassword.Text = dt.Rows[0]["upassword"].ToString();

        //}
        //else
        //{
        //    Response.Write("<script>alert('invalid user')</script>");
        //}
        string sel = "select * from tbl_user_registration where user_username='" + txtusername.Text + "' and user_contact='" + txtanswer.Text + "'";
        DataTable dt = obj.GetDataTable(sel);

        if (dt.Rows.Count > 0)
        {
            lblpassword.Text = dt.Rows[0]["upassword"].ToString();

        }
        else
        {
            Response.Write("<script>alert('invalid user')</script>");
        }
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
    //    string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "'";
    //    DataTable dt = obj.GetDataTable(sel);
       
    //    if (dt.Rows.Count > 0)
    //    {
    //        lblsecurityquestion.Text = dt.Rows[0]["uquestion"].ToString();
            
    //    }
    //    else
    //    {
    //        lblsecurityquestion.Text = "invalid username";
    //    }
    }

}