using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace RGZIS
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime thisDay = DateTime.Today;
                TextBox1.Text = thisDay.ToString("yyyy-MM-dd");
                TextBox2.Text = thisDay.AddDays(1).ToString("yyyy-MM-dd");

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string date1 = TextBox1.Text;
            string date2 = TextBox2.Text;
            string url = "Master";
            Response.Redirect("~/WebForm3.aspx?date1="+ date1+"&date2="+date2+"&url="+url);

        }
    }
}