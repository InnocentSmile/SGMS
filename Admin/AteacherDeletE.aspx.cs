using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AteacherDeletE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AteacherAdd.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSource3.Where = "userName == @userName";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LinqDataSource3.Where = "_Name=@_Name";
    }
}