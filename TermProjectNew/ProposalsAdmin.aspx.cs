using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class Proposals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            using (TermProjectEntities myDB = new TermProjectEntities())
            {

                if (user.photo != null)
                {
                    var base64 = Convert.ToBase64String(user.photo);
                    var imgsrc = string.Format("data:image/jpg;base64,{0}", base64);
                    ImageProfilePic.ImageUrl = imgsrc;
                }

                LabelUsernameAboutMe.Text = user.firstName;
                LabelInfo.Text = user.birthDate + " " + user.department + " " + user.email;

                DateTime today = DateTime.Now;
                var allActs = (from u in myDB.Activities
                               select u).ToList();
                List<Activity> allActs2 = new List<Activity>();
                foreach (var item in allActs)
                {
                    DateTime result;
                    int? d3 = (int?)(today - item.addedDate)?.TotalDays;
                    if (d3<15)
                    {
                   
                        allActs2.Add(item);
                    }
                }
                ListViewActivities.DataSource = allActs2;
                ListViewActivities.DataBind();
                
            }
        }
    }


    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        //Application["counter"] = Application["counter"] - 1;
        Session["user"] = null;
        Response.Redirect("Login.aspx");

    }
    protected void See_click(object sender, CommandEventArgs e)
    {
        string x = e.CommandArgument.ToString();
        Session["activity_id"] = x;
        Response.Redirect("Proposal.aspx");
    }
}