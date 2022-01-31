using System;
using System.Linq;

namespace LoginProject
{
    public partial class activate : System.Web.UI.Page
    {

        protected void btnActivate_Click(object sender, EventArgs e)
        {
            string code = Request.Form["code"];
            string email = Session["email"].ToString();

            UserDBEntities entities = new UserDBEntities();
            User user = entities.User.Where(b => b.Email.Equals(email)).FirstOrDefault();

            if (user.ActivationCode.Equals(code))
            {
                user.Validated = true;
                entities.SaveChanges();
                Session["Logged"] = "Yes";
                Session["User"] = user.Name + " " + user.Surname;
                Session["email"] = user.Email;
                Response.Redirect("success.aspx");
            }
            else
            {
                lblFail.Text = "Wrong activation code!";
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"].ToString()==string.Empty)
                Response.Redirect("login.aspx");
        }
    }
}