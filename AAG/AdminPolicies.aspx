<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPolicies.aspx.cs" Inherits="AcademicAdvisingGroup.AdminPolicies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Policies</h1>
    <br />
    <div class="box yellow-top collapsed-box">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Create New Policy</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <%--<div id="policyError" class="alert alert-danger text-center" runat="server">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label1" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="policySuccess" class="alert alert-success text-center" runat="server">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label2" runat="server" Text=" SUCCESS: The policy request has been submitted."></asp:Label>
                </div>--%>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-7">
                            <label for="policyTitle">Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="policyTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <label for="ddlPolicyType">Type: <span style="color: red;">*</span></label>
                            <asp:DropDownList ID="ddlPolicyType" CssClass="form-control dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtPolicyLink">Link Attachment:</label>
                            <asp:TextBox ID="txtPolicyLink" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtPolicyFileName">File Name:</label>
                            <asp:TextBox ID="txtPolicyFileName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="policyFileAttachment">File Attachment:</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtPolicyFile" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                <label class="input-group-btn">
                                    <span class="btn btn-yellow"><i class="fa fa-upload" aria-hidden="true"></i>
                                        <input type="file" style="display: none;" /></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="policyDescription">Description: <span style="color: red;">*</span></label>
                            <textarea runat="server" class="form-control" id="policyDescription" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnPolicyCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnPolicySubmit" CssClass="btn btn-yellow form-control pull-right" runat="server" Text="SUBMIT" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="box yellow-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-gavel"></i> Policies</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <table class="dt-policy table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Type</th>
                        <th>Description</th>
                        <th>Url</th>
                        <th>File Name</th>
                        <th>File Upload</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-yellow edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
