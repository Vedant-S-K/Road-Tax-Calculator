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
    public partial class Car : System.Web.UI.Page
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

        protected void TaxBtn_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into Car values('" + RegDate.Text + "','" + Price.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            double num1 = Convert.ToInt32(Price.Text);
            double num2, num3, num4;
            double tax;

            DateTime date = Convert.ToDateTime(RegDate.Text);

            int petrol = 1000;
            int cng = 2000;
            int diesel = 3000;
            int personal = 500;
            int commercial = 700;

            //num1 code:
            num1 = Math.Ceiling(num1 / 100000) * 1000;


            //num2 code:
            switch (DropDownList1.SelectedValue)
            {
                case "1":
                    num2 = petrol;
                    break;
                case "2":
                    num2 = cng;
                    break;
                case "3":
                    num2 = diesel;
                    break;
                default:
                    num2 = 0;
                    break;
            }


            //num3 code:
            switch (DropDownList2.SelectedValue)
            {
                case "1":
                    num3 = personal;
                    break;
                case "2":
                    num3 = commercial;
                    break;
                default:
                    num3 = 0;
                    break;
            }


            //num4 code:
            if (CheckRange(date.Year, 2000, 2005))
            {
                num4 = 100;
            }
            else if (CheckRange(date.Year, 2006, 2010))
            {
                num4 = 200;
            }
            else if (CheckRange(date.Year, 2011, 2015))
            {
                num4 = 300;
            }
            else if (CheckRange(date.Year, 2016, 2020))
            {
                num4 = 400;
            }
            else
            {
                num4 = 0;
            }

            tax = num1 + num2 + num3 + num4;
            CalTax.Text = tax.ToString();
        }

        private bool CheckRange(int toCheck, int left, int right)
        {

            if (toCheck > left && toCheck <= right)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

            //RegDate.Text = "";
            //Price.Text = "";
            //this.DropDownList1.ClearSelection();
            //this.DropDownList2.ClearSelection();
        
    }
}