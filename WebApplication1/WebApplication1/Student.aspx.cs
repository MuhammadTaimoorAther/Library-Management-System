using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        LMSEntities4 db4 = new LMSEntities4();
        IssueBook issue = new IssueBook();
        LMSEntities3 db3 = new LMSEntities3();
        Book book = new Book();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                HttpCookie cookie = Request.Cookies["information"];
                if (cookie != null)
                {
                    Label1.Text += cookie["txtusername"].ToString();
                    populategrid();
                    populategrid1();
                }
                else
                    Label1.Text = "Error";

            }
        }
        protected void populategrid()
        {
            string Name = Label1.Text;
           
            List<IssueBook> name=new List<IssueBook> { issue };
            name = db4.IssueBooks.Where(x => x.StudentName == Name).ToList<IssueBook>();
            Grd1.DataSource= name;
            Grd1.DataBind();


        }
        protected void populategrid1()
        {
            Grd2.DataSource=db3.Books.ToList<Book>();
            Grd2.DataBind();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}