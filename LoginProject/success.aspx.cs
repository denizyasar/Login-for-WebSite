using System;

namespace LoginProject
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Logged"].Equals("Yes"))
                lblresult.Text = "WELLCOME" + " " + Session["User"].ToString();
            else
                lblresult.Text = "You have to login to see this page.";

        }
    }
}