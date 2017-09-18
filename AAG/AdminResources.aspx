<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminResources.aspx.cs" Inherits="AcademicAdvisingGroup.AdminResources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Resources</h1>
    <br />
    <div class="box teal-top">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Create New Resource</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <div id="resourceError" class="alert alert-danger text-center" runat="server" visible="false">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="lblError" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="resourceSuccess" class="alert alert-success text-center" runat="server" visible="false">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="lblSuccess" runat="server" Text=" SUCCESS: The resource request has been submitted."></asp:Label>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-7">
                            <label for="resourceTitle">Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="resourceTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-5">
                            <label for="ddlResourceType">Type: <span style="color: red;">*</span></label>
                            <asp:DropDownList ID="ddlResourceType" CssClass="form-control dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtResourceLink">Link Attachment:</label>
                            <asp:TextBox ID="txtResourceLink" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtResourceFileName">File Name:</label>
                            <asp:TextBox ID="txtResourceFileName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="resourceFileAttachment">File Attachment:</label>
                            <div class="input-group">
                                <asp:FileUpload ID="resourceFile" runat="server" />
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="resourceDescription">Description: <span style="color: red;">*</span></label>
                            <textarea runat="server" class="form-control" id="resourceDescription" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnResourceCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnResourceSubmit" CssClass="btn btn-teal form-control pull-right" runat="server" Text="SUBMIT" OnClick="btnResourceSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="box teal-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-files-o"></i> Resources</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <asp:GridView ID="gvAdminResources" runat="server" AutoGenerateColumns="False" OnRowCommand="gvAdminResources_RowCommand" CssClass="table table-bordered table-hover" CellPadding="0">
                <Columns>
                    <asp:BoundField DataField="ResID" Visible="false" />
                    <asp:BoundField DataField="ResourceType" HeaderText="Resource Type" />
                    <asp:BoundField DataField="FileName" HeaderText="File Name" />
                    <asp:BoundField DataField="URL" HeaderText="Resource URL" />
                    <asp:TemplateField HeaderText="Manage Resources">
                        <ItemTemplate>  
                            <asp:LinkButton ID="linkBtnDownload" runat="server" CssClass="btn btn-purple tablebtns" CommandName="DownloadResource" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-download" aria-hidden="true"></i> Download</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                       
                            <asp:LinkButton ID="linkBtnEdit" runat="server" CssClass="btn btn-purple tablebtns" CommandName="EditResource" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="linkBtnDelete" runat="server" CssClass="btn btn-danger tablebtns" CommandName="DeleteResource" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-trash" aria-hidden="true"></i> Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
            </asp:GridView>
            <%--<table class="dt-resource table table-bordered table-hover">
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
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title 5</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                         <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                     <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Some title</td>
                        <td>Some Type</td>
                        <td>Some Description</td>
                        <td>Some Url</td>
                        <td>Some File Name</td>
                        <td>Some File Upload</td>
                        <td class="text-center"><a class="btn btn-teal" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                </tbody>
            </table>--%>
        </div>
    </div>
</asp:Content>
