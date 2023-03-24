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
    public partial class WebForm6 : System.Web.UI.Page
    {
        NpgsqlConnection connect;
        NpgsqlCommand com;
        NpgsqlDataReader dr;
        DataSet dataSet1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new NpgsqlConnection("Server=localhost;Port=5432;Database=hotel2;User Id=postgres;Password=765430asd;Pooling=false;");
            connect.Open();
            com = new NpgsqlCommand("select cost::money::numeric::float8 from typeroom where name='Стандарт';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            Label1.Text = dr[0].ToString() + " руб.";

            com = new NpgsqlCommand("select cf.name from typeroom as te, comfortroom as cr, comfort as cf where te.name='Стандарт' and cf.idcom=cr.idcom and te.idtype=cr.idtyperoom;", connect);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                BulletedList1.Items.Add(dr[0].ToString());
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "WebForm6";
            string textbox = "Стандарт";
            Response.Redirect("~/WebForm3.aspx?url=" + url + "&textbox=" + textbox);
        }
    }
}