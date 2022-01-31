using System;
using System.Linq;

namespace LoginProject
{
    public partial class retrieve : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];

            UserDBEntities entities = new UserDBEntities();

            User user = entities.User.Where(b => b.Email == email).FirstOrDefault();
            if (user is null)
                lblFail.Text = "User not found! Check your e-mail or register.";
            else
            {
                string body = "Your password is " + user.Password;
                if (Utility.SendMail("Password", body, user.Email))
                    Response.Redirect("login.aspx");
                else
                    lblFail.Text = "Mail send failed!";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}