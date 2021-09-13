<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoeStore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <style>
        /*.modal-backdrop {
            background-color: #808080 !important;
            opacity:0.5;
        }*/

        .shoeStoreCard {
            display: flex;
            flex-direction: column;
            align-items: center;
            right: 50%;
            left: 50%;
            position: absolute;
            z-index: 1;
            margin-top: 5rem;
            -webkit-transform: translate(0);
            -moz-transform: translate(0);
            transform: translate(0);
        }

        .img-container {
            margin-bottom: -50px;
            border-radius: 20px;
            overflow: hidden;
        }

        .skewed {
            width: 250px;
            height: 250px;
            margin: 50px 0 -50px 0;
            border-radius: 30px;
            transform: skewY(15deg);
            overflow: hidden;
        }

        #img {
            width: 100%;
            height: 100%;
            margin-top: -30px;
            transform: skewY(-15deg);
            background-image: url("/Images/shoestore.jpg");
            background-size: 100%;
            background-position: center;
            transition: all 0.3s ease;
        }

            #img:hover {
                background-size: 110%;
            }

        .content {
            width: 350px;
            height: 200px;
            padding-top: 50px;
            border-radius: 5px;
            box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: white;
        }

            .content .links {
                width: 80%;
                margin-top: 10px;
                display: flex;
                justify-content: space-evenly;
            }

                .content .links a {
                    color: #b95808;
                    font-size: 25px;
                    border-radius: 20px;
                    transition: all 0.3s ease;
                }

                    .content .links a:hover {
                        transform: scale(1.2);
                    }
    </style>
    <div class="shoeStoreCard">
        <div class="img-container">
            <div class="skewed">
                <div id="img"></div>
            </div>
        </div>
        <div class="content">
            <h5>Choose your store</h5>
            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control w-75"></asp:DropDownList>
            <div class="links">
                <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-sm">Search <i class="fa fa-search"></i></asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="card loginCard">
        <div class="card-body">
            <h3 class="text-center mb-5"><u>Login</u></h3>
            <div class="form-group row">
                <label class="col-sm-4 text-right">User Name</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox4" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Username"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 text-right">Password</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox5" TextMode="Password" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Password"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <div class="col-md-6 mx-auto mb-2">
                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info btn-block rounded-pill" OnClientClick="return ValidateForm()" />
            </div>
            <div class="col-md-6 mx-auto">
                <asp:Button ID="Btn2" runat="server" Text="New User?" class="btn btn-outline-dark btn-block rounded-pill" />
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('.loginCard').attr('style', 'filter: blur(8px)');
            const element = document.querySelector('.shoeStoreCard');
            element.classList.add('animated', 'flipInX');
            setTimeout(function () {
                element.classList.remove('flipInX');
            }, 2000);
        });

    </script>
</asp:Content>
