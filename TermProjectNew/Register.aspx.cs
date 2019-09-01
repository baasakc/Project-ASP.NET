using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regitser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (TermProjectEntities myDB = new TermProjectEntities())
        {
            var user = (from u in myDB.StudentInformations
                        where u.email == email.Text
                        select u).SingleOrDefault();
            if (TextBoxUsername.Text==null||firstname.Text==null||birthday.Text==null||department.Text==null||email.Text==null||lastname.Text==null||password.Text==null)
            {
                LabelEmptyError.Visible = true;
            }
            else
            {
                if (password.Text.Length<8)
                {
                    LabelError.Text = "Şifreniz en az 8 karakter uzunluğunda olmalıdır.";
                    LabelError.Visible = true;
                }
                else
                {
                    if (user == null)
                    {
                        var newStudent = new StudentInformation();
                        newStudent.username = TextBoxUsername.Text;
                        newStudent.firstName = firstname.Text;
                        newStudent.birthDate = birthday.Text;
                        newStudent.department = department.Text;
                        newStudent.email = email.Text;
                        newStudent.lastName = lastname.Text;
                        newStudent.password = password.Text;
                        //newStudent.isAdmin = false;
                        int len = FileUploadImage.PostedFile.ContentLength;
                        byte[] pic = new byte[len + 1];
                        FileUploadImage.PostedFile.InputStream.Read(pic, 0, len);
                        newStudent.photo = pic;
                        newStudent.isAdmin = false;
                        newStudent.isActive = true;

                        myDB.StudentInformations.Add(newStudent);
                        myDB.SaveChanges();
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        LabelError.Visible = true;
                    }
                }
                
            }
            

           
        }
    }
}