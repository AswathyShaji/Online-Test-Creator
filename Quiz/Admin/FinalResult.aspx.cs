using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // string sel = "select top  * from tbl_result r,tbl_user_registration u,tbl_quiz q where total_mark=Max("total_mark") and u.user_id=r.user_id and u.quiz_id=q.quiz_id "; ;
        
    }
}