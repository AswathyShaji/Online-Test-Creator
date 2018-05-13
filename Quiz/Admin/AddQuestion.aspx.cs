using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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
        if (!IsPostBack)
        {
            fillevent();
            fillgrid();
            fillsection();
            
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_section s,tbl_question q,tbl_quiz z  where s.section_id=q.section_id and q.quiz_id=z.quiz_id and question_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            ddlsection.Text = dt.Rows[0]["section_id"].ToString();
            ddlevent.Text = dt.Rows[0]["quiz_id"].ToString();
            txtquestion.Text = dt.Rows[0]["question"].ToString();
            txtopt1.Text = dt.Rows[0]["opt1"].ToString();
            txtopt2.Text = dt.Rows[0]["opt2"].ToString();
            txtopt3.Text = dt.Rows[0]["opt3"].ToString();
            txtopt4.Text = dt.Rows[0]["opt4"].ToString();
            txtanswer.Text = dt.Rows[0]["answer"].ToString();            
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_question where question_id='" + eid + "'";
            obj.ExceuteCommand(del);
            //txtquestion.Text = "";
            //txtopt1.Text = "";
            //txtopt2.Text = "";
            //txtopt3.Text = "";
            //txtopt4.Text = "";
            //txtanswer.Text = "";
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    public void fillsection()
    {
        obj.FillDrop(ddlsection, "section_name", "section_id", "tbl_section");
    }
    public void fillevent()
    {
        obj.FillDrop(ddlevent, "quiz_name", "quiz_id", "tbl_quiz");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_question set question='" + txtquestion.Text + "',opt1='" + txtopt1.Text + "',opt2='" + txtopt2.Text + "',opt3='" + txtopt3.Text + "',opt4='" + txtopt4.Text + "',answer='" + txtanswer.Text + "' where question_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtquestion.Text = "";
            ddlsection.ClearSelection();
            txtopt1.Text = "";
            txtopt2.Text = "";
            txtopt3.Text = "";
            txtopt4.Text = "";
            txtanswer.Text = "";
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string var = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
            FileUpload1.SaveAs(Server.MapPath("~/Admin/images/" + var));
            string ins = "insert into tbl_question(section_id,question,opt1,opt2,opt3,opt4,answer,quiz_id,image) values('" + ddlsection.SelectedValue + "','" + txtquestion.Text + "','" + txtopt1.Text + "','" + txtopt2.Text + "','" + txtopt3.Text + "','" + txtopt4.Text + "','" + txtanswer.Text + "','" + ddlevent.SelectedValue + "','" + var + "')";
            obj.ExceuteCommand(ins);
            txtquestion.Text = "";
            ddlsection.ClearSelection();
            txtopt1.Text = "";
            txtopt2.Text = "";
            txtopt3.Text = "";
            txtopt4.Text = "";
            txtanswer.Text = "";
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_section s,tbl_question q,tbl_quiz z where s.section_id=q.section_id and q.quiz_id=z.quiz_id";
        obj.FillGridView(sel, GridView1);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtquestion.Text = "";
        ddlsection.ClearSelection();
        txtopt1.Text = "";
        txtopt2.Text = "";
        txtopt3.Text = "";
        txtopt4.Text = "";
        txtanswer.Text = "";
    }
    protected void ddlsection_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}