<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="RGZIS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Номера</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
#grid { 
  display: grid;
  grid-template-rows: 1fr 1fr;
  grid-template-columns: 1fr 1fr;
  grid-gap: 1vw;
  }
#grid > div {
  text-align: center;
  margin-top:30px; 
  height: 420px;
}
.label{
    margin-right:30px;
    margin-left:5px;
}
</style>
<div id="grid">
    <div>
        <a runat="server" href="~/WebForm5.aspx" style="font-size: 150%; font-family: 'Arial'; color: black;">"Эконом"</a><br/>
        <img style="margin-top:15px; height: 250px; width: 380px;" src="room1.png"/>
        <div style="margin-top:15px;">
            <text style="font-size: 110%; font-family: 'Arial';">Стоимость:</text>
            <asp:Label ID="Label1" runat="server" Text="" CssClass="label" Font-Size="Medium" Font-Names="Arial"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Проверить наличие" BackColor="#CC3300" BorderStyle="Double" Font-Names="Arial" Height="31px" Width="189px" ForeColor="White" Font-Size="Medium" OnClick="Button1_Click" />
        </div>
    </div>
    <div>
        <a runat="server" href="~/WebForm6.aspx" style="font-size: 150%; font-family: 'Arial'; color: black;">"Стандарт"</a><br/>
        <img style="margin-top:15px; height: 250px; width: 380px;" src="room2.png"/>
        <div style="margin-top:15px;">
            <text style="font-size: 110%; font-family: 'Arial';">Стоимость:</text>
            <asp:Label ID="Label2" runat="server" Text="" CssClass="label" Font-Size="Medium" Font-Names="Arial"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="Проверить наличие" BackColor="#CC3300" BorderStyle="Double" Font-Names="Arial" Height="31px" Width="189px" ForeColor="White" Font-Size="Medium" OnClick="Button2_Click" />
        </div>
    </div>
    <div>
        <a runat="server" href="~/WebForm7.aspx" style="font-size: 150%; font-family: 'Arial'; color: black;">"Стандарт" (с 2 кроватями)</a><br/>
        <img style="margin-top:15px; height: 250px; width: 380px;" src="room3.png"/>
        <div style="margin-top:15px;">
            <text style="font-size: 110%; font-family: 'Arial';">Стоимость:</text>
            <asp:Label ID="Label3" runat="server" Text="" CssClass="label" Font-Size="Medium" Font-Names="Arial"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Проверить наличие" BackColor="#CC3300" BorderStyle="Double" Font-Names="Arial" Height="31px" Width="189px" ForeColor="White" Font-Size="Medium" OnClick="Button3_Click" />
        </div>
    </div>
    <div>
        <a runat="server" href="~/WebForm8.aspx" style="font-size: 150%; font-family: 'Arial'; color: black;">"Двухкомнатный стандарт"</a><br/>
        <img style="margin-top:15px; height: 250px; width: 380px;" src="room4.png"/>
        <div style="margin-top:15px;">
            <text style="font-size: 110%; font-family: 'Arial';">Стоимость:</text>
            <asp:Label ID="Label4" runat="server" Text="" CssClass="label" Font-Size="Medium" Font-Names="Arial"></asp:Label>
            <asp:Button ID="Button4" runat="server" Text="Проверить наличие" BackColor="#CC3300" BorderStyle="Double" Font-Names="Arial" Height="31px" Width="189px" ForeColor="White" Font-Size="Medium" OnClick="Button4_Click" />
        </div>
    </div>
</div>
</asp:Content>
