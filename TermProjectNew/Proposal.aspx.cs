using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Proposal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentInformation user = (StudentInformation)Session["user"];
        if (Session["activity_id"] == null)
        {
            if (user==null)
            {
                Response.Redirect("Login.aspx");
            }
            if (user.isAdmin == true)
            {
                Response.Redirect("ProposalsAdmin.aspx");
            }
            else
            {
                Response.Redirect("ProposalsUser.aspx");
            }
        }
        if (user.isAdmin == true)
        {
            LinkButtonHome.PostBackUrl = "HomePageAdmin.aspx";
        }
        else
        {
            LinkButtonHome.PostBackUrl = "HomePageUser.aspx";

        }
        string id = (string)Session["activity_id"];
        int x = Int32.Parse(id);
        using (var mydb = new TermProjectEntities())
        {
            var comments = (from u in mydb.Comments
                            where u.activity_id == x
                            select u ).ToList();
            GridView1.DataSource = comments;
            GridView1.DataBind();

            if (user.photo != null)
            {
                var base64 = Convert.ToBase64String(user.photo);
                var imgsrc = string.Format("data:image/jpg;base64,{0}", base64);
                ImageProfilePic.ImageUrl = imgsrc;
            }

            LabelUsernameAboutMe.Text = user.firstName;
            LabelInfo.Text = user.birthDate + " " + user.department + " " + user.email;
            var act = (from u in mydb.Activities
                       where u.activity_id == x
                       select u).SingleOrDefault();
            LabelName.Text = "Proposal Title: " + act.activity_name;
            LabelDesc.Text = "Proposal Description: " + act.activity_description;
            LabelTotalVote.Text = "Total Vote " + act.vote.ToString();
            LabelTotalApp.Text = "Total Approval: " + act.total_approval.ToString();
            LabelTotalDiss.Text = "Total Disapproval: " + act.total_dissapproval.ToString();
            var votedby = (from u in mydb.VotedBies
                           where user.studentId == u.student_id && x == u.activity_id
                           select u).SingleOrDefault();
            var appDisapp = (from u in mydb.ApprovalDisapprovals
                             where (u.approval == true || u.disapproval == true) && u.activity_id == x && u.student_id == user.studentId
                             select u).SingleOrDefault();
            if (votedby != null)
            {
                RadioButtonList1.SelectedValue = votedby.vote.ToString();
            }
            if (appDisapp != null)
            {
                if (appDisapp.approval == true)
                {
                    CheckBoxListApp.SelectedValue = "1";

                }
                else if (appDisapp.disapproval == true)
                {
                    CheckBoxListApp.SelectedValue = "0";

                }
            }


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (var mydb = new TermProjectEntities())
        {
            StudentInformation user = (StudentInformation)Session["user"];
            string id = (string)Session["activity_id"];
            int x = Int32.Parse(id);
            var votedby = (from u in mydb.VotedBies
                           where user.studentId == u.student_id && x == u.activity_id
                           select u).SingleOrDefault();
            var appDisapp = (from u in mydb.ApprovalDisapprovals
                             where (u.approval == true || u.disapproval == true) && u.activity_id == x && u.student_id == user.studentId
                             select u).SingleOrDefault();
            var act = (from u in mydb.Activities
                       where u.activity_id == x
                       select u).SingleOrDefault();
            var comments = (from u in mydb.Comments
                            select u).SingleOrDefault();
            int y = 0;
            if (RadioButtonList1.SelectedValue.ToString()!=null)
            {
                 y = Int16.Parse(RadioButtonList1.SelectedValue.ToString());
            }
            else if (RadioButtonList1.SelectedValue == null)
            {
                y = 0;
            }
            if (TextBox1.Text!=null)
            {
                Comment c = new Comment();
                c.activity_id = x;
                c.student_id = user.studentId;
                c.comment1 = TextBox1.Text;
                mydb.Comments.Add(c);
                mydb.SaveChanges();

            }
            if (votedby==null)
            {
                VotedBy v = new VotedBy();
                v.activity_id = x;
                v.student_id = user.studentId;
                v.vote = y;
                act.vote = act.vote + y;
                mydb.VotedBies.Add(v);
                mydb.SaveChanges();
                
            }
            else
            {
                LabelErrorVote.Visible = true;
            }
            if (appDisapp==null)
            {
                var approvalDisapproval = new ApprovalDisapproval();
                if (CheckBoxListApp.SelectedValue=="0"&&CheckBoxListApp.SelectedValue=="1")
                {
                    LabelAppDisC.Visible = true;
                }
                else
                {
                    string ad = CheckBoxListApp.SelectedValue;
                    if (ad=="0")
                    {
                        approvalDisapproval.disapproval = true;
                        approvalDisapproval.activity_id = x;
                        approvalDisapproval.student_id = user.studentId;
                        act.total_dissapproval = act.total_dissapproval + 1;
                        mydb.ApprovalDisapprovals.Add(approvalDisapproval);
                        mydb.SaveChanges();
                       
                    }
                    else if(ad=="1")
                    {
                        approvalDisapproval.approval = true;
                        approvalDisapproval.activity_id = x;
                        approvalDisapproval.student_id = user.studentId;
                        act.total_dissapproval = act.total_approval + 1;
                        mydb.ApprovalDisapprovals.Add(approvalDisapproval);
                        mydb.SaveChanges();
                    }
                }
            }

        }
    }

    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }
}