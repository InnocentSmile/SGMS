using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AcourseDeletE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCourse.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSource5.Where = "CourseID == @CourseID";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LinqDataSource5.Where = "CourseName == @CourseName";
    }
}