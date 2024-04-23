using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        LMSEntities1 db = new LMSEntities1();
        User user = new User();
        LMSEntities3 db3=new LMSEntities3();
        Book book= new Book();
        LMSEntities4 db4= new LMSEntities4();
        IssueBook issue = new IssueBook();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                        populategrid2();
                        populategrid3();
                    }
                    else
                        Label1.Text = "Error";
                }
            }
        }
        public void populategrid2()
        {
           
            grd2.DataSource = db3.Books.ToList<Book>();
            grd2.DataBind();

        }
        public void populategrid()
        {
            grd1.DataSource = db.Users.ToList<User>();
            grd1.DataBind();

        }

        protected void ADD(object sender, EventArgs e)
        {
            if(txtname.Text.Length > 0 && txtpassword.Text.Length>0) {
                user.Name = txtname.Text;
                user.Password = txtpassword.Text;
                db.Users.Add(user);
                db.SaveChanges();
                populategrid();
            }
            else
            {
                 
                    Response.Write("<script>alert('Wrong Username or Password!')</script>");
                
            }
       
        }

        protected void Delete(object sender, EventArgs e)
        {
            string name = txtname.Text;
            user = db.Users.Where(x => x.Name == name).FirstOrDefault();
            if(user!=null)
            {
                user.Name = name;
                db.Users.Remove(user);
                db.SaveChanges();
                populategrid();

            }
            else
            {

                Response.Write("<script>alert('Wrong Username or Password!')</script>");

            }

        }

        protected void AddBook(object sender, EventArgs e)
        {
            if (txtbookname.Text.Length > 0 && txtbookID.Text.Length > 0)
            {
                book.Name = txtbookname.Text;
                book.BookID = int.Parse(txtbookID.Text);
                db3.Books.Add(book);
                db3.SaveChanges(); 
                populategrid2();
              
            }
            else
            {

                Response.Write("<script>alert('Please Fill Both Columns')</script>");

            }

        }

        protected void DeleteBook(object sender, EventArgs e)
        {
            int id = int.Parse(txtbookID.Text);
            book=db3.Books.Where(x=> x.BookID==id).FirstOrDefault();
            if(book!=null)
            {
                book.BookID = id;
                db3.Books.Remove(book);
                db3.SaveChanges();
                populategrid2();
            }
            else
            {

                Response.Write("<script>alert('Book not found')</script>");

            }
        }
        protected void populategrid3()
        {
            grd3.DataSource = db4.IssueBooks.ToList<IssueBook>();
            grd3.DataBind();
        }
        protected void BookIssued(object sender, EventArgs e)
        {
            if (txtIssuename.Text.Length > 0 && txtissueid.Text.Length > 0 && txtissuedID.Text.Length>0)
            {
                issue.StudentName = txtIssuename.Text;
                issue.BookID = int.Parse(txtissueid.Text);
                issue.IssueID=int.Parse(txtissuedID.Text);
                db4.IssueBooks.Add(issue);
                db4.SaveChanges(); 
                populategrid3();

            }
            else
            {

                Response.Write("<script>alert('Please Fill Both Columns')</script>");

            }

        }

        protected void BookReturned(object sender, EventArgs e)
        {
            int id = int.Parse(txtissuedID.Text);
            issue = db4.IssueBooks.Where(x => x.IssueID == id).FirstOrDefault();
            if (issue != null)
            {   
                db4.IssueBooks.Remove(issue);
                db4.SaveChanges();
                populategrid3();
            }
            else
            {

                Response.Write("<script>alert('Book not found')</script>");

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void grd1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    
}