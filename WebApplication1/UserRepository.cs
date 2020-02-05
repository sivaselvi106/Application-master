using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication
{
    public class UserRepository
    {
        public static void GetUser(User user)
        {
            string connectionString = "Data source = ADMIN-PC\\SQLEXPRESS; Initial Catalog = sample; Integrated Security = true";
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("INSERTUSER", sqlConnection);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@userName", user.UserName);
                sqlCommand.Parameters.AddWithValue("@mailId", user.MailId);
                sqlCommand.Parameters.AddWithValue("@userpassword", user.Password);
                sqlCommand.Parameters.AddWithValue("@mobNo", user.MobNo);
                sqlCommand.Parameters.AddWithValue("@age", user.Age);
                sqlCommand.Parameters.AddWithValue("@userState", user.State);
                sqlCommand.Parameters.AddWithValue("@country", user.Country);
                sqlCommand.ExecuteNonQuery();
            }
        }
        public static int CheckValidUser(string mailId, string password)
        {
            string connectionString = "Data source = ADMIN-PC\\SQLEXPRESS; Initial Catalog = sample; Integrated Security = true";
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("SEARCHUSER", sqlConnection);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@mailId", mailId);
                sqlCommand.Parameters.AddWithValue("@password", password);
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                return count;
            }
        }
    }
}