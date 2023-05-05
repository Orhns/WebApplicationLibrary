<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="a_publisher_mng.aspx.cs" Inherits="WebApplicationLibrary.a_publisher_mng" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <!-- left column -->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">                       
                        <div class="row mb-2">
                            <div class="col">
                                <center>
                                    <h4 class="mt-2 ">Publisher Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/publisher.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-4">
                                <label for="TextBox1" class="form-label">Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Get" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label for="TextBox2" class="form-label">Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Add" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-warning" ID="Button3" runat="server" Text="Update" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="Delete" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="home.aspx"><i class="fa-solid fa-house"></i>Back to home </a>
                <br />
                <br />
            </div>

            <!-- right column -->
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 class="mt-2 ">Publisher list</h4>
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
