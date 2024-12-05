using System;
using System.Collections.Generic;
using System.Web.UI;

namespace DataTableWebForm
{
    public partial class Datatable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            List<User> users = new List<User>();
          //  {
                //new User { ID = 1, Name = "John Doe", Email = "john@example.com", Phone = "123-456-7890" },
                //new User { ID = 2, Name = "Jane Smith", Email = "jane@example.com", Phone = "234-567-8901" },
                //new User { ID = 3, Name = "Bob Johnson", Email = "bob@example.com", Phone = "345-678-9012" }
      

            for (int i = 1; i <= 10000; i++)
            {
                users.Add(new User
                {
                    ID = i,
                    Name = $"Ibrahim {i}",
                    Email = $"Ibrahim{i}@example.com",
                    Phone = $"{i + 10000}-456-789{i % 10}"
                });
            }













            Repeater1.DataSource = users;
            Repeater1.DataBind();
        }

        // Define the User class for demo purposes
        public class User
        {
            public int ID { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }
        }
    }
}
