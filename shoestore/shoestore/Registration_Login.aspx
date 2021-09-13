<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Login.aspx.cs" Inherits="ShoeStore.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- SweetAlert2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css" />
    <style>
        body {
            background-image: url('./images/RegistraionLoginImages/blurbg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: 'Poppins', sans-serif;
        }


        .registrationCard, .loginCard {
            background-color: rgba(245, 245, 245, 0.5);
            border-radius: 2rem;
            border-color: darkgoldenrod;
        }

        .loginCard{
            margin-top:10rem;
        }

        input[type=text], input[type=password], input[type=text]:focus {
            background: transparent;
            border: none;
            border-bottom: 1px solid black;
            border-radius: 0rem;
        }

        .form-control:focus {
            border-color: inherit;
            -webkit-box-shadow: none;
            box-shadow: none;
            background: transparent;
        }


        #card {
            transform-style: preserve-3d;
            transition: transform 1s;
        }

            #card figure {
                margin: 0;               
                backface-visibility: hidden;
            }

            #card .back {
                display:none;
                transform: rotateY( 180deg);
            }

            #card.flipped {
                transform: rotateY( 180deg);
            }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-7 mx-auto">
                <div id="card">
                    <figure class="front">
                        <div class="card registrationCard" style="margin-top:6rem;">
                            <div class="card-body">
                                <h3 class="text-center mb-5">Register Yourself !</h3>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">Name</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtName" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">Email</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtEmail" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">Contact</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtContact" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Contact"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">User Name</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtUserName" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Username"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">Password</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtPassword" TextMode="Password" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Enter your Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 text-right">Confirm Password</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TxtConfirmPassword" TextMode="Password" AutoCompleteType="Disabled" class="form-control" runat="server" placeholder="Confirm your Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="col-md-6 mx-auto mb-2">
                                    <asp:Button ID="BtnRegister" runat="server" Text="Register" class="btn btn-info btn-block rounded-pill" OnClick="BtnRegister_Click" OnClientClick="return ValidateForm()" />
                                </div>
                                <div class="col-md-6 mx-auto">
                                    <asp:Button ID="BtnShowLogin" runat="server" Text="Already Registered?" class="btn btn-outline-dark rounded-pill btn-block" />
                                </div>
                            </div>
                        </div>
                    </figure>
                    <figure class="back">
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
                    </figure>
                </div>
            </div>
        </div>
    </form>
</body>
<script>
    var card = document.getElementById('card');

    document.getElementById('BtnShowLogin').addEventListener('click', function (e) {
        e.preventDefault();
        card.classList.add('flipped');
        $('.front').attr('style', 'display:none');
        $('.back').attr('style', 'display:block');
    }, false);


    document.getElementById('Btn2').addEventListener('click', function (e) {
        e.preventDefault();
        card.classList.remove('flipped');
        $('.back').attr('style', 'display:none');
        $('.front').attr('style', 'display:block');

    }, false);


    function ValidateForm() {
        if (document.getElementById('<%=TxtName.ClientID%>').value == '') {
            alert("Please enter your name");
            document.getElementById('<%=TxtName.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtEmail.ClientID%>').value == '') {
            alert("Please enter your email");
            document.getElementById('<%=TxtEmail.ClientID%>').focus();
            return false;
        }
        else if (!validateEmail(document.getElementById('<%=TxtEmail.ClientID%>').value)) {
            alert("Please enter valid Email Address");
            document.getElementById('<%=TxtEmail.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtContact.ClientID%>').value == '') {
            alert("Please enter your contact");
            document.getElementById('<%=TxtContact.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtUserName.ClientID%>').value == '') {
            alert("Please enter your username");
            document.getElementById('<%=TxtUserName.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtPassword.ClientID%>').value == '') {
            alert("Please enter your password");
            document.getElementById('<%=TxtPassword.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtConfirmPassword.ClientID%>').value == '') {
            alert("Please confirm your password");
            document.getElementById('<%=TxtConfirmPassword.ClientID%>').focus();
            return false;
        }
        else if (document.getElementById('<%=TxtPassword.ClientID%>').value != document.getElementById('<%=TxtConfirmPassword.ClientID%>').value) {
            alert("Your password does not match");
            return false;
        }

        return true;
    }


    function validateEmail(email) {
        const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    }


</script>
</html>
