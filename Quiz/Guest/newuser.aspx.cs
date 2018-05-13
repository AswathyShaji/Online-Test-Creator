using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class guest_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillevent();
        }     
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void butnsubmit_Click(object sender, EventArgs e)
    {

    }
    public void fillevent()
    {
        obj.FillDrop(ddlevent, "quiz_name", "quiz_id", "tbl_quiz");
    }
    
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void butnsubmit_Click1(object sender, EventArgs e)
    {

        string ins = "insert into tbl_user_registration(user_teamname,user_mb1,user_mb2,user_address,user_email,user_phone,user_username,user_password,user_question,user_answer,quiz_id) values('" + txtteamname.Text + "','" + txtname1.Text + "','" + txtname2.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + ddlquestion.SelectedValue + "','" + txtanswer.Text + "','" + ddlevent.SelectedValue + "')";
        obj.ExceuteCommand(ins);
        txtteamname.Text = "";
        txtname1.Text = "";
        txtname2.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtanswer.Text = "";
        txtcnfrmpassword.Text = "";
        ddlquestion.ClearSelection();
        Response.Write("<script>alert('Inserted sucessfully')</script>");
    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtteamname.Text = "";
        txtname1.Text = "";
        txtname2.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtanswer.Text = "";
        txtcnfrmpassword.Text = "";
        ddlquestion.ClearSelection();
    }
    protected void txtaccno_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnchk_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_user_registration where user_username='" + txtusername.Text + "'";

        DataTable dt = new DataTable();
        dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lblmsg.Text = "username already exist";
            txtusername.Text = "";
        }
        else
        {
            lblmsg.Text = "username available";

        }
    }
}