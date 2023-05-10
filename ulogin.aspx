<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="ulogin.aspx.cs" Inherits="WebApplicationLibrary.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('img/background2.jpg');">
    <div class="container" style="min-height:max-content">
        <div class="row">
            <div class="col-md-6 mx-auto m-5" style="min-height:stretch">

                <div class="card" style="background-color:lightgray;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/generaluser.png" width="150px" />
                                    <h3 class="mt-2 ">Member Login</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="TextBox1" class="form-label">Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="memberid" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <label for="TextBox2" class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="mpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group d-grid gap-2 mb-2 mt-3">
                                    <asp:Button class="btn btn-success " ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group d-grid gap-2">
                                    <a href="usignup.aspx" class="btn btn-info" role="button">Sign Up</a>
                                    <!--<inputclass="btn btn-info" id="Button2" type="button" value="Sign Up" />-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="home.aspx"><i class="fa-solid fa-house"></i>Back to home </a>
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>
    </div>

</asp:Content>
