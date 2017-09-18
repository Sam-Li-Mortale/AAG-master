<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Policies.aspx.cs" Inherits="AAG.Policies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Policies</h2>
    <br />
    <div class="box yellow-top">
        <div class="box-body">
            <br />
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Keyword"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:LinkButton ID="btnPolicySearch" runat="server" CssClass="btn btn-yellow form-control"><i class="fa fa-search" aria-hidden="true"></i> SEARCH</asp:LinkButton>
                    </div>
                </div>
            </div>
            <br />
            <div>
                <h4>Policy 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#">http://dummylink.com</a>
                <br />
                <a href="/assets/images/temple-logo.png" download>dummy download link</a>
            </div>
            <br />
            <div>
                <h4>Policy 2</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#">http://dummylink.com</a>
                <br />
                <a href="/assets/images/temple-logo.png" download>dummy download link</a>
            </div>
            <br />
            <div>
                <h4>Policy 3</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#">http://dummylink.com</a>
                <br />
                <a href="/assets/images/temple-logo.png" download>dummy download link</a>
            </div>
            <br />
            <div>
                <h4>Policy 5</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#">http://dummylink.com</a>
                <br />
                <a href="/assets/images/temple-logo.png" download>dummy download link</a>
            </div>
            <br />
            <div>
                <h4>Policy 6</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#">http://dummylink.com</a>
                <br />
                <a href="/assets/images/temple-logo.png" download>dummy download link</a>
            </div>
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
</asp:Content>
