<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="RGZIS.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Бронирование</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.list{
    margin-right:5%;
        margin-left: 0%;
    }
.button{
    margin-top:5%;
    font-size:110%;
    font-family:'Arial';
}
.button1{
    margin-top:5%;
    font-size:110%;
    font-family:'Arial';
    margin-left:50px;
}
</style>
<div style="background:#dddddd; width:61%; height:900px; margin-left:auto; margin-right:auto; text-align:center;">
    <h1 style="line-height:60px; font-family: 'Arial'; font-size: 140%;">Выберите даты заезда, выезда и количество гостей</h1>
    <p style="margin-bottom:2%;"><text style="font-size: 110%; font-family: 'Arial'; margin-right:18%;">Дата заезда</text>
    <text style="font-size: 110%; font-family: 'Arial';">Дата выезда</text></p>

    <asp:TextBox ID="TextBox1" runat="server" textmode="Date" Font-Names="Arial" Height="31px" Width="214px" CssClass="list"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" textmode="Date" Font-Names="Arial" Height="31px" Width="214px"></asp:TextBox>
    
    <p style="margin-bottom:2%; margin-top:2%; margin-left:-2%;"><text style="font-size: 110%; font-family: 'Arial'; margin-right:17%;">Количество гостей</text>
    <text style="font-size: 110%; font-family: 'Arial'; margin-left:-3%;">Тип номера</text></p>

    <p><asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial" Height="31px" Width="214px" CssClass="list"></asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Arial" Height="31px" Width="214px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem>Эконом</asp:ListItem>
        <asp:ListItem>Стандарт</asp:ListItem>
        <asp:ListItem>Стандарт с 2 кроватями</asp:ListItem>
        <asp:ListItem>Двухкомнатный стандарт</asp:ListItem>
        </asp:DropDownList></p>

    <asp:Button ID="Button1" runat="server" Text="Найти" BackColor="#CC3300" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" CssClass="button" OnClick="Button1_Click"/>
    <asp:Button ID="Button3" runat="server" Text="Вывести все номера" BackColor="#CC3300" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" CssClass="button1" OnClick="Button3_Click"/>
    <br/><br/>
    <center><asp:GridView ID="GridView1" runat="server" Height="196px" Width="596px" BackColor="White" BorderColor="#990813" BorderStyle="Groove" OnRowCommand="GridView1_RowCommand">
        <HeaderStyle Font-Names="Arial" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle Font-Names="Arial" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
        <asp:buttonfield buttontype="button" commandname="Add" text="Добавить" HeaderStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" FooterStyle-BorderStyle="Double" FooterStyle-BackColor="#CC3300" FooterStyle-ForeColor="White" />
            </Columns>
            </asp:GridView></center>
    <br/>
    <text style="font-size: 100%; font-family: 'Arial'; margin-right:1%;">Выбранные номера:</text>
    <asp:Label ID="Label1" runat="server" Text="" Font-Names="Arial" Font-Size="Medium"></asp:Label><br/>
    <asp:Button ID="Button2" runat="server" Text="Забронировать" BackColor="#CC3300" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" CssClass="button" OnClick="Button2_Click"/>
    
</div>
</asp:Content>
