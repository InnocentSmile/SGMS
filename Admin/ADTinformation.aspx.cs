using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ADTinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ATinformation.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSource7.Where = "TNum == @TNum";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LinqDataSource7.Where = "TName == @TName";
    }
}