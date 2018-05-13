using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    cls_quiz obj = new cls_quiz();
    public static int eid, f;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  txt_exdate_CalendarExtender.StartDate = DateTime.Now;
        txtstartdate.Text = DateTime.Now.ToShortDateString();
        if (!IsPostBack)
        {
            
           
            fillgrid();
            
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_quiz";
        obj.FillGridView(sel, GridView1);
    }
    protected void submitquiz_click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_quiz set quiz_name='" + txtname.Text + "',quiz_description='" + txtdescription.Text + "',quiz_date='" + DateTime.Now.ToShortDateString() + "',quiz_venue='" + txtvenue.Text + "' where quiz_id=" + eid + "";
            obj.ExceuteCommand(up);
            txtname.Text = "";
            txtdescription.Text = "";
            txtstartdate.Text = "";
            txtvenue.Text = "";
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_quiz(quiz_name,quiz_description,quiz_date,quiz_venue) values('" + txtname.Text + "','" + txtdescription.Text + "','" + DateTime.Now.ToShortDateString() + "','" + txtvenue.Text + "')";
            obj.ExceuteCommand(ins);
            txtname.Text = "";
            txtdescription.Text = "";
            txtstartdate.Text = "";
            txtvenue.Text = "";
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_quiz where quiz_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtname.Text = dt.Rows[0]["quiz_name"].ToString();
            txtdescription.Text = dt.Rows[0]["quiz_description"].ToString();
            txtstartdate.Text = dt.Rows[0]["quiz_date"].ToString();
            txtvenue.Text = dt.Rows[0]["quiz_venue"].ToString();   
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_quiz where quiz_id='" + eid + "'";
            obj.ExceuteCommand(del);
            
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //txtstartdate.Text = Calendar1.SelectedDate.ToLongDateString();
        //Calendar1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtdescription.Text = "";
        txtstartdate.Text = "";
        txtvenue.Text = "";
    }
    protected void txtstartdate_TextChanged(object sender, EventArgs e)
    {

    }
}