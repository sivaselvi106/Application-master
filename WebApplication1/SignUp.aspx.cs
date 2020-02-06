using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication
{
    public partial class SignUp :Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            StateList_SelectedIndexChanged();
            CountryList_SelectedIndexChanged();
        }
        protected void StateList_SelectedIndexChanged()
        {
            if (!IsPostBack)
            {
                
                ListItem tn = new ListItem("TamilNadu");
                ListItem ap = new ListItem("AndhraPradesh");
                ListItem k = new ListItem("Kerala");
                ListItem ka = new ListItem("Karnataka");
                ListItem up = new ListItem("UttarPradesh");
                ListItem mp = new ListItem("MadhyaPradesh");
                StateDropDownList.Items.Add(tn);
                StateDropDownList.Items.Add(ap);
                StateDropDownList.Items.Add(k);
                StateDropDownList.Items.Add(ka);
                StateDropDownList.Items.Add(up);
                StateDropDownList.Items.Add(mp);
            }
        }
        protected void CountryList_SelectedIndexChanged()
        {
            if (!IsPostBack)
            {
                ListItem i = new ListItem("India");
                ListItem c = new ListItem("China");
                ListItem j = new ListItem("Japan");
                ListItem k = new ListItem("Korea");
                ListItem sl = new ListItem("SriLanka");
                ListItem n = new ListItem("NetherLand");
                CountryDropDownList.Items.Add(i);
                CountryDropDownList.Items.Add(c);
                CountryDropDownList.Items.Add(j);
                CountryDropDownList.Items.Add(k);
                CountryDropDownList.Items.Add(sl);
                CountryDropDownList.Items.Add(n);
            }
        }
        protected void BtnSendData_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("UserDetails");
            string userName = txtUsername.Text;
            string mailID = txtMailID.Text;
            string password = txtPassword.Text;
            long mobNo = Convert.ToInt64(txtMobNo.Text);
            int age = Convert.ToInt32(txtAge.Text);
            string state = StateDropDownList.Text;
            string country = CountryDropDownList.Text;
            User user = new User(userName,mailID,password,mobNo,age,state,country);
            UserRepository.GetUser(user);
            Response.Redirect("Login.aspx");
        }
    }
}