<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAnnouncements.aspx.cs" Inherits="AcademicAdvisingGroup.AdminAnnouncements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Announcements</h1>
    <br />
    <div class="box blue-top collapsed-box">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Create New Announcement</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <%--<div id="announcementError" class="alert alert-danger text-center" runat="server">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label5" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="announcementSuccess" class="alert alert-success text-center" runat="server">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label6" runat="server" Text=" SUCCESS: The announcement request has been submitted."></asp:Label>
                </div>--%>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtAnnouncementTitle">Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAnnouncementTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="announcementLink">Link Attachment:</label>
                            <asp:TextBox ID="txtAnnouncementLink" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtAnnouncementFileName">File Name:</label>
                            <asp:TextBox ID="txtAnnouncementFileName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="announcementFile">File Attachment:</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtAnnouncementFile" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                <label class="input-group-btn">
                                    <span class="btn btn-primary"><i class="fa fa-upload" aria-hidden="true"></i>
                                        <input type="file" style="display: none;" /></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="announcementDescription">Description: <span style="color: red;">*</span></label>
                            <textarea runat="server" class="form-control" id="announcementDescription" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">                           
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnAnnouncementCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />            
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnAnnouncementSubmit" CssClass="btn btn-primary form-control pull-right" runat="server" Text="SUBMIT" />
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <br />
    <div class="box blue-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-bullhorn"></i> Announcements</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <table class="dt-announcements table table-bordered table-hover">
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
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title 1</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                         <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server" data-toggle="modal" data-target="#editModal"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-primary edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgblue">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="deleteModalLabel">Delete Announcement?</h4>
                    </div>
                    <div class="modal-body">
                        <p class="text-center">Are you sure you want to delete this announcement?</p>
                    </div>
                    <div class="modal-footer">   
                        <asp:LinkButton ID="LinkButton2" runat="server" data-dismiss="modal" CssClass="btn btn-default">NO</asp:LinkButton>                   
                        <asp:LinkButton ID="LinkButton1" runat="server" data-dismiss="modal" CssClass="btn btn-primary">YES</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="announcementModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgblue">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="announcementModalLabel">Edit Announcement</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form">
                            <%--<div id="announcementError" class="alert alert-danger text-center" runat="server">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label5" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                            </div>
                            <div id="announcementSuccess" class="alert alert-success text-center" runat="server">
                                <i class="fa fa-check-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label6" runat="server" Text=" SUCCESS: The announcement request has been submitted."></asp:Label>
                            </div>--%>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label for="txtAnnouncementTitle">Title: <span style="color: red;">*</span></label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text="Some Title 1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label for="announcementLink">Link Attachment:</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text="Some Url"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="txtAnnouncementFileName">File Name:</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text="Some File Name"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="announcementFile">File Attachment:</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ReadOnly="true" Text="Some File Upload"></asp:TextBox>
                                            <label class="input-group-btn">
                                                <span class="btn btn-primary"><i class="fa fa-upload" aria-hidden="true"></i>
                                                    <input type="file" style="display: none;" /></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label for="announcementDescription">Description: <span style="color: red;">*</span></label>
                                        <textarea runat="server" class="form-control" id="Textarea1" rows="5">Some Description</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">                      
                        <asp:LinkButton ID="btnUpdate" runat="server" data-dismiss="modal" CssClass="btn btn-primary">UPDATE</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
