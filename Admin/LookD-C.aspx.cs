using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_LookD_C : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue=="系名")
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [D-C] WHERE DName = '" + TextBox1.Text + "'";
        }
        if (DropDownList1.SelectedValue == "班级名")
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [D-C] WHERE AClass='" + TextBox1.Text + "'";
        }


    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddD-C.aspx");
    }
}