<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="a_book_inventory.aspx.cs" Inherits="WebApplicationLibrary.a_book_inventory" %>
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
                                        <h4 class="mt-2 ">Book Details</h4>
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
                                <div class="col">
                                    <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <label for="TextBox1" class="form-label">Book ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Get" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <label for="TextBox2" class="form-label">Book Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="col mt-3">
                                            <label for="TextBox8" class="form-label">Language</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                                        <asp:ListItem Text="English" Value="English" />
                                                        <asp:ListItem Text="Türkçe" Value="Türkçe" />
                                                        <asp:ListItem Text="German" Value="German" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col mt-3">
                                            <label for="TextBox4" class="form-label">Publisher Name</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                   <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                     
                        
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="col mt-3">
                                            <label for="DropDownList3" class="form-label">Author Name</label>
                                            <div class="form-group">
                                                <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                                    <asp:ListItem Text="Author1" Value="Author1" />
                                                    <asp:ListItem Text="Author2" Value="Author2" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col mt-3">
                                            <label for="TextBox5" class="form-label">Publish Date</label>
                                            <div class="form-group">
                                                <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="col-md-4">
                                    <div class="col mt-3">
                                        <label for="TextBox7" class="form-label">Genre</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                                    <asp:ListItem Text="Action" Value="Action" />
                                                    <asp:ListItem Text="Adventure" Value="Adventure" />
                                                    <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                                    <asp:ListItem Text="Self Help" Value="Self Help" />
                                                    <asp:ListItem Text="Motivation" Value="Motivation" />
                                                    <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                                    <asp:ListItem Text="Wellness" Value="Wellness" />
                                                    <asp:ListItem Text="Crime" Value="Crime" />
                                                    <asp:ListItem Text="Drama" Value="Drama" />
                                                    <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                                    <asp:ListItem Text="Horror" Value="Horror" />
                                                    <asp:ListItem Text="Poetry" Value="Poetry" />
                                                    <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                                    <asp:ListItem Text="Romance" Value="Romance" />
                                                    <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                                    <asp:ListItem Text="Suspense" Value="Suspense" />
                                                    <asp:ListItem Text="Thriller" Value="Thriller" />
                                                    <asp:ListItem Text="Art" Value="Art" />
                                                    <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                                    <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                                    <asp:ListItem Text="Health" Value="Health" />
                                                    <asp:ListItem Text="History" Value="History" />
                                                    <asp:ListItem Text="Math" Value="Math" />
                                                    <asp:ListItem Text="Textbook" Value="Textbook" />
                                                    <asp:ListItem Text="Science" Value="Science" />
                                                    <asp:ListItem Text="Travel" Value="Travel" />
                                                </asp:ListBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox11" class="form-label">Edition</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="1st"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox12" class="form-label">Book Cost</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="100" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox13" class="form-label">Pages</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="312" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox3" class="form-label">Actual Stock</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="13" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox12" class="form-label">Current Stock</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="12" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-3">
                                    <label for="TextBox7" class="form-label">Issued Books</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="1" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                        </div>
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
                                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Update" />
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

                <!-- Right column -->
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4 class="mt-2 ">Book Inventory list</h4>
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
