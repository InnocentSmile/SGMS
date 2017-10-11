using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userName"] != null)
        {
            Label1.Text = Request.Cookies["userName"].Value;
            DataClassesDataContext db = new DataClassesDataContext();
            var bb = (from r in db.teacherLogin where r.userName == Label1.Text select r).First();

            Label2.Text = bb._Name;
        }
        else
        {
            Response.Redirect("../login.aspx");
        }


    }
}