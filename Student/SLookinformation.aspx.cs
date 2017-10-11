using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_SLookinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var bb = from r in db.Stu_information where r.stuNum == Request.Cookies["userName"].Value select r;
        if (bb.Count() == 1)
        {
            var aa = bb.First();
            Label1.Text = aa.stuNum; Label2.Text = aa.stuName; Label3.Text = aa.stuSex;
            Label4.Text = aa.birthday; Label5.Text = aa.nationType; Label6.Text = aa.Province + aa.City + aa.Area;
            Label7.Text = aa.PoliticalStatus; Label8.Text = aa.IdentityID; Label9.Text = aa.studyYear;
            Label10.Text = aa._class; Label11.Text = aa.department; Label12.Text = aa.EnrollmentYear;
            Label13.Text = aa.Tel; Label14.Text = aa.E_mail; Label15.Text = aa.Address;
            Image1.ImageUrl = "../Admin/" + aa.picture;
        }
        else
        {
            //Response.Write("<script language='javascript'> alert('管理员还没录入您的基本信息！');</script>");
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('管理员还没录入您的基本信息');</script>");
        }
    }
}