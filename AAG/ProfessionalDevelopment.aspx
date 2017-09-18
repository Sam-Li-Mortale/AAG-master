<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProfessionalDevelopment.aspx.cs" Inherits="AAG.ProfessionalDevelopment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Professional Development</h2>
    <br />
    <div class="box greentop">
        <div class="box-body">
            <br />
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Keyword"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:LinkButton ID="btnProfDevSearch" runat="server" CssClass="btn btn-green form-control"><i class="fa fa-search" aria-hidden="true"></i> SEARCH</asp:LinkButton>
                    </div>
                </div>
            </div>
            <br />
           <div id="profDevInfo" class="row" runat="server"></div>
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
