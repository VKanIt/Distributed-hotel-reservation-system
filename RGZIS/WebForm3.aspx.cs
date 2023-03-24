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
    public partial class WebForm3 : System.Web.UI.Page
    {
        NpgsqlConnection connect;
        NpgsqlCommand com;
        NpgsqlDataReader dr,dr1,dr2;
        DataSet dataSet1 = new DataSet();
        void load(string sql)
        {

            com = new NpgsqlCommand(sql, connect);
                try
                {
                    
                using (NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(com))
                    {

                        dataSet1.Clear();
                        adapter.Fill(dataSet1);
                    NpgsqlCommand com1 = new NpgsqlCommand("select id from room;", connect);
                    dr1 = com1.ExecuteReader();
                    while (dr1.Read())
                    {
                        int id = Convert.ToInt32(dr1[0].ToString());
                        
                        NpgsqlCommand com2 = new NpgsqlCommand("select not((('" + TextBox1.Text + "' between r.datecoming and r.dateleave) or('" + TextBox2.Text + "' between r.datecoming and r.dateleave))) from room as rm, reservation as r where rm.id=r.idroom and rm.id=cast('" + dr1[0].ToString() + "' as integer);", connect);
                        dr2 = com2.ExecuteReader();
                        while (dr2.Read())
                        {
                            
                            if (dr2[0].ToString().Equals("False"))
                            {
                                
                                for (int i = 0; i < dataSet1.Tables[0].Rows.Count; i++)
                                {

                                    if (dataSet1.Tables[0].Rows[i][0].Equals(id))
                                        dataSet1.Tables[0].Rows.RemoveAt(i);
                                }
                                
                            }
                        }

                    }

                    GridView1.DataSource = dataSet1.Tables[0];
                        GridView1.DataBind();

                        int columnsNumber = dataSet1.Tables[0].Columns.Count;
                        for (int i = 0; i < columnsNumber; i++)
                        {
                            if (GridView1.HeaderRow.Cells[i].Text == "idroom")
                                GridView1.HeaderRow.Cells[i].Text = "Номер";
                            if (GridView1.HeaderRow.Cells[i].Text == "floor")
                                GridView1.HeaderRow.Cells[i].Text = "Этаж";
                            if (GridView1.HeaderRow.Cells[i].Text == "name")
                                GridView1.HeaderRow.Cells[i].Text = "Тип номера";
                            if (GridView1.HeaderRow.Cells[i].Text == "numroom")
                                GridView1.HeaderRow.Cells[i].Text = "Количество комнат";
                        }
                    GridView1.HeaderRow.Cells[columnsNumber].Text = "Стоимость за ночь (руб)";
                    }
                }
                catch { }

            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime thisDay = DateTime.Today;
            
            if (!IsPostBack)
            {

                string url = Request.QueryString["url"];
                if (url == "Master")
                {
                    DateTime date1 = DateTime.Parse(Request.QueryString["date1"]);
                    DateTime date2 = DateTime.Parse(Request.QueryString["date2"]);
                    TextBox1.Text = date1.ToString("yyyy-MM-dd");
                    TextBox2.Text = date2.ToString("yyyy-MM-dd");
                }
                else
                {
                    TextBox1.Text = thisDay.ToString("yyyy-MM-dd");
                    TextBox2.Text = thisDay.AddDays(1).ToString("yyyy-MM-dd");
                }
                if (url == "WebForm5")
                {
                    DropDownList2.Items.FindByValue("Эконом").Selected = true;
                }
                if (url == "WebForm6")
                {
                    DropDownList2.Items.FindByValue("Стандарт").Selected = true;
                }
                if (url == "WebForm7")
                {
                    DropDownList2.Items.FindByValue("Стандарт с 2 кроватями").Selected = true;
                }
                if (url == "WebForm8")
                {
                    DropDownList2.Items.FindByValue("Двухкомнатный стандарт").Selected = true;
                }
            }
            connect = new NpgsqlConnection("Server=localhost;Port=5432;Database=hotel2;User Id=postgres;Password=765430asd;Pooling=false;");
            connect.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select distinct r.idroom,rm.floor,te.name,te.numroom,te.cost::money::numeric::float8 from reservation as r,room as rm,typeroom as te where rm.id = r.idroom and not((('" + TextBox1.Text + "' between datecoming and dateleave) or('" + TextBox2.Text + "' between datecoming and dateleave)))"
                       + "and te.numpeople >= cast('" + DropDownList1.SelectedItem.Text + "' as integer) and te.name = '" + DropDownList2.SelectedItem.Text + "' and rm.type = te.idtype;";
                load(sql);
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            com= new NpgsqlCommand("select numpeople from typeroom where name='"+ DropDownList2.SelectedItem.Text + "';", connect);
            dr = com.ExecuteReader();
            dr.Read();
            int num = Convert.ToInt32(dr[0].ToString());
            DropDownList1.Items.Clear();
            for(int i=1;i<=num;i++)
            {
                 DropDownList1.Items.Add(i.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string list = Label1.Text;
            string numpeople = DropDownList1.SelectedItem.Text;
            string date1 = TextBox1.Text;
            string date2 = TextBox2.Text;
            Response.Redirect("~/WebForm9.aspx?list="+list+"&numpeople="+ numpeople+"&date1="+date1+"&date2="+date2);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            
            if (e.CommandName == "Add")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                
                GridViewRow row = GridView1.Rows[index];

                Label1.Text += Server.HtmlDecode(row.Cells[1].Text)+"   ";
                
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sql = "select distinct r.idroom,rm.floor,te.name,te.numroom,te.cost::money::numeric::float8 as ct from reservation as r,room as rm,typeroom as te where rm.id=r.idroom and not((('" + TextBox1.Text + "' between datecoming and dateleave) or('" + TextBox2.Text + "' between datecoming and dateleave)))"
                    + " and rm.type = te.idtype order by r.idroom asc;";
            load(sql);
        }
    }
}