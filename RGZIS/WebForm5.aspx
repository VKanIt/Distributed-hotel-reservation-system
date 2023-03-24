<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="RGZIS.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Номера</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.label{
    margin-right:30px;
    margin-left:5px;
    font-size: 120%;
    font-family: 'Arial';
}
.button{
    font-size: 110%;
    font-family: 'Arial';
    margin-left:30%;
}
.text{
    font-size: 100%; 
    font-family: 'Arial';
}
</style>
    <div><center>
        <h1 style="line-height:60px;   margin-bottom:10px; font-family: 'Arial';">Эконом</h1>
        <img style="margin-top:15px; margin-right:15px; height: 250px; width: 380px;" src="room1.png"/>
        <img style="margin-top:15px; margin-right:15px; height: 250px; width: 380px;" src="room11.jpg"/>
        <img style="margin-top:15px; margin-right:15px; height: 250px; width: 380px;" src="room12.jpg"/></center>
    </div>
    <div style="margin-top:50px; margin-left:20%;">
        <text style="font-size: 120%; font-family: 'Arial';">Стоимость:</text>
        <asp:Label ID="Label1" runat="server" Text="" CssClass="label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Проверить наличие" BackColor="#CC3300" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" CssClass="button" OnClick="Button1_Click"/>
    </div><br/><br/>
    <div style="margin-left:20%;">
        <h2 style="font-size: 120%; font-family: 'Arial';">Описание</h2><br/>
        <p style="font-size: 100%; font-family: 'Arial';">Площадь номера: 13 кв.м.<br/>
            Номер с одной жилой комнатой, собственной ванной комнатой и балконом.
        </p><br/>
        <h2 style="font-size: 120%; font-family: 'Arial';">Удобства</h2><br/>
        <asp:BulletedList ID="BulletedList1" runat="server" style="font-size: 100%; font-family: 'Arial';"></asp:BulletedList>
           <br/>   
    </div>
</asp:Content>
