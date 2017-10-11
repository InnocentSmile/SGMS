using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADSinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ASinformation.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSource4.Where = "stuName == @stuName";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LinqDataSource4.Where = "stuNum == @stuNum";
    }
}