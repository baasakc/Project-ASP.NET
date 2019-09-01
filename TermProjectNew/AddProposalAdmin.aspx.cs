using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddProposal : System.Web.UI.Page
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
            else
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
    }
    protected void Save_Click(object sender,EventArgs e)
    {
        string textTitle = TextBoxPropsaltitle.Text;
        string textDesc = TextBoxProposalDesc.Text;
        string date = TextBoxDate.Text;
        string type = DropDownListActivityType.SelectedValue;
        if (textTitle==null&&textDesc==null&&date==null&&type=="Select")
        {
            LabelError.Visible = true;
        }
        else
        {
            using (TermProjectEntities myDB=new TermProjectEntities())
            {
                StudentInformation u = (StudentInformation)Session["user"];
                Activity act = new Activity();
                act.activity_name = textTitle;
                act.activity_description = textDesc;
                act.activity_date = Convert.ToDateTime(date);
                act.studet_id = u.studentId;
                act.isActive = true;
                act.total_approval = 0;
                act.total_dissapproval = 0;
                act.vote = 0;
                act.addedDate = DateTime.Now;
                act.activity_type = type;
                myDB.Activities.Add(act);
                myDB.SaveChanges();
                

            }
            TextBoxPropsaltitle.Text = " ";
            TextBoxProposalDesc.Text = " ";
            TextBoxDate.Text = " ";
            DropDownListActivityType.SelectedValue = "Select";
        }

    }
    protected void Logout_Click(object sender,EventArgs e)
    {
        //Application["counter"] = Application["counter"] - 1; ;
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }

   
}