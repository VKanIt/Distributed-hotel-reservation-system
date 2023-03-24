<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="RGZIS.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Бронирование</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.text{
    margin-left:6%;
        margin-bottom: 0%;
    }
.h {
    font-size: 180%; 
    font-family: 'Arial';
    margin-bottom:2%;
    line-height:60px;
  }
.h1 {
    font-size: 120%; 
    font-family: 'Arial';
    margin-top:20px;
    margin-bottom:20px;
    line-height:40px;
  }
.button{
    margin-top:3%;
    font-size:110%;
    font-family:'Arial';
}
</style>
<div style="text-align:center;">
    <h3 class="h">Бронирование</h3>
</div>
<div style="margin-left:auto; margin-right:auto;">
     <center><p><text style="font-size: 100%; font-family: 'Arial';">Имя:</text>
    <asp:TextBox ID="TextBox1" runat="server" Width="215px"  Font-Names="Arial" Font-Size="Medium" Height="20px"></asp:TextBox></p><br/>
    <p><text style="font-size: 100%; font-family: 'Arial';">Фамилия:</text>
    <asp:TextBox ID="TextBox2" runat="server" Width="215px"  Font-Names="Arial" Font-Size="Medium" Height="20px"></asp:TextBox></p><br/>
         <p><text style="font-size: 100%; font-family: 'Arial';">Дата рождения:</text>
    <asp:TextBox ID="TextBox3" runat="server" textmode="Date" Width="215px"  Font-Names="Arial" Font-Size="Medium" Height="20px"></asp:TextBox></p><br/>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Names="Arial" Font-Size="Medium" Width="248px">
             <asp:ListItem>Мужской</asp:ListItem>
             <asp:ListItem>Женский</asp:ListItem>
         </asp:RadioButtonList>
     </center>
</div>
<div style="text-align:center;">
    <h3 class="h1">Выбранные номера</h3>
</div>
<div>
    <center><text style="font-size: 100%; font-family: 'Arial'; margin-right:1%;">Количество человек в каждом номере:</text>
    <asp:Label ID="Label1" runat="server" Text="" Font-Names="Arial" Font-Size="Medium"></asp:Label></center>
        <br/>
     <center><asp:GridView ID="GridView1" runat="server" Height="196px" Width="596px" BackColor="White" BorderColor="#990813" BorderStyle="Groove">
        <HeaderStyle Font-Names="Arial" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle Font-Names="Arial" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView></center>
    <br/>
    <center><asp:Button ID="Button2" runat="server" Text="Подтвердить" BackColor="#CC3300" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" CssClass="button" OnClick="Button2_Click"/></center>
    <br/>
</div>
</asp:Content>
