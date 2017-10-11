using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TASGrade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
       // DataClassesDataContext db = new DataClassesDataContext();
        //var aa = (from r in db.T_information where r.TNum == Request.Cookies["userName"].Value select r).First();
        //string str = aa._class;
        //var bb = from r in db.SGrade where r._class ==aa._class select r;
        //GridView1.DataSource = bb;
        //GridView1.DataBind();
        if (!IsPostBack)
        {

            var bb = from r in db.T_information where r.TNum == Request.Cookies["userName"].Value select r;
            if (bb.Count() == 1)
            {
                var aa = bb.First();
                TextBox7.Text = aa.workYear;
                Label3.Text = aa._class;
                SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE _class='" + aa._class + "'";
                if (GridView1.Rows.Count <= 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('您的基本资料没有选择所属班级');</script>");
                }
                else
                {

                }


            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('管理员没有录入您的基本信息');</script>");
            }
            if (Request.QueryString["id"] != null)
            {
                pzl1();
                Button1.Text = "修改";
            }
            else
            {

            }



          //SqlDataSource1.SelectCommand=
            if (Request.QueryString["stuNum"] != null)
            {
                pzl();
                Button1.Text = "录入";
            }
            else
            {

            }
        }
    }
    protected void pzl()
    {    
        
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = (from r in db.Stu_information where r.stuNum == Request.QueryString["stuNum"] select r).First();
        Label1.Text = aa.stuNum; Label2.Text = aa.stuName;
    }
    protected void pzl1()
    {
        
        DataClassesDataContext db = new DataClassesDataContext();
        // var bb = (from r in db.T_information where r.TNum == Request.Cookies["userName"].Value select r).First();
        var aa = (from r in db.SGrade where r.id == int.Parse(Request.QueryString["id"]) select r).First();
        if ( TextBox7.Text== aa.courseName)
        {
            Label1.Text = aa.userNum; Label2.Text = aa._Name; TextBox1.Text = aa.term; 
            TextBox3.Text = aa.RegularGrade; TextBox7.Text = aa.courseName;
            TextBox4.Text = aa.MidtermGrade; TextBox5.Text = aa.FinalGrade; DropDownList1.SelectedValue = aa.WhetherQualified;
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('您只能修改你所教授的课程');</script>");
        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text== "录入") 

        {    add();   }
        if (Button1.Text == "修改") 
        
        {    xiugai();   }
        
    }
    protected void xiugai()
    {   
            DataClassesDataContext db = new DataClassesDataContext();
            var aa = (from r in db.SGrade where r.id == int.Parse(Request.QueryString["id"]) select r).First();
            aa.userNum = Label1.Text; aa._Name = Label2.Text;
            aa._class=Label3.Text              ; aa.term = TextBox1.Text;
            aa.courseName = TextBox7.Text;
            aa.RegularGrade = TextBox3.Text;
            aa.MidtermGrade = TextBox4.Text; aa.FinalGrade = TextBox5.Text;
            aa.WhetherQualified = DropDownList1.Text;
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('修改成功！');</script>");
        

    }
    protected  void add()
    {
        if (Label1.Text == ""||TextBox1.Text=="")
        {
            Response.Redirect("TLookSGrade.aspx");
        }
        else
        {
            DataClassesDataContext db = new DataClassesDataContext();
            SGrade aa = new SGrade();
            aa.userNum = Label1.Text; aa._Name = Label2.Text;
            aa._class = Label3.Text; aa.term = TextBox1.Text;
            aa.courseName = TextBox7.Text;
            aa.RegularGrade = TextBox3.Text;
            aa.MidtermGrade = TextBox4.Text; aa.FinalGrade = TextBox5.Text;
            aa.WhetherQualified = DropDownList1.Text;
            db.SGrade.InsertOnSubmit(aa);
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('录入成功！');</script>");
        }
    }





  
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedValue == "学号")
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE stuNum='" + TextBox6.Text + "'";
            if (GridView1.Rows.Count <= 0)
            {
                //ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有符合条件的，请重新输入');</script>");
                ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('没有符合条件的，请重新输入');window.location='TLookSGrade.aspx';</script>");
            }
            else
            {

            }

        }
        if (DropDownList4.SelectedValue == "姓名")
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE stuName='" + TextBox6.Text + "'";
            if (GridView1.Rows.Count <= 0)
            {
               // ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有符合条件的，请重新输入');</script>");
                ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('没有符合条件的，请重新输入');window.location='TLookSGrade.aspx';</script>");
            }
            else
            {

            }

        }
    }
    
}
