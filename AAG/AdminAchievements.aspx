<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAchievements.aspx.cs" Inherits="AcademicAdvisingGroup.AdminAchievements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Achievements</h1><br />

    <div class="box light-blue-top collapsed-box">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> Create New Achievement Item</h3>
            
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            </div>
        </div>

        <%-- Achievement Submission Form --%>
        <div class="box-body">
            <div class="form">
                <div id="achievementError" class="alert alert-danger text-center" runat="server">
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label9" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                </div>
                <div id="achievementSuccess" class="alert alert-success text-center" runat="server">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <asp:Label ID="Label10" runat="server" Text=" SUCCESS: The achievement item request has been submitted."></asp:Label>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtFirstName">First Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtLastName">Last Name: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtAchievementTitle">Title: <span style="color: red;">*</span></label>
                            <asp:TextBox ID="txtAchievementTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 time-padding">
                            <label for="ddlAchievementType">Type: <span style="color: red;">*</span></label>
                            <asp:DropDownList ID="ddlAchievementType" CssClass="form-control dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-6">
                            <label for="tbxAchievementDate">Achievemnt Date: <span style="color: red;">*</span></label>
                            <span style="cursor: pointer;" data-container="body" data-toggle="popover" data-placement="top" data-content="The date the achievement was received.">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>
                            </span>
                            <div class="datepicker input-group date">
                                <asp:TextBox ID="tbxAchievementDate" runat="server" CssClass="form-control"></asp:TextBox>
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="txtAchievementLink">Link Attachment:</label>
                            <asp:TextBox ID="txtAchievementLink" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="txtAchievementFileName">File Name:</label>
                            <asp:TextBox ID="txtAchievementFileName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="txtAchievementFile">File Attachment:</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtAchievementFile" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                <label class="input-group-btn">
                                    <span class="btn btn-lblue"><i class="fa fa-upload" aria-hidden="true"></i>
                                        <input type="file" style="display: none;" /></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="achievementDescription">Description: <span style="color: red;">*</span></label>
                            <textarea runat="server" class="form-control" id="achievementDescription" rows="5"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <%-- SUBMIT & CANCEL Buttons --%>
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-3">
                        <asp:Button ID="btnAchievementCancel" onclick="btnAchievementCancel_Click" CssClass="btn btn-default form-control pull-right" runat="server" Text="CANCEL" />
                    </div>
                    <div class="col-sm-3">
                        <asp:Button ID="btnAchievementSubmit" onclick="btnAchievementSubmit_Click" CssClass="btn btn-lblue form-control pull-right" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>
    </div><br />

    <div class="box light-blue-top scroll-x">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-star"></i> Achievements</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>

        <div class="box-body">
            <%-- GRIDVIEW for Achivements --%>
            <asp:GridView ID="gvAchievements" runat="server" AutoGenerateColumns="False" OnRowCommand="gvAchievements_RowCommand" CssClass="table table-bordered table-hover" CellPadding="0" OnSelectedIndexChanged="gvAdminResources_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="AchieveID" HeaderText="Achievement ID" />
                    <asp:BoundField DataField="AchievementID" HeaderText="Type" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="AchievementDate" HeaderText="Date" />
                    <asp:BoundField DataField="FileName" HeaderText="File Name" />
                    <asp:BoundField DataField="FileAttachment" HeaderText="File Attachment" />
                    <asp:BoundField DataField="URL" HeaderText="URL" />
                    <asp:ButtonField ButtonType="Button" HeaderText="Edit" Text="Edit" />
                    <asp:ButtonField ButtonType="Button" HeaderText="Delete" Text="Delete" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
