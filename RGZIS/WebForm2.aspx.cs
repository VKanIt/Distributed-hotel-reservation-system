using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using Mono.Security;
using System.Data;

namespace RGZIS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NpgsqlConnection connect;
        NpgsqlCommand com;
        NpgsqlDataReader dr;
        DataSet dataSet1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new NpgsqlConnection("Server=localhost;Port=5432;Database=hotel2;User Id=postgres;Password=765430asd;Pooling=false;");
            connect.Open();
            com = new NpgsqlCommand("select cost::money::numeric::float8 from typeroom where name='Эконом';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            Label1.Text = dr[0].ToString() + " руб.";
            com = new NpgsqlCommand("select cost::money::numeric::float8 from typeroom where name='Стандарт';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            Label2.Text = dr[0].ToString() + " руб.";
            com = new NpgsqlCommand("select cost::money::numeric::float8 from typeroom where name='Стандарт с 2 кроватями';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            Label3.Text = dr[0].ToString() + " руб.";
            com = new NpgsqlCommand("select cost::money::numeric::float8 from typeroom where name='Двухкомнатный стандарт';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            Label4.Text = dr[0].ToString() + " руб.";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "WebForm5";
            string textbox = "Эконом";
            Response.Redirect("~/WebForm3.aspx?url=" + url + "&textbox=" + textbox);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url = "WebForm6";
            string textbox = "Стандарт";
            Response.Redirect("~/WebForm3.aspx?url=" + url + "&textbox=" + textbox);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "WebForm7";
            string textbox = "Стандарт с 2 кровати";
            Response.Redirect("~/WebForm3.aspx?url=" + url + "&textbox=" + textbox);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string url = "WebForm8";
            string textbox = "Двухкомнатный стандарт";
            Response.Redirect("~/WebForm3.aspx?url=" + url + "&textbox=" + textbox);
        }
    }
}