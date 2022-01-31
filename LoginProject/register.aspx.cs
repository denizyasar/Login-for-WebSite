using System;
using System.Linq;

namespace LoginProject
{
    public partial class register : System.Web.UI.Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {

            string password = Request.Form["psw"];
            string passwordRepeat = Request.Form["psw-repeat"];
            if (!password.Equals(passwordRepeat))
            {
                lblFail.Text = "Passwords not match!";
                return;
            }
            string name = Request.Form["name"];
            string surname = Request.Form["surname"];
            string email = Request.Form["email"];

            UserDBEntities entities = new UserDBEntities();

            User user = entities.User.Where(b => b.Email == email).FirstOrDefault();
            if (user is null)
            {
                User newUser = new User();
                newUser.Name = name;
                newUser.Surname = surname;
                newUser.Password = password;
                newUser.Email = email;
                newUser.Validated = false;
                newUser.ActivationCode = Utility.GenerateActivationCode();
                entities.User.Add(newUser);
                entities.SaveChanges();
                string body = "Your activation code is " + newUser.ActivationCode;
                string subject = "Activation Code";
                if (Utility.SendMail(subject, body, newUser.Email))
                    Response.Redirect("login.aspx");
                else
                    lblFail.Text = "Mail send failed!";
            }
            else
                lblFail.Text = "User already exists!";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}