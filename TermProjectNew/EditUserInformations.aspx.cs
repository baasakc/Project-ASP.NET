using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUserInformations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentInformation user = (StudentInformation)Session["user"];
        if (Session["user"] == null)
        {

            Response.Redirect("Login.aspx");

        }
        if (user.isAdmin == true)
        {
            LinkButtonHome.PostBackUrl = "HomePageAdmin.aspx";
        }
        else
        {
            LinkButtonHome.PostBackUrl = "HomePageUser.aspx";

        }

        using (var mydb = new TermProjectEntities())
        {
            if (user.photo != null)
            {
                var base64 = Convert.ToBase64String(user.photo);
                var imgsrc = string.Format("data:image/jpg;base64,{0}", base64);
                ImageProfilePic.ImageUrl = imgsrc;
            }

            LabelUsernameAboutMe.Text = user.firstName;
            LabelInfo.Text = user.birthDate + " " + user.department + " " + user.email;


        }
    }
    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        var user = (StudentInformation)Session["user"];
        using (var mydb = new TermProjectEntities())
        {
            if (TextBoxEmail != null)
            {
                user.email = TextBoxEmail.Text;
                mydb.SaveChanges();
            }
            else if (TextBoxEmail==null)
            {
                user.email = user.email;
                mydb.SaveChanges();
                
            }
            if (TextBoxDate.Text != null)
            {
                user.birthDate = TextBoxDate.Text;
                mydb.SaveChanges();
            }
            else if (TextBoxDate.Text == null)
            {
                user.birthDate = user.birthDate;
                mydb.SaveChanges();
            }
            if (FileUploadImageUpload != null)
            {
                int len = FileUploadImageUpload.PostedFile.ContentLength;
                byte[] pic = new byte[len + 1];
                FileUploadImageUpload.PostedFile.InputStream.Read(pic, 0, len);
                user.photo = pic;
                mydb.SaveChanges();
            }
            else if (FileUploadImageUpload.PostedFile == null)
            {
                user.photo = user.photo;
            }
        }

    }
}