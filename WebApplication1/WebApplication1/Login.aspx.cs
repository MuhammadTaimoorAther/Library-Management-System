using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration.Provider;
using System.Security.Cryptography;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        LMSEntities1 db1 = new LMSEntities1();//for user
        LMSEntities2 db2 = new LMSEntities2();//for admin
        User user = new User();//Student Data
        Admin admin=new Admin();//Admin Data
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdolibrary_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rdosudent_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("information");
            cookie["txtusername"]=txtusername.Text;
            Response.Cookies.Add(cookie);
            //cookie.Expires= DateTime.Now.AddMinutes(60);
          
            if (rdoadmin.Checked)
            {
                string name = txtusername.Text;
                admin=db2.Admins.Where(x=> x.Name==name).FirstOrDefault();
                if (admin != null && admin.Password==txtpassword.Text)
                {
                    Session["username"] = txtusername.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Wrong Username or Password!')</script>");
                }
            }
            else
            {
                string name = txtusername.Text;
                user = db1.Users.Where(x => x.Name == name).FirstOrDefault();
                if (user != null && user.Password==txtpassword.Text)
                {
                    Session["username"] = txtusername.Text;
                    Response.Redirect("Student.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Wrong Username or Password!')</script>");
                }
            }
          
           


        }
    }
}