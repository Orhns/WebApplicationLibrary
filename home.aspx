<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplicationLibrary.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Showcase -->
    <section class="bg-dark text-light p-lg-0 pt-lg-1 text-center text-sm-start" id="showcaseSec">
        <div class="container justify-content-center">
            <div class="row d-sm-flex align-items-center justify-content-center">
                <div class="col-4 d-none d-sm-block">
                    <div class="d-sm-flex ">
                        <img  class="img-fluid " src="/img/flyinbooks.png" alt="">
                    </div>
                </div>
                <div class="col-8">
                    <div class="m-lg-5">
                    <h1>Welcome to <span class="text-warning"> online library system.</span></h1>
                    <p class="my-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum magna leo. Donec vel pretium felis, vel placerat erat. Etiam a nisi in arcu lobortis vulputate ut nec lorem. Vestibulum eros justo, placerat sit amet sagittis et, varius ac erat. Nam et euismod lectus. Vestibulum egestas hendrerit nisi, eget porttitor erat scelerisque quis. Donec tellus urna, efficitur et metus vitae, fringilla elementum mauris. Curabitur neque velit, eleifend nec turpis eget, mattis condimentum sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  
                                    Proin luctus tortor eu diam commodo, ut tristique diam finibus. Maecenas nisi dolor, iaculis a lorem eget, pharetra laoreet mauris. Phasellus varius felis at consequat pulvinar. Aenean tortor elit.</p>
                    <div class="d-grid d-md-flex justify-content-md-end">
                        <button class="btn btn-primary btn-lg me-md-2" data-bs-toggle="modal" data-bs-target="#enroll">Search for the books.</button>
                    </div>
                    </div>
                </div>    
            </div>
        </div>
    </section>
    <section class="bg-dark">
    <div class="container ">
    <h2 class="text-center mb-4 text-light">Frequently Asked Questions</h2>
    <!--accordeon flush-->
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                Accordion Item #1
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
            </div>
            </div>
            <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                Accordion Item #2
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
            </div>
            </div>
            <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                Accordion Item #3
                </button>
            </h2>
            <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
            </div>
            </div>
        </div>
    </div>
</section> 

   

        <!-- Modal 
    <div class="modal fade" id="enroll" tabindex="-1" aria-labelledby="enrollLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="lead">Fill out that form and we will get back to you.</p>
                <form>
                    <div class="mb-3">
                        <label for="first-name" class="col-form-label">
                            First Name:
                        </label>
                        <input type="text" class="form-control" id="first-name">
                    </div>
                    <div class="mb-3">
                        <label for="last-name" class="col-form-label">
                            Last Name:
                        </label>
                        <input type="text" class="form-control" id="last-name">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="col-form-label">
                            E-mail:
                        </label>
                        <input type="email" class="form-control" id="email">
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="col-form-label">
                            Tel:
                        </label>
                        <input type="tel" class="form-control" id="phone">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
        </div>
    </div>
            -->
</asp:Content>
