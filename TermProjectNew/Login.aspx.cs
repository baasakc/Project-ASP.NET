using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application["counter"] = Convert.ToInt32(Application["counter"]) + 1;
    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        using (var myDB = new TermProjectEntities())
        {
            StudentInformation loginUser = (from u in myDB.StudentInformations
                                            where u.email == TextBoxEmail.Text && u.password == TextBoxPassword.Text
                                            select u).SingleOrDefault();
            if (loginUser != null)
            {
                Session["user"] = loginUser;
                if (loginUser.isAdmin == true)
                {
                    Response.Redirect("HomePageAdmin.aspx");
                }
                else
                {
                    Response.Redirect("HomePageUser.aspx");
                }


            }
            else
            {
                LabelResult.Text = "Wrong.";
                LabelResult.Visible = true;
            }
        }

    }
}