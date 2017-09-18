<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProfessionalDevelopment.aspx.cs" Inherits="AcademicAdvisingGroup.AdminProfessionalDevelopment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Professional Development</h1>
    <br />
    <div class="box greentop collapsed-box">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Create New Professional Development Item</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <%--<div id="profdevError" class="alert alert-danger text-center" runat="server">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label7" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="profdevSuccess" class="alert alert-success text-center" runat="server">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label8" runat="server" Text=" SUCCESS: The professional development item request has been submitted."></asp:Label>
                </div>--%>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-7">
                            <label for="txtProfDevTitle">Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtProfDevTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <label for="ddlProfDevType">Type: <span style="color: red;">*</span></label>
                            <asp:DropDownList ID="ddlProfDevType" CssClass="form-control dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtProfDevLink">Link Attachment:</label>
                            <asp:TextBox ID="txtProfDevLink" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtProfDevFileName">File Name:</label>
                            <asp:TextBox ID="txtProfDevFileName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtProfDevFile">File Attachment:</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtProfDevFile" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                <label class="input-group-btn">
                                    <span class="btn btn-green"><i class="fa fa-upload" aria-hidden="true"></i>
                                        <input type="file" style="display: none;" /></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="profdevDescription">Description: <span style="color: red;">*</span></label>
                            <textarea runat="server" class="form-control" id="profdevDescription" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnProfDevCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnProfDevSubmit" CssClass="btn btn-green form-control pull-right" runat="server" Text="SUBMIT" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
    <div class="box greentop scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-briefcase"></i> Professional Development</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                
            </div>
        </div>
        <div class="box-body">
            <asp:GridView ID="gvProfessionalDev" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" CellPadding="0">
                <Columns>
                    <asp:BoundField DataField="PDevID" Visible="false" />
                    <asp:BoundField DataField="FileName" HeaderText="File Name" />
                    <asp:BoundField DataField="FileAttachment" HeaderText="File Attachment" />
                    <asp:BoundField DataField="URL" HeaderText="Resource URL" />
                    <asp:TemplateField HeaderText="Manage">
                        <ItemTemplate>  
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                       
                            <asp:LinkButton ID="linkBtnEdit" runat="server" CssClass="btn btn-purple tablebtns" CommandName="EditProfDev" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="linkBtnDelete" runat="server" CssClass="btn btn-danger tablebtns" CommandName="DeleteProfDev" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-trash" aria-hidden="true"></i> Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
            </asp:GridView>
            <%--<table class="dt-profdev table table-bordered table-hover">
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
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-green edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger edit" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                </tbody>
            </table>--%>
        </div>
    </div>
</asp:Content>
