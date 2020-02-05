using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Login : Page
    {
        protected void BtnSendData_Click(object sender, EventArgs e)
        {
            string mailId = txtMailId.Text;
            string password = txtPassword.Text;
            int status = UserRepository.CheckValidUser(mailId,password);
            if(status == 1)
            Response.Redirect("HomePage.aspx");
            else
                labelErrorMsg.Text = "Invalid credentials!!!";
        }
    }
}