using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Npgsql;
using Mono.Security;
using System.Data;

namespace RGZIS
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        NpgsqlConnection connect;
        NpgsqlCommand com;
        NpgsqlDataReader dr;
        DataSet dataSet1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            connect = new NpgsqlConnection("Server=localhost;Port=5432;Database=hotel2;User Id=postgres;Password=765430asd;Pooling=false;");
            connect.Open();
            string list = Request.QueryString["list"];
            list = string.Join(" ", list.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries));
            string numpeople = Request.QueryString["numpeople"];
            DateTime date1 = DateTime.Parse(Request.QueryString["date1"]);
            DateTime date2 = DateTime.Parse(Request.QueryString["date2"]);
            TimeSpan time = date2 - date1;
            int countDays = Convert.ToInt32(time.Days);
            string sql = "select r.id,r.floor,te.name,te.numroom,te.cost::money::numeric::float8  from room as r,typeroom as te where r.type = te.idtype and r.id in (";
            int k = 0;
            List<int> lst = new List<int>(list.Split(' ').Select(int.Parse));
            foreach (int id in lst)
            {
                    k++;
                    sql += id;
                    if (k < lst.Count)
                        sql += ",";
            }
            sql += ");";
            
            com = new NpgsqlCommand(sql, connect);
            try
            {

                using (NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(com))
                {

                    dataSet1.Clear();
                    adapter.Fill(dataSet1);

                    GridView1.DataSource = dataSet1.Tables[0];
                    GridView1.DataBind();

                    int columnsNumber = dataSet1.Tables[0].Columns.Count;
                    int rowsNumber = dataSet1.Tables[0].Rows.Count;
                    for (int i = 0; i < columnsNumber; i++)
                    {
                        if (GridView1.HeaderRow.Cells[i].Text == "id")
                            GridView1.HeaderRow.Cells[i].Text = "Номер";
                        if (GridView1.HeaderRow.Cells[i].Text == "floor")
                            GridView1.HeaderRow.Cells[i].Text = "Этаж";
                        if (GridView1.HeaderRow.Cells[i].Text == "name")
                            GridView1.HeaderRow.Cells[i].Text = "Тип номера";
                        if (GridView1.HeaderRow.Cells[i].Text == "numroom")
                            GridView1.HeaderRow.Cells[i].Text = "Количество комнат";
                        if (GridView1.HeaderRow.Cells[i].Text == "cost")
                            GridView1.HeaderRow.Cells[i].Text = "Полная стоимость (руб)";
                    }
                    for (int i = 0; i < rowsNumber; i++)
                    {
                        int str = Convert.ToInt32(GridView1.Rows[i].Cells[columnsNumber - 1].Text);
                        GridView1.Rows[i].Cells[columnsNumber - 1].Text = Convert.ToString(str*countDays);
                    }
                }

            }
            catch { }
            Label1.Text = numpeople;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string list = Request.QueryString["list"];
            list = string.Join(" ", list.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries));
            List<int> lst = new List<int>(list.Split(' ').Select(int.Parse));
            string numpeople = Request.QueryString["numpeople"];
            string date1 = Request.QueryString["date1"];
            string date2 = Request.QueryString["date2"];
            string s;
            if (RadioButtonList1.SelectedValue == "Мужской")
                s = "1";
            else
                s = "0";
            dataSet1.Clear();
            com = new NpgsqlCommand("insert into client values (default,'" + TextBox1.Text + "','" + TextBox2.Text + "',cast('" + TextBox3.Text + "' as date),'"+s+"')", connect);
            NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(com);
            adapter.Fill(dataSet1);
            
            com = new NpgsqlCommand("select c.id from client as c where c.name='" + TextBox1.Text + "' and c.fam='" + TextBox2.Text + "' and c.datebirth=cast('" + TextBox3.Text + "' as date) and c.sex=cast('" + s + "' as integer);", connect);
            dr = com.ExecuteReader();
            dr.Read();
            string idclient = dr[0].ToString();
            foreach (int idr in lst)
            {
                dataSet1.Clear();
                com = new NpgsqlCommand("insert into reservation values (default,cast('" + idclient + "' as integer),cast('" + idr + "' as integer),cast('"+date1+ "' as date),cast('" + date2 + "' as date),cast('" + numpeople + "' as integer));", connect);
                adapter = new NpgsqlDataAdapter(com);
                adapter.Fill(dataSet1);
            }
            Response.Redirect("~/WebForm10.aspx");
        }
    }
}