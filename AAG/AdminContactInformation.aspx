<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminContactInformation.aspx.cs" Inherits="AcademicAdvisingGroup.AdminContactInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Contact Information</h1>
    <br />
    <div id="contactError" class="alert alert-danger text-center" runat="server" visible="false">
        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
        <asp:Label ID="Label11" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
    </div>
    <div id="contactSuccess" class="alert alert-success text-center" runat="server" visible="false">
        <i class="fa fa-check-circle" aria-hidden="true"></i>
        <asp:Label ID="lblSucces" runat="server" Text=" SUCCESS: The contact information  item request has been submitted."></asp:Label>
    </div>
    <br />
    <div class="box purple-top">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i>Create New Contact Information Item</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="form">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtContactFirstName">First Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtContactLastName">Last Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtContactTitle">Professional Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 time-padding">
                            <label for="txtContactPhone">Phone: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactPhone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtContactEmail">Email: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtContactLocation">Location: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtContactLocation" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnContactCancel" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnContactSubmit" CssClass="btn btn-purple form-control pull-right" runat="server" Text="SUBMIT" OnClick="btnContactSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="box purple-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i>Contact Information</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <asp:GridView ID="gvAdminContact" runat="server" AutoGenerateColumns="false" OnRowCommand="gvAdminContact_RowCommand" CssClass="table table-bordered table-hover" CellPadding="0">
                <Columns>
                    <asp:BoundField DataField="ConID" Visible="false" />
                    <asp:BoundField DataField="ContactFirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="ContactLastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="ProfessionalTitle" HeaderText="Professional Title" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                    <asp:TemplateField HeaderText="Manage Contact Information">
                        <ItemTemplate>  
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                       
                            <asp:LinkButton ID="linkBtnEdit" runat="server" CssClass="btn btn-purple tablebtns" CommandName="EditContact" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="linkBtnDelete" runat="server" CssClass="btn btn-danger tablebtns" CommandName="DeleteContact" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"><i class="fa fa-trash" aria-hidden="true"></i> Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
            </asp:GridView>
            <%-- <table id="#example" class="dt-contact table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Professional Title</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Jaclyn</td>
                        <td>VanOrden</td>
                        <td>Advisor</td>
                        <td>215-204-2890</td>
                        <td>jaclyn.vanorden@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Keith</td>
                        <td>Schweiger</td>
                        <td>Advisor</td>
                        <td>215-204-2890</td>
                        <td>keiths@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>Firs</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                    <tr>
                        <td>First</td>
                        <td>Last</td>
                        <td>Advisor</td>
                        <td>555-555-5555</td>
                        <td>someemail@temple.edu</td>
                        <td>Paley Library, Suite 105</td>
                        <td class="text-center"><a class="btn btn-purple" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a></td>
                        <td class="text-center"><a class="btn btn-danger" runat="server"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                    </tr>
                </tbody>
            </table>--%>
        </div>
    </div>

    <%--MODALS--%>
    <div class="modal fade" id="contactDeleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center bgpurple">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="deleteModalLabel">Delete Contact Information?</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Are you sure you want to delete this contact information?</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton ID="LinkButton2" runat="server" data-dismiss="modal" CssClass="btn btn-default">NO</asp:LinkButton>

                    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" CssClass="btn btn-purple">YES</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="contactEditModal" tabindex="-1" role="dialog" aria-labelledby="contactModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center bgpurple">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="contactModalLabel">Create New Contact Information Request</h4>
                    <small>Please fill out the form below to add an contact information item.</small>
                </div>
                <div class="modal-body">
                    <div class="form">
                        <%--<div id="contactError" class="alert alert-danger text-center" runat="server">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label11" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                            </div>
                            <div id="contactSuccess" class="alert alert-success text-center" runat="server">
                                <i class="fa fa-check-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label12" runat="server" Text=" SUCCESS: The contact information  item request has been submitted."></asp:Label>
                            </div>--%>
                        <asp:TextBox ID="txtID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="txtContactFirstName">First Name: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-6">
                                    <label for="txtContactLastName">Last Name: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtLName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="txtContactTitle">Professional Title: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 time-padding">
                                    <label for="txtContactPhone">Phone: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" data-inputmask="mask: (999) 999-9999" data-mask></asp:TextBox>
                                </div>
                                <div class="col-sm-6">
                                    <label for="txtContactEmail">Email: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="txtContactLocation">Location: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button1" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                    <asp:Button ID="btnUpdate" CssClass="btn btn-purple" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
