using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AstudentAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号和密码不能为空');</script>");
        }
        else if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
        else if (TextBox2.Text.Length < 4 || TextBox2.Text.Length > 18)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('密码为4-18位之间！');</script>");
        }
        else if (TextBox3.Text.Length < 1 || TextBox3.Text.Length > 20)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在1-20位之间！');</script>");
        }
        else
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var bb = from r in db.studentLogin where r.userName == TextBox1.Text select r;
            if (bb.Count() > 0)
            {
                //Response.Write("<script language='javascript'> alert('用户名已存在！');</script>");
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号已存在！');</script>");
            }
            else
            {
                studentLogin aa = new studentLogin();
                aa.userType = "学生";
                aa.userName = TextBox1.Text;
                aa.userPwd = TextBox2.Text;
                aa._Name = TextBox3.Text;
                db.studentLogin.InsertOnSubmit(aa);
                db.SubmitChanges();
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AstudentDeletE.aspx");
    }
}