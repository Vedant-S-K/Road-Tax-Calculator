using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RoadTaxCalculator
{
    public partial class Bike : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CarBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car.aspx");
        }

        protected void BikeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bike.aspx");
        }

        protected void TaxBtn2_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into Bike values('" + RegDate.Text + "','" + Price.Text + "','" + BikeCC.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            RegDate.Text = "";
            Price.Text = "";
            BikeCC.Text = "";
        }
    }
}