using System;
using System.Linq;

namespace LoginProject
{
    public partial class Login : System.Web.UI.Page
    {

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["psw"];

            UserDBEntities entities = new UserDBEntities();

            User user = entities.User.Where(b => b.Email == email).FirstOrDefault();
            if (user is null)
                lblFail.Text = "User not found! Please register.";
            else
            {
                if (!user.Password.Equals(password))
                    lblFail.Text = "Wrong password!";
                else
                {
                    if (user.Validated)
                    {
                        Session["Logged"] = "Yes";
                        Session["User"] = user.Name + " " + user.Surname;
                        Session["email"] = user.Email;
                        Response.Redirect("success.aspx");

                    }
                    else
                    {
                        Session["email"] = user.Email;
                        Response.Redirect("activate.aspx");
                    }
                }

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}