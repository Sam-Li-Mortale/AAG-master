<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AAG.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">WELCOME!</h2>
    <br />
    <div class="box blue-top">
        <div class="box-header with-border">
            <i class="fa fa-bullhorn" aria-hidden="true"></i>
            <h2 class="box-title">Announcements</h2>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Keyword"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:LinkButton ID="btnContactSearch" runat="server" CssClass="btn btn-primary form-control"><i class="fa fa-search" aria-hidden="true"></i> SEARCH</asp:LinkButton>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-6">
                    <h4>Title</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="#">http://dummylink.com</a>
                    <br />
                    <a href="/assets/images/temple-logo.png" download>dummy download link</a>
                </div>
                <div class="col-sm-6">
                    <h4>Title</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="#">http://dummylink.com</a>
                    <br />
                    <a href="/assets/images/temple-logo.png" download>dummy download link</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <h4>Title</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="#">http://dummylink.com</a>
                    <br />
                    <a href="/assets/images/temple-logo.png" download>dummy download link</a>
                </div>
                <div class="col-sm-6">
                    <h4>Title</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="#">http://dummylink.com</a>
                    <br />
                    <a href="/assets/images/temple-logo.png" download>dummy download link</a>
                </div>
            </div>
            <br />
             <nav class="text-center" aria-label="Page navigation">
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a class="active" href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <br />
    <div class="box pink-top">
        <div class="box-header with-border">
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <h2 class="box-title">Events</h2>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body no-padding">
            <div id="homepage-calendar"></div>
        </div>
    </div>
</asp:Content>
