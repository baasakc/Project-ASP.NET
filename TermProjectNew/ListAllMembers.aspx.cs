using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListAllUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            StudentInformation user = (StudentInformation)Session["user"];
            if (user == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (user.isAdmin == false)
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
            using (var mydb = new TermProjectEntities())
            {
                var allUsers = (from u in mydb.StudentInformations
                                where u.isAdmin == false
                                select u).ToList();
                GridViewLab3.DataSource = allUsers;
                GridViewLab3.DataBind();

            }

        }

    }

    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }
    protected void Save_Click(object sender,EventArgs e)
    {
        using (var mydb=new TermProjectEntities())
        {
            foreach (GridViewRow row in GridViewLab3.Rows)
            {
                CheckBox is_reviewer_checkbox = (CheckBox)row.FindControl("CheckBoxReviewer");
                Label lname_textbox = (Label)row.FindControl("Labellname");
                Label email_textbox = (Label)row.FindControl("Labelemail");
                var user = (from u in mydb.StudentInformations
                            where u.isActive == true && u.email == email_textbox.Text
                            select u).SingleOrDefault();
                user.isAdmin = is_reviewer_checkbox.Checked;

            }
            mydb.SaveChanges();
        }
    }
}