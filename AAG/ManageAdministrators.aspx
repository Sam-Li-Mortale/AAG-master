<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAdministrators.aspx.cs" Inherits="AAG.ManageAdministrators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="text-center">Manage Administrators</h1>
    <br />
    <div class="box cherry-top collapsed-box">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Add New Administrator</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <%--<div id="contactError" class="alert alert-danger text-center" runat="server">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label11" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="contactSuccess" class="alert alert-success text-center" runat="server">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label12" runat="server" Text=" SUCCESS: The contact information  item request has been submitted."></asp:Label>
                </div>--%>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-4">
                            <label for="txtContactFirstName">First Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label for="txtContactLastName">Last Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label for="txtAdminTUAccessNet">TUAccessNet: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminTUAccessNet" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtAdminTitle">Professional Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 time-padding">
                            <label for="txtAdminPhone">Phone: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminPhone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtAdminEmail">Email: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtAdminLocation">Location: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAdminLocation" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnAdmintCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnAdminSubmit" CssClass="btn btn-cherry form-control pull-right" runat="server" Text="SUBMIT" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="box cherry-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-user"></i> Current Administrators</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <table id="#example" class="dt-contact table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>TUAccessNet</th>
                        <th>Professional Title</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Manage</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Jaclyn</td>
                        <td>VanOrden</td>
                        <td>tuXXXXXX</td>
                        <td>Advisor</td>
                        <td>215-204-2890</td>
                        <td>jaclyn.vanorden@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td><a class="btn btn-danger" data-toggle="modal" data-target="#deleteModal" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> REMOVE</a></td>
                    </tr>
                    <tr>
                        <td>Keith</td>
                        <td>Schweiger</td>
                        <td>tuXXXXXX</td>
                        <td>Advisor</td>
                        <td>215-204-2890</td>
                        <td>keiths@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> REMOVE</a></td>
                    </tr>                   
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgcherry">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="deleteModalLabel">Delete Administrator?</h4>
                    </div>
                    <div class="modal-body">
                        <p class="text-center">Are you sure you want to delete this administrator?</p>
                    </div>
                    <div class="modal-footer">   
                        <asp:LinkButton ID="LinkButton2" runat="server" data-dismiss="modal" CssClass="btn btn-default">NO</asp:LinkButton>                   
                        <asp:LinkButton ID="LinkButton1" runat="server" data-dismiss="modal" CssClass="btn btn-cherry">YES</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
