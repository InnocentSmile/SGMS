using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userName"] != null)
        {
            Label1.Text = Request.Cookies["userName"].Value;
        }
        else
        {
            Response.Redirect("../login.aspx");
        }
    }
}