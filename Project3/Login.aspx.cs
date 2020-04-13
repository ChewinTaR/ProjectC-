using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP-2ST9BDB;Initial Catalog=peemasit1DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string query = "select * from LoginData where username = @username and password = @password";
            SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
            sqlConnection.Open();
            sqlCommand.Parameters.AddWithValue("@username", txtUsername.Text);
            sqlCommand.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.Read())
            {
                Server.Transfer("Welcome.aspx");
            }
            else
            {
                Response.Write("Your username or password incorrectly, Please check and try again.");
            }
            sqlConnection.Close();
        }

        protected void BtnRegister_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}