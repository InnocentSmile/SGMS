using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Response.Write("<script language='javascript'> alert('用户名和密码不能为空！');</script>");
        }
        else if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            Response.Write("<script language='javascript'> alert('用户名为2-10位之间！');</script>");
        }
        else if (TextBox2.Text.Length < 4 || TextBox2.Text.Length > 18)
        {
            Response.Write("<script language='javascript'> alert('密码为4-18位之间！');</script>");

        }
        else if (RadioButtonList1.SelectedValue == "学生")
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var aa = from r in db.studentLogin
                     where r.userName == TextBox1.Text && r.userPwd == TextBox2.Text
                     select r;
           
            
            if (aa.Count() == 1)
            {
                Response.Cookies["userName"].Value = TextBox1.Text;
                Response.Cookies["userPwd"].Value = TextBox2.Text;
                
                Response.Redirect("student/student.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('账号密码错误！');</script>");
            }
        }

        else if (RadioButtonList1.SelectedValue == "教师")
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var bb = from r in db.teacherLogin
                     where r.userName == TextBox1.Text && r.userPwd == TextBox2.Text
                     select r;
            if (bb.Count() == 1)
            {              
                //var aa = (from r in db.T_information where r.TNum ==TextBox1.Text  select r).First();
               
               //var cc = (from r in db.SGrade where r._class ==aa._class select r).First();
               // Response.Cookies["_class"].Value = cc._class;


               //Response.Cookies["courseName"].Value = aa.workYear;
               // Response.Cookies["teacherName"].Value = 
                var pzl = bb.First();
                Response.Cookies["teacherName"].Value = pzl._Name;
                Response.Cookies["userName"].Value = TextBox1.Text;
                Response.Cookies["userPwd"].Value = TextBox2.Text;
                Response.Redirect("Teacher/teacher.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('账号密码错误！');</script>");
            }
        }

        else if (RadioButtonList1.SelectedValue == "管理员")
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var cc= from r in db.adminLogin
                     where r.userName == TextBox1.Text && r.userPwd == TextBox2.Text
                     select r;
            if (cc.Count() == 1)
            {
                Response.Cookies["userName"].Value = TextBox1.Text;
                Response.Cookies["userPwd"].Value = TextBox2.Text;
                Response.Redirect("Admin/admin.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('账号密码错误！');</script>");
            }
        }
    }
}