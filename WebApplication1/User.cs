using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication
{
    public class User
    {
        public string UserName { get; set; }
        public string MailId { get; set; }
        public string Password { get; set; }
        public long MobNo { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public int Age { get; set; }
        public User(string userName,string mailId,string password,long mobNo,int age,string state,string country)
        {
            this.UserName = userName;
            this.MailId = mailId;
            this.Password = password;
            this.MobNo = mobNo;
            this.Age = age;
            this.State = state;
            this.Country = country;
        }
    }
}