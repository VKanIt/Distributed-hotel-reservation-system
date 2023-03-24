<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="RGZIS.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Услуги</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
#grid { 
  display: grid;
  grid-template-rows: 1fr 1fr 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr;
  grid-gap: 1vw;
  }
#grid > div {
  margin-top:3px; 
  height: 70px;
  margin-left:35%;
}
.h {
    font-size: 180%; 
    font-family: 'Arial';
    margin-bottom:2%;
    line-height:60px;
  }
</style>
<div style="text-align:center;">
    <h3 class="h">Услуги</h3>
</div>
<br/>
<div id="grid">
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px; position:relative; top:19px;" src="1.png"/>
        <text style="margin-top:10px; font-size: 110%; font-family: 'Arial';">Круглосуточная стойка регистрации</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="2.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Лифт</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="3.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Прачечная</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="4.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Гладильная комната</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="5.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Конференц зал на 48 чел. (1 этаж)</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="6.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Кафе "Гости"</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="7.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Сейф у администратора</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="8.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Камера хранения багажа</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="9.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Номера для некурящих</text>
    </div>
    <div>
        <img style="margin-right:20px; height: 50px; width: 50px;position:relative; top:19px;" src="10.png"/>
        <text style="font-size: 110%; font-family: 'Arial';">Душевой набор</text>
    </div>
</div><br/><br/>
</asp:Content>
