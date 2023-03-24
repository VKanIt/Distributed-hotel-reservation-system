<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="RGZIS.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Бронирование</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .h {
    font-size: 200%; 
    font-family: 'Arial';
    margin-bottom:2%;
    line-height:60px;
  }
</style>
    <div>
        <br/><br/><br/>
    <center><h3 class="h">Операция выполнена успешна!</h3></center>
        <br/><br/><br/>
        <center><asp:Button ID="Button2" runat="server" Text="Вернуться на главную" BackColor="#CC3300" Font-Size="Medium" BorderStyle="Double" Height="48px" Width="263px" ForeColor="White" OnClick="Button2_Click"/>
    </center><br/><br/><br/>
    </div>
</asp:Content>
