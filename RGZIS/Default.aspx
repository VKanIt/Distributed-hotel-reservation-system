<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RGZIS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Гостиница</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.text{
    font-family: 'Arial';
    font-size: 100%;
    margin-top:2%;
}
.button{
    margin-top:5%;
    margin-bottom:3%;
}
</style>
    <div>
        <center><h1 style="line-height:60px; font-family: 'Arial'; font-size: 190%;">Гостиница Radisson</h1>
        </center>
    </div>
    <div style="margin-left:auto;margin-right:auto; width:60%;">
        <p class="text">
            Гостиница «Radisson» расположена в центре Москвы, в 5 минутах езды от железнодорожного вокзала, в 20 минутах от Аэропорта «Новый».
        </p>
        <p class="text">
            К услугам гостей предоставляется круглосуточная стойка регистрации, современный конференц-зал, организация экскурсий, трансфер, сувенирная продукция.
        </p>
        <p class="text">
            Завтрак, обед и ужин подаются в кафе «Гости» на первом этаже.
        </p>
        <p class="text">
            В уютном баре «Chester pub» можно отдохнуть в приятной атмосфере изысканной обстановки и ассортиментом блюд традиционной европейской кухни.
        </p>
        <p class="text">
            Торговые центры «Макси Молл» , «ЭкоДом», торгово-развлекательный центр «Энерго-Плаза», Городской Дворец Культуры, кафе, пекарня, супермаркет находятся в 2 минутах ходьбы от гостиницы. Спортивно-зрелищный комплекс «Платинум Арена» находится в 700 м (9 минут пешком). До городских прудов можно дойти за 12 минут.
        </p>
        <p class="text">
            Располагаясь в нашем отеле, постояльцы смогут в полной мере ощутить заботу, внимательность и предусмотрительность персонала, нацеленные на комфортное пребывание каждого посетителя.
        </p>
    </div>
    <center><asp:Button ID="Button1" runat="server" Text="Бронирование" Height="54px" Width="228px" BackColor="#CC3300" BorderStyle="Double" Font-Names="Arial" ForeColor="White" Font-Size="Medium" CssClass="button" OnClick="Button1_Click"/></center>
</asp:Content>
