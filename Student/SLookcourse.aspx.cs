using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_SLookcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LinqDataSourceB.Where = "CourseID == @CourseID";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSourceB.Where ="CourseName == @CourseName";
    }
}