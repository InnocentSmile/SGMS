using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TLookSinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        
      
        if(!IsPostBack)
        {
            var bb = from r in db.T_information where r.TNum == Request.Cookies["userName"].Value select r;
            if (bb.Count() == 1)
            {
                var aa = bb.First();
                SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE _class='" + aa._class + "'";
                if (GridView1.Rows.Count<=0)
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
              
                var aa = (from r in db.Stu_information where r.id == int.Parse(Request.QueryString["id"]) select r).First();
                Label1.Text = aa.stuNum; Label2.Text = aa.stuName; Label3.Text = aa.stuSex;
                Label4.Text = aa.birthday; Label5.Text = aa.nationType; Label6.Text = aa.Province + aa.City + aa.Area;
                Label7.Text = aa.PoliticalStatus; Label8.Text = aa.IdentityID; Label9.Text = aa.studyYear;
                Label10.Text = aa._class; Label11.Text = aa.department; Label12.Text = aa.EnrollmentYear;
                Label13.Text = aa.Tel; Label14.Text = aa.E_mail; Label15.Text = aa.Address;
                Image1.ImageUrl = "../Admin/" + aa.picture;
            }
            else
            { 

             }
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue=="学号")
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE stuNum='" + TextBox1.Text + "'";
            if (GridView1.Rows.Count <= 0)
            {
                //ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有符合条件的，请重新输入');</script>");
                ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('没有符合条件的，请重新输入');window.location='TLookSinformation.aspx';</script>");
            }
            else
            {

            }
        }
        if (DropDownList1.SelectedValue == "姓名")
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [Stu_information] WHERE stuName='" + TextBox1.Text + "'";
            if (GridView1.Rows.Count <= 0)
            {
               // ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有符合条件的，请重新输入');</script>");
                ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('没有符合条件的，请重新输入');window.location='TLookSinformation.aspx';</script>");
            }
            else
            {

            }

        }




    }




}