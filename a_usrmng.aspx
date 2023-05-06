<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="a_usrmng.aspx.cs" Inherits="WebApplicationLibrary.a_usrmng" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">                       
                        <div class="row mb-2">
                            <div class="col">
                                <center>
                                    <h4 class="mt-2 ">Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-3">
                                <label for="TextBox1" class="form-label">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Get" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="TextBox2" class="form-label">Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label for="TextBox7" class="form-label">Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pending" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server"><i class="fa-solid fa-square-check"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server"><i class="fa-solid fa-square-xmark"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3 mt-3">
                                <label for="TextBox8" class="form-label">DOB</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="TextBox9" class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="5393399626" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5 mt-3">
                                <label for="TextBox7" class="form-label">Email ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="s_bob@gmail.com" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 mt-3">
                                <label for="TextBox11" class="form-label">State</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="TextBox12" class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="TextBox13" class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="34944" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 mt-3">
                                <label for="TextBox3" class="form-label">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="My Adress" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mt-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-primary btn-danger" ID="Button1" runat="server" Text="Delete User Permanently" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="home.aspx"><i class="fa-solid fa-house"></i>Back to home </a>
                <br />
                <br />
            </div>
            <!-- Right column -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 class="mt-2 ">Issued Book list</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>
