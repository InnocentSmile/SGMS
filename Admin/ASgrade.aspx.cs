using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASgrade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {

                Button1.Text = "确认添加";
            }
            else
            {

                pzl();
                Button1.Text = "确认修改";
            }

        }
    }
    protected void pzl()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = (from r in db.SGrade where r.id == int.Parse(Request.QueryString["id"]) select r).First();
        TextBox1.ReadOnly = true; TextBox2.ReadOnly = true; TextBox3.ReadOnly = true; TextBox4.ReadOnly = true; TextBox5.ReadOnly = true;
        TextBox1.Text = aa.userNum; TextBox2.Text = aa._Name; TextBox3.Text = aa._class; TextBox4.Text = aa.term; TextBox5.Text = aa.courseName; TextBox6.Text = aa.RegularGrade;
        TextBox7.Text = aa.MidtermGrade; TextBox8.Text = aa.FinalGrade; DropDownList1.SelectedValue = aa.WhetherQualified;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "确认添加")
        {

            add();
        }
        else
        {

            xiugai();
        }
        
    }
    protected void add()
    {
        if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
        else if (TextBox2.Text.Length < 2 || TextBox2.Text.Length > 20)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在1-20位之间！');</script>");
        }
        else
        {
            DataClassesDataContext db = new DataClassesDataContext();
            var bb = from r in db.SGrade where r.userNum == TextBox1.Text && r.courseName == TextBox5.Text&&r.term==TextBox4.Text select r;
            if (bb.Count() > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('该学生本学期已添加本门课！');</script>");
            }
            else
            {
                SGrade aa = new SGrade();
                aa.userNum = TextBox1.Text; aa._Name = TextBox2.Text;
                aa._class = TextBox3.Text; aa.term = TextBox4.Text;
                aa.courseName = TextBox5.Text;
                aa.RegularGrade = TextBox6.Text;
                aa.MidtermGrade = TextBox7.Text; aa.FinalGrade = TextBox8.Text;
                aa.WhetherQualified = DropDownList1.Text;
                db.SGrade.InsertOnSubmit(aa);
                db.SubmitChanges();
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
            }
        }
    }

     protected void xiugai()
    {
        if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
        else if (TextBox2.Text.Length < 2 || TextBox2.Text.Length > 20)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在1-20位之间！');</script>");
        }
        else
        {
           
            DataClassesDataContext db = new DataClassesDataContext();
            var aa = (from r in db.SGrade where r.id == int.Parse(Request.QueryString["id"]) select r).First();
            aa.userNum = TextBox1.Text; aa._Name = TextBox2.Text;
            aa._class = TextBox3.Text; aa.term = TextBox4.Text;
            aa.courseName = TextBox5.Text;
            aa.RegularGrade = TextBox6.Text;
            aa.MidtermGrade = TextBox7.Text; aa.FinalGrade = TextBox8.Text;
            aa.WhetherQualified = DropDownList1.Text;
           
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('修改成功！');</script>");
        }
    }








    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADGrade.aspx");
    }
}