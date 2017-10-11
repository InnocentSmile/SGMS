using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TchangePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = (from r in db.teacherLogin where r.userName == Request.Cookies["userName"].Value select r).First();
        if (TextBox1.Text != aa.userPwd)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('原密码不正确');</script>");
            TextBox1.Text = "";
        }
        else
        {
            aa.userPwd = TextBox2.Text;
            db.SubmitChanges();
         //   ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('修改成功');</script>");
            ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('密码修改成功，请重新登录');window.location='../login.aspx';</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("teacher.aspx");
    }
}