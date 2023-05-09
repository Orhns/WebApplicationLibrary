<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplicationLibrary.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="img/home-bg.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 Primary Features</b></p>
                    </center>
                </div>
             </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="img/digital-inventory.png" width="150px"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-start">Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="img\search-online.png" width="150px"/>
                        <h4>Search Books</h4>
                        <p class="text-start">Ut fusce varius nisl ac ipsum gravida vel pretium tellus tincidunt integer eu augue augue nunc elit dolor, luctus placerat.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="img\defaulters-list.png" width="150px"/>
                        <h4>Defaulter List</h4>
                        <p class="text-start">Nisl ac ipsum gravida vel pretium tellus tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc.
                        </p>
                    </center>
                </div>
                
            </div>
        </div>
    </section>

    <section>
        <img src="img/in-homepage-banner.jpg" class="img-fluid" />
    </section>

    
                <!-- Question Accordian -->
            <section id="Questions" class="p-5">
            <div class="container">
            <h2 class="text-center mb-4">Frequently Asked Questions</h2>
            <!--accordeon flush-->
            <div class="accordion accordion-flush" id="Questions">
                <!--Question 1-->
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                      Question about this #1
                    </button>
                  </h2>
                  <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#Questions">
                    <div class="accordion-body">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam magnam ut praesentium. Soluta doloremque quidem, dolores ea voluptatem temporibus error eos! Alias obcaecati, at unde animi enim voluptatibus quibusdam quam aperiam ad, quo ipsam non tenetur veritatis, deleniti impedit sint!
                    </div>
                  </div>
                </div>
                <!--Question 2-->
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                      Question about that #2
                    </button>
                  </h2>
                  <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquid repellat maxime, facere enim eaque magni quisquam nam, quas ab quo deleniti illum incidunt corporis hic quod quam sunt sapiente distinctio harum dignissimos? Quaerat doloribus excepturi odio atque totam id provident obcaecati pariatur, dolore unde! Minima nihil earum excepturi provident natus.
                    </div>
                  </div>
                </div>
                <!--Question 3-->
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                      Question about they #3
                    </button>
                  </h2>
                  <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sit cumque molestias dolor sequi neque consectetur assumenda dolore molestiae quas et nihil tempore, numquam ipsam odit corporis est, hic fugiat esse natus animi ipsum! Rerum nisi, a enim impedit aperiam quisquam? Tenetur, atque! Nulla maxime eaque ducimus dignissimos inventore commodi iure sunt fuga dolorem, repellat provident, possimus voluptates sit praesentium impedit! Assumenda minus impedit earum amet id iusto! Nam, distinctio maiores culpa nihil molestias, esse nostrum ut labore aliquam ipsum ipsam!
                    </div>
                  </div>
                </div>
                <!--Question 4-->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingFour">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                        Are you going to find me a job? #4
                      </button>
                    </h2>
                    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#Questions">
                      <div class="accordion-body">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi facilis fugiat unde adipisci ex voluptatem, molestiae voluptas numquam ab porro.
                      </div>
                    </div>
                  </div>
                <!--Question 5-->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingFive">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                        Are you gonna help me? #4
                      </button>
                    </h2>
                    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#Questions">
                      <div class="accordion-body">
                          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum eos neque, nam perspiciatis officia provident.
                      </div>
                    </div>
                  </div>
              </div>
            </div>
                
            </section>
</asp:Content>
