<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="shoestore.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <style type="text/css">
		body{
			
			background-color: #f3b953;
			background-blend-mode: multiply;
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-position: center;
			background-size: cover;
			font-family: sans-serif;	
		}
		.row{			
			position: relative;
		
		}
		.content-cards{
			position:relative;
			top:110px;
            width:100%;
			display: flex;
			flex-wrap: wrap;	
			justify-content: space-evenly;
			margin-left:50px;
			margin-right:50px;
		}
		.content-cards .cards{
			border-radius: 10px;
			background-color: #fff;
			width: 150px;
			height: 242px;
			margin-bottom: 10px;
            padding:2px 2px 5px 2px;
            border: 1px solid #c2c2c2;
		}
        .content-cards div img{
			padding: 2px;
			width: 145px;
			height: 180px;
			border-radius: 5px;
            object-fit: cover;
			
		}
        .content-cards .price{
            font-size:16px;
            font-weight:550;
        }
        #shoedetails{
			position: fixed;
			display: none;
            top:90px;
			left: 72%;
			border-radius: 5px;
			margin-top: 10px;
			padding: 10px 10px 10px 10px;
			
		}
        .subs{
			color: #000;
			font-size: 25px;
			
		}
        
        #cancel{
			position: absolute;
			top: 20px;
			z-index: 500;

		}
        #shoestitle{
           
			font-size: 30px;
			font-weight: 600;
			padding: 5px;
			color: black;
        }
        #shoeprice{
           
			font-size: 20px;
			font-weight: 500;
			padding: 5px;
			color: black;
        }
		#shoeimg{
			border-radius:15px;
			
		}



		.container {
  position: relative;
}

.container .card {
  position: relative;
  width: 310px;
  height: 475px;
  background: #232323;
  border-radius: 20px;
  overflow: hidden; 
}

.container .card:before {
  content: ' ';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #f3b953;
  clip-path: circle(150px at 80% 20%);
  transition: 0.5s ease-in-out;
}

.container .card:hover:before {
  clip-path: circle(300px at 80% -20%);
}

.container .card:after {
  content: 'Nike';
  position: absolute;
  top: 30%;
  left: -15%;
  font-size: 12em;
  font-weight: 800;
  font-style: italic;
  color: rgba(255,255,255,0.04)
}

.container .card .image {
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  z-index:10000;
  width: 100%;
  height: 220px;
  transition: 0.5s;
}

.container .card:hover .image{
  top: 0%;
  transform: translateY(0%);
}

.container .card .image img{
 position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) rotate(-25deg);
  width: 270px;
}

.container .card .content {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 100px;
  text-align: center;
  transition: 1s;
  z-index: 10;
}

.container .card:hover .content {
  height: 210px;
}

.container .card .content h2 {
  position: relative;
  font-weight: 600;
  font-size:20px;
  letter-spacing: 1px;
  color: #ebe6e7;
}

.container .card .content .size,
.container .card .content .color {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 8px 20px;
  transition: 0.5s;
  opacity: 0;
  visibility: hidden;
}

.container .card:hover .content .size {
   opacity: 1;
  visibility: visible;
  transition-delay: 0.5s;
}

.container .card:hover .content .color {
   opacity: 1;
  visibility: visible;
  transition-delay: 0.6s;
}
.container .card:hover .content .price {
   opacity: 1;
  visibility: visible;
  transition-delay: 0.6s;
}

.container .card .content .size h3,
.container .card .content .price h3,
.container .card .content .color h3 {
  color: #fff;
  font-weight: 400;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 2px;
  margin-right: 10px;
}
.container .card .content .price span{
	
  text-align: center;
  line-height: 26px;
  font-size: 14px;
  display: inline-block;
  color: #fff;
  position:absolute;
  top:110px;
  left:180px;
  margin: 0 5px;
}
.container .card .content .size span {
  width: 26px;
  height: 26px;
  text-align: center;
  line-height: 26px;
  font-size: 14px;
  display: inline-block;
  color: #111;
  background: #ebe6e7;
  margin: 0 5px;
  transition: 0.5s;
  border-radius: 4px;
  cursor: pointer;
}

.container .card .content .size span:hover {
  background: #f3b953;
} 

.container .card .content .color span {
  width: 20px;
  height: 20px;
  background: #ff0;
  border-radius: 50%;
  margin: 0 5px;
  cursor: pointer;
}

.container .card .content .color span:nth-child(2){
  background: #e31e4a;
} 

.container .card .content .color span:nth-child(3){
  background: #03a9f4;
} 

.container .card .content .color span:nth-child(4){
  background: #f16a39;
} 

.container .card .content a {
  display: inline-block;
  padding: 10px 20px;
  background: #f3b953;
  margin-top: 5px;
 text-decoration: none;
  border-radius: 10px;
  font-weight: 600;
  color: #111;
  opacity: 0;
  transform: translateY(50px);
  transition: 0.5s;
}


.container .card:hover .content a {
  
  opacity: 1;
  transform: translateY(0px);
  transition-delay: 0.75s;
}
       
      </style>
	<script>
        $(function () {
            $('.cards').click(function () {
				let source = $(this).children('img').attr('src');
                let title = $(this).children('.shoetitle').text();
                let price = $(this).children('.price').text();           
                $('#shoeimg').attr({
                    'src': source,
                });
                $('#shoename').text(title);
                $('#shoeprice').text(price);
                $('.content-cards').css({
                    'width': '67%'
                });
                $('#shoedetails').css({
                    'display': 'block',

                });
            });
        });

        $('#cancel').click(function () {

            $('.content').css({
                'width': '100%',

            });
            $('#shoedetails').css({
                'display': 'none',

            });
        });
    </script>

    <div class="row">

			
			<div class="content-cards">

				

				<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" CommandName="CardClick"  CommandArgument='<%#Eval("product_id") %>' runat="server">
							<div class="cards">
								<asp:Image ID="Image1" runat="server" ImageUrl='<%# "/images/product_images/" + Eval("shoe_img") %>' />
								<asp:Label class="shoetitle" ID="lbl_shoetitle" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
								<asp:Label class="price" ID="Label1" runat="server" Text='<%#Eval("price") %>'></asp:Label>
								
							</div>
						</asp:LinkButton>
					</ItemTemplate>
					
				</asp:Repeater>

				
				
				
				
			</div>

			
		<!--<div id="shoedetails"> 
			<span id="cancel">
				Cancel
			</span>
			<img id="shoeimg" src="">
			<span id="Brand" style="padding:5px"">Puma</span><br />
			<span id="shoestitle"></span><br />
			<span id="shoeprice"></span>
			<div class="options d-flex flex-fill">
             <select class="custom-select mr-1">
                <option selected>Color</option>
                <option value="1">Green</option>
                <option value="2">Blue</option>
                <option value="3">Red</option>
            </select>
            <select class="custom-select ml-1">
                <option selected>Size</option>
                <option value="1">41</option>
                <option value="2">42</option>
                <option value="3">43</option>
            </select>
          </div>

			<div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle"
					  type="button" id="dropdownMenu1" data-toggle="dropdown"
					  aria-haspopup="true" aria-expanded="false">
				Dropdown
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
				<a class="dropdown-item" href="#!">Action</a>
				<a class="dropdown-item" href="#!">Another action</a>
			  </div>
			</div>
			<br />
			<button type="button" class="btn btn-primary" style="width:520px">Add To Cart</button>

			-->

		<div class="container" id="shoedetails">
    <div class="card">
      <div class="image">
        <img src="https://pngimg.com/uploads/running_shoes/running_shoes_PNG5785.png" alt="" id="shoeimg">
      </div>
      <div class="content">
        <h2 id="shoename"></h2>
        <div class="size">
          <h3>Size :</h3>
		<asp:Repeater ID="sizeRepeater" runat="server">
			<ItemTemplate>
				<span Text='<%#Eval("name") %>'></span>
			</ItemTemplate>
		</asp:Repeater>
          <!--<span>5</span>
          <span>6</span>
          <span>7</span>
          <span>8</span>-->
        </div>
         <div class="color">
          <h3>Color :</h3>
          <span></span>
          <span></span>
          <span></span>
			 
          <span></span>
        </div>
		  <div class="price">
          <h3>Price :</h3>
          <span id="shoeprice"></span>
        </div>
        <a href="#">Add to Cart</a>
      </div>
    </div>
  </div>






		</div>
	







</asp:Content>
