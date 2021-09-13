<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="shoestore.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
.card:hover{
  /*transform: scale(1.1,1);*/
  transform: skew(5deg,0deg);
    box-shadow:2px 2px grey;
    border-radius: 3px;
}
body{
    background-color: black;
}
  </style>
   <div class="container">
 <br>
 <div class="card-deck">
  <div class="col-sm-4">
  <div class="card ">   
    
    
    <img class="card-img-top" src="images/categoryimg/shoes2.jpg" alt="Card image" style="width:100%;height: 305px; opacity:0.7">
    <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 70px;font-weight: bold;">Sports</h4>
    </div>
  </div>
</div>
</div>

<div class="col-sm-4">
  <div class="card">
    <button type="button" class="btn  text-dark" >
      <img class="card-img-top" src="images/categoryimg/formal1.png" alt="Card image" style="width:100%;height: 290px ;opacity:0.7">
      <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 55px;font-weight: bold;">Formal Shoes</h4>
    </div>
  </div>
</div>
</div>

<div class="col-sm-4">
  <div class="card">
    <button type="button" class="btn  text-dark" >
      <img class="card-img-top" src="images/categoryimg/Boots3.jpg" alt="Card image" style="width:100%; height:290px;opacity:0.7">
      <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 70px;font-weight: bold;">Boots</h4>
    </div>
  </div>
</div>
</div>

</div>
  <br>
  <div class="card-deck">
    <div class="col-sm-4">
  <div class="card">
    <button type="button" class="btn  text-dark" >
      <img class="card-img-top" src="images/categoryimg/sneaker2.jpg" alt="Card image" style="width:100%;height: 290px; opacity:0.7">
      <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 53px;font-weight: bold;">Sneakers</h4>
    </div>
  </div>
</div>
</div>

<div class="col-sm-4">
  <div class="card">
    <button type="button" class="btn  text-dark" >
      <img class="card-img-top" src="images/categoryimg/casual1.jpg" alt="Card image" style="width:100%;height: 290px; opacity:0.7">
      <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 55px;font-weight: bold;">Casual Shoes</h4>
    </div>
  </div>
  </div>
</div>

 <div class="col-sm-4">
  <div class="card">
    <button type="button" class="btn  text-dark" >
      <img class="card-img-top" src="images/categoryimg/loafer2.jpg" alt="Card image" style="width:100%;height: 290px;opacity:0.7">
      <div class="card-img-overlay text-white d-flex flex-column justify-content-center ">
    <div class="card-body">
      <h4 class="card-title text-center text-body" style="margin-top: 70px;font-size: 70px;font-weight: bold;">Loafer</h4>
    </div>
  </div>
  </div>
</div>
</div>

</div>
</asp:Content>
