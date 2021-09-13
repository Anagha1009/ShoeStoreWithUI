﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoeStore.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .card {
            /* Add shadows to create the "card" effect */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
        }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }
    </style>
    <div class="mx-5 mt-5">
        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header bg-white">
                        <h5>My Cart</h5>
                    </div>
                    <div class="card-body" style="overflow-y: scroll; height: 28rem">
                        <div class="media py-4">
                            <img class="align-self-center mr-3" src="Images/bg.jpg" height="130" width="130" />
                            <div class="media-body">
                                <label><b>Tokyo Talkies Women Checkered Casual Grey Shirt</b></label><br />
                                <label>Size: S</label><br />
                                <label>$ 314</label><br />
                                <a href="#" class="text-dark">Remove</a>
                            </div>
                        </div>
                        <div class="media py-4 border-top">
                            <img class="align-self-center mr-3" src="Images/shoestore.jpg" height="130" width="130" />
                            <div class="media-body">
                                <label><b>Tokyo Talkies Women Checkered Casual Grey Shirt</b></label><br />
                                <label>Size: S</label><br />
                                <label>$ 314</label><br />
                                <a href="#" class="text-dark">Remove</a>
                            </div>
                        </div>
                        <div class="media py-4 border-top">
                            <img class="align-self-center mr-3" src="Images/shoestore.jpg" height="130" width="130" />
                            <div class="media-body">
                                <label><b>Tokyo Talkies Women Checkered Casual Grey Shirt</b></label><br />
                                <label>Size: S</label><br />
                                <label>$ 314</label><br />
                                <a href="#" class="text-dark">Remove</a>
                            </div>
                        </div>
                        <div class="media py-4 border-top">
                            <img class="align-self-center mr-3" src="Images/shoestore.jpg" height="130" width="130" />
                            <div class="media-body">
                                <label><b>Tokyo Talkies Women Checkered Casual Grey Shirt</b></label><br />
                                <label>Size: S</label><br />
                                <label>$ 314</label><br />
                                <a href="#" class="text-dark">Remove</a>
                            </div>
                        </div>
                        <div class="media py-4 border-top">
                            <img class="align-self-center mr-3" src="Images/shoestore.jpg" height="130" width="130" />
                            <div class="media-body">
                                <label><b>Tokyo Talkies Women Checkered Casual Grey Shirt</b></label><br />
                                <label>Size: S</label><br />
                                <label>$ 314</label><br />
                                <a href="#" class="text-dark">Remove</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <asp:Button ID="BtnPlaceOrder" runat="server" Text="Place Order" class="btn btn-info rounded-pill" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-white">
                        <h5 class="text-light" style="color: #878787 !important">PRICE DETAILS</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col">
                                <label>Price (1 item)</label>
                            </div>
                            <div class="col text-right">
                                <label>$ 314</label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col">
                                <label>Delivery Charges</label>
                            </div>
                            <div class="col text-right">
                                <label>$ 0</label>
                            </div>
                        </div>
                        <div class="form-group row border-top pt-3">
                            <div class="col">
                                <label><b>Total Amount</b></label>
                            </div>
                            <div class="col text-right">
                                <label><b>$ 314</b></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
