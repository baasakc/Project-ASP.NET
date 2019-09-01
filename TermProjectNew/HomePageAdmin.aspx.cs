using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePageAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentInformation user = (StudentInformation)Session["user"];
        if (user==null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (user.isAdmin==false)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (user.photo != null)
                {
                    var base64 = Convert.ToBase64String(user.photo);
                    var imgsrc = string.Format("data:image/jpg;base64,{0}", base64);
                    ImageProfilePic.ImageUrl = imgsrc;
                }
                LabelWelcome.Text = "Welcome" + " " + user.firstName + "!";
                LabelUsernameAboutMe.Text = user.firstName;
                LabelInfo.Text = user.birthDate + " " + user.department + " " + user.email;
            }
           
        }
       
    }

    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }
}