using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Text;
using System.Web.UI.WebControls;

public partial class AstudentDeletE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*DataClassesDataContext db = new DataClassesDataContext();
         if(TextBox2.Text=="")
            {
                var aa = from r in db.studentLogin  select r;

                GridView2.DataSource = aa;
                GridView2.DataBind();
             }*/
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
        /*DataClassesDataContext db = new DataClassesDataContext();

        if(DropDownList1.SelectedValue=="学号")
        {
           
            
            
           
                var bb = from r in db.studentLogin where r.userName==TextBox2.Text select r;
                if (bb!= null)
                {
                    GridView2.DataSource = bb;
                    GridView2.DataBind();
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('未查到符合条件的项！');</script>");
                          
                }
            
        
            
        }
         
        if (DropDownList1.SelectedValue == "姓名")
        {
                      
            
           var bb = from r in db.studentLogin where r._Name==TextBox2.Text select r;
           if (bb!= null)
           {
               GridView2.DataSource = bb;
               GridView2.DataBind();
           }
            
           else
           {
               ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('未查到符合条件的项！');</script>");
                    
           }
          
           
             
        }
  
        
    //var aa = from r in db.studentLogin where System.Data.Linq.SqlClient.SqlMethods.Like(r._Name, "%'TextBox2.Text'%" + TextBox2.Text) select r;
           

    }*/
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AstudentAdd.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LinqDataSource2.Where = "userName == @userName";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LinqDataSource2.Where = "_Name == @_Name";
    }
}