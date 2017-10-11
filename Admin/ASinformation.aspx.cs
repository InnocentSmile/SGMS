using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            if(Request.QueryString["id"]==null)
            {
                
                Button2.Text = "确认添加";
            }
            else
            {
                DataClassesDataContext db = new DataClassesDataContext();
                var aa = from r in db.D_C  select r;
                DropDownList4.DataSource = aa;

                DropDownList4.DataTextField = "AClass";

                DropDownList4.DataBind();

             
                pzl();
                Button2.Text = "确认修改";
            }
          
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       string  t= Calendar1.SelectedDate.ToString();   
       TextBox3.Text = t.Substring(0, t.IndexOf(" "));
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        string s= Calendar2.SelectedDate.ToString();
        TextBox9.Text = s.Substring(0, s.IndexOf(" "));
    }
  
    protected void  judge()
{
      if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
        if (TextBox2.Text.Length < 2 || TextBox2.Text.Length > 4)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在2-4位之间！');</script>");
        }
        if(TextBox10.Text.Length<6||TextBox10.Text.Length>11)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('联系电话应在6-11位之间！');</script>");
        }
}

    protected void Button2_Click(object sender, EventArgs e)
    {              
               if(Button2.Text=="确认添加")
               {
                  
                     add();
               }
             else
              {
                 
                  xiugai();
              }
        
       
       
    }
   
    
    
    
    protected void pzl()
    {
     
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = (from r in db.Stu_information where r.id == int.Parse(Request.QueryString["id"]) select r).First();
        TextBox1.Text = aa.stuNum;TextBox2.Text = aa.stuName;
        RadioButtonList1.SelectedValue = aa.stuSex;TextBox3.Text = aa.birthday;
        TextBox4.Text = aa.nationType;TextBox5.Text = aa.IdentityID;
        ((HiddenField)this.area1.FindControl("hidProvince")).Value = aa.Province;
        ((HiddenField)this.area1.FindControl("hidCity")).Value= aa.City;
       ((HiddenField)this.area1.FindControl("hidArea")).Value=aa.Area;
        TextBox7.Text = aa.Address;
        DropDownList1.SelectedValue = aa.PoliticalStatus; DropDownList4.SelectedValue=aa._class;
        DropDownList3.SelectedValue= aa.department; TextBox9.Text = aa.EnrollmentYear;
        DropDownList2.SelectedValue = aa.studyYear; TextBox10.Text = aa.Tel;
        TextBox12.Text=aa.E_mail;
        Image1.ImageUrl = aa.picture;
       
    }
    protected  void add()
    {
         string path = Server.MapPath("Hpicture");
            string filename = FileUpload1.FileName;
        if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
          else if (TextBox2.Text.Length < 2 || TextBox2.Text.Length > 4)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在2-4位之间！');</script>");
        }
        else if (TextBox10.Text.Length < 6 || TextBox10.Text.Length > 11)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('联系电话应在6-11位之间！');</script>");
        }
        else if (filename=="")
        {
           ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('请添加图片！');</script>");
        }
          
        else
        {
            DataClassesDataContext db = new DataClassesDataContext();
           var bb = from r in db.Stu_information where r.stuNum== TextBox1.Text select r;
          if (bb.Count() > 0)
           {
            //Response.Write("<script language='javascript'> alert('用户名已存在！');</script>");
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号已存在！');</script>");
           }
         
               
        
           else
         {
            Stu_information p = new Stu_information();
            p.stuNum = TextBox1.Text; p.stuName = TextBox2.Text;
            p.stuSex = RadioButtonList1.Text; p.birthday = TextBox3.Text;
            p.nationType = TextBox4.Text; p.IdentityID = TextBox5.Text;
            p.Province = ((HiddenField)this.area1.FindControl("hidProvince")).Value; p.City = ((HiddenField)this.area1.FindControl("hidCity")).Value;
            p.Area = ((HiddenField)this.area1.FindControl("hidArea")).Value;
            p.Address = TextBox7.Text;
            p.PoliticalStatus = DropDownList1.Text; p._class = DropDownList4.Text;
            p.department = DropDownList3.Text; p.EnrollmentYear = TextBox9.Text;
            p.studyYear = DropDownList2.Text; p.Tel = TextBox10.Text;
            p.E_mail = TextBox12.Text;

            
            FileUpload1.SaveAs(path + "\\" + filename);
            Image1.ImageUrl = "Hpicture/" + filename;
            p.picture = "Hpicture/" + filename;
            db.Stu_information.InsertOnSubmit(p);
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
            }

        }
        
    }
    protected void xiugai()
    {
       
        string path = Server.MapPath("Hpicture");
        string filename = FileUpload1.FileName;
          DataClassesDataContext db = new DataClassesDataContext();
        var aa = (from r in db.Stu_information where r.id == int.Parse(Request.QueryString["id"]) select r).First();      
        if (TextBox1.Text.Length < 2 || TextBox1.Text.Length > 10)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('学号为2-10之间！');</script>");
        }
        else if (TextBox2.Text.Length < 2 || TextBox2.Text.Length > 4)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('姓名应在2-4位之间！');</script>");
        }
        else if (TextBox10.Text.Length < 6 || TextBox10.Text.Length > 11)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('联系电话应在6-11位之间！');</script>");
        }
            
        
        else
        {
            if (FileUpload1.FileName == "")
            {
                //string str = aa.picture;
                //aa.picture = str;
              
            }
            else
            {
                aa.picture = "Hpicture/" + filename;
            }
          

        aa.stuNum = TextBox1.Text; aa.stuName = TextBox2.Text;
       aa.stuSex = RadioButtonList1.Text; aa.birthday = TextBox3.Text;
        aa.nationType = TextBox4.Text; aa.IdentityID = TextBox5.Text;
        aa.Province = ((HiddenField)this.area1.FindControl("hidProvince")).Value; aa.City = ((HiddenField)this.area1.FindControl("hidCity")).Value;
        aa.Area = ((HiddenField)this.area1.FindControl("hidArea")).Value;
        aa.Address = TextBox7.Text;
        aa.PoliticalStatus = DropDownList1.Text; aa._class = DropDownList4.Text;
        aa.department = DropDownList3.Text; aa.EnrollmentYear = TextBox9.Text;
        aa.studyYear = DropDownList2.Text; aa.Tel = TextBox10.Text;
        aa.E_mail = TextBox12.Text;

        
       
        Image1.ImageUrl = "Hpicture/" + filename;
        
        db.SubmitChanges();
        ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('修改成功！');</script>");

        }
     }




    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADSinformation.aspx");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = from r in db.D_C where r.DName == DropDownList3.SelectedValue select r;
        DropDownList4.DataSource = aa;
        DropDownList4.DataTextField = "AClass";
        DropDownList4.DataBind();
    }
    
}