using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddD_C : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = from r in db.Department where r.DepartmentName == TextBox1.Text select r;
        if(aa.Count()>0)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('系别已存在！');</script>");
        }
        else
        {
            Department bb = new Department();
            bb.DepartmentName = TextBox1.Text;
            db.Department.InsertOnSubmit(bb);
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
        }

    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var aa = from r in db.D_C where r.AClass == TextBox2.Text select r;
        if (aa.Count() > 0)
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('该系已有该班级！');</script>");
        }
        else
        {
            D_C bb = new D_C();
            bb.DName = DropDownList1.Text;
            bb.AClass = TextBox2.Text;
            db.D_C.InsertOnSubmit(bb);
            db.SubmitChanges();
            ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('添加成功！');</script>");
        }




    }






    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("LookD-C.aspx");
    }
}

