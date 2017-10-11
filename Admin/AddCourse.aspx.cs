using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('相关信息不能为空');</script>");
        }
        else if (TextBox1.Text.Length != 4)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注意课程编号格式');</script>");
        }
        else if (TextBox3.Text.Length < 1 || TextBox3.Text.Length > 100)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在1-100位之间！');</script>");
        }
        else
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var aa = from r in db.Course where r.CourseID == TextBox1.Text || r.CourseName == TextBox2.Text select r;
            if (aa.Count() > 0)
            {
                //Response.Write("<script language='javascript'> alert('用户名已存在！');</script>");
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('课程编号或者课程名称已存在！');</script>");
            }
            else
            {
                Course bb = new Course();
                bb.CourseID = TextBox1.Text;
                bb.CourseName = TextBox2.Text;
                bb.TeacherName = TextBox3.Text;
                db.Course.InsertOnSubmit(bb);
                db.SubmitChanges();
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
            }
        
        
        
        
        
        }








    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcourseDeletE.aspx");
    }
}