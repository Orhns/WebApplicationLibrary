<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="a_book_iss.aspx.cs" Inherits="WebApplicationLibrary.a_book_i" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">                       
                        <div class="row mb-2">
                            <div class="col">
                                <center>
                                    <h4 class="mt-2 ">Book Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/books.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <label for="TextBox2" class="form-label">Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="TextBox1" class="form-label">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Get" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mt-3">
                                <label for="TextBox3" class="form-label">Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 mt-3">
                                <label for="TextBox4" class="form-label">Book Name</label>
                                    <div class="form-group">        
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-md-6 mt-3">
                                <label for="TextBox5" class="form-label">Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Member Name" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 mt-3">
                                <label for="TextBox6" class="form-label">End Date</label>
                                    <div class="form-group">        
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Name" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6 mt-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Issue" />
                                </div>
                            </div>
                            <div class="col-6 mt-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Return" />
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
            <div class="col-md-7">
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
