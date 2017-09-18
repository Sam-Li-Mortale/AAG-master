<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="AcademicAdvisingGroup.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <script language="C#" runat="server">

      void LinkButton_Click(Object sender, EventArgs e) 
      {
         
      }

   </script>--%>


    <h1 class="text-center">Welcome, Jaclyn!</h1>
    <br />
    <br />
    <div class="row">
        <div class="col-sm-6">
            <div class="box cherry-top" style="overflow-y: auto; height: 500px;">
                <div class="box-header with-border">
                    <h3 class="box-title">Pending Requests</h3>
                    <div class="box-tools pull-right">
                        <span class="label label-default">7 New Requests</span>
                    </div>
                </div>
                <div class="box-body">



                    <asp:GridView ID="gvPendingRequest" runat="server" AutoGenerateColumns="False" OnRowCommand="gvPendingRequest_RowCommand" CssClass="table table-bordered table hover" CellPadding="0">
                <Columns>
                   
                    <asp:BoundField DataField="RequestID" Visible="False" HeaderText="RequestID" />
                    <asp:BoundField DataField="Request Category" HeaderText="Request Category" />
                    <asp:BoundField DataField="Submitter" HeaderText="Submitter" />
                    <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" />
                    <asp:ButtonField ButtonType="Button" HeaderText="" Text="View" CommandName="View"  />              
                </Columns>
            </asp:GridView>


                    <%--<asp:PlaceHolder ID = "PlaceHolder1" runat="server" />--%>

                    <%--<table class="dt-requests table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Request Category</th>
                                <th>Submitter</th>
                                <th>Date Submitted</th>
                                <th>View</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td>Announcement</td>
                                <td>Tiara Jarvis</td>
                                <td>12/25/2016</td>
                                <td><a class="btn btn-cherry" href="#" data-toggle="modal" data-target="#viewModal">View</a></td>
                            </tr>
                            <tr>
                                <td>Professional Development</td>
                                <td>Jackie VanOrden</td>
                                <td>12/29/2016</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                            <tr>
                                <td>Event</td>
                                <td>Keith Schweiger</td>
                                <td>1/20/2017</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                            <tr>
                                <td>Policy</td>
                                <td>Ryan McClernan</td>
                                <td>12/06/2016</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                            <tr>
                                <td>Resource</td>
                                <td>Allan Renton</td>
                                <td>11/04/2017</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                            <tr>
                                <td>Achievement</td>
                                <td>Tal Eidenzon</td>
                                <td>1/25/2016</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                            <tr>
                                <td>Contact Information</td>
                                <td>Sami Alamri</td>
                                <td>12/30/2016</td>
                                <td><a class="btn btn-cherry" href="#">View</a></td>
                            </tr>
                        </tbody>
                    </table>--%>


                    
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="box cherry-top" style="overflow-y: auto; height: 500px;">
                <div class="box-header with-border">
                    <h3 class="box-title">Quick Links</h3>
                </div>
                <div class="box-body">
                    <a href="AdminAnnouncements.aspx" class="info-box bgblue">
                        <span class="info-box-icon"><i class="fa fa-bullhorn"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Announcements</h2>
                        </div>
                    </a>
                    <a href="AdminAchievements.aspx" class="info-box bglight-blue">
                        <span class="info-box-icon"><i class="fa fa-star"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Achievements</h2>
                        </div>
                    </a>
                    <a href="AdminEvents.aspx" class="info-box bgpink">
                        <span class="info-box-icon"><i class="fa fa-calendar"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Events</h2>
                        </div>
                    </a>
                    <a href="AdminResources.aspx" class="info-box bgteal">
                        <span class="info-box-icon"><i class="fa fa-files-o"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Resources</h2>
                        </div>
                    </a>
                    <a href="AdminProfessionalDevelopment.aspx" class="info-box bggreen">
                        <span class="info-box-icon"><i class="fa fa-briefcase"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Professional Development</h2>
                        </div>
                    </a>
                    <a href="AdminPolicies.aspx" class="info-box bgyellow">
                        <span class="info-box-icon"><i class="fa fa-gavel"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Policies</h2>
                        </div>
                    </a>
                    <a href="AdminContactInformation.aspx" class="info-box bgpurple">
                        <span class="info-box-icon"><i class="fa fa-address-card-o"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Contact Information</h2>
                        </div>
                    </a>
                    <a href="ManageAdministrators.aspx" class="info-box bgcherry">
                        <span class="info-box-icon"><i class="fa fa-user"></i></span>
                        <div class="info-box-content">
                            <h2 class="text-center">Manage Administrators</h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

  





    <%--ANNOUNCEMENT MODAL--%>
        <div class="modal fade" id="announcementModal" tabindex="-1" role="dialog" aria-labelledby="announcementModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgblue">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="announcementModalLabel">Approve Pending Announcement Request</h4>
                        <small>Please review the form below and Approve or Deny an announcement request to the page.</small>
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
                               <asp:TextBox ID="txtAnnouncementRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                 <asp:TextBox ID="txtAnnouncementSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtAnnouncementDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnAnnouncementCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnAnnouncementSubmit" CssClass="btn btn-primary" data-dismiss="modal" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>


     <%--EVENT MODAL--%>
        <div class="modal fade" id="eventModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgpink">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="eventModalLabel">Approve Pending Event Request</h4>
                        <small>Please review the form below and Approve or Deny an Event request to the calendar.</small>
                    </div>
                    <div class="modal-body">
                        <div class="form">
                            <%--<div id="eventError" class="alert alert-danger text-center" runat="server">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                <asp:Label ID="lblEventError" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                            </div>
                            <div id="eventSuccess" class="alert alert-success text-center" runat="server">
                                <i class="fa fa-check-circle" aria-hidden="true"></i>
                                <asp:Label ID="lblEventSuccess" runat="server" Text=" SUCCESS: The event request has been submitted."></asp:Label>
                            </div>--%>
                            <div class="form-group">
                                <asp:TextBox ID="txtEventRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                 <asp:TextBox ID="txtEventSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtEventDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>

                                <div class="row">
                                    <div class="col-sm-7">
                                        <label for="txtEventTitle">Title: <span style="color: red;">*</span></label>
                                        <asp:TextBox ID="txtEventTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-5">
                                        <label for="ddlEventType">Type: <span style="color: red;">*</span></label>
                                        <asp:DropDownList ID="ddlEventType" CssClass="form-control dropdown" runat="server">
                                            <asp:ListItem>Conference</asp:ListItem> 
                                            <asp:ListItem>Meeting</asp:ListItem> 
                                            <asp:ListItem>Dance</asp:ListItem> 
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label for="txtEventStartTime">Start Time: <span style="color: red;">*</span></label>
                                        <div class="time-padding input-group bootstrap-timepicker">
                                            <asp:TextBox ID="txtEventStartTime" runat="server" CssClass="time-radius form-control timepicker"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="txtEventStartDate">Date: <span style="color: red;">*</span></label>
                                        <div class="datepicker input-group date">
                                            <asp:TextBox ID="txtEventStartDate" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="txtEventEndTime">End Time: <span style="color: red;">*</span></label>
                                        <div class="time-padding input-group bootstrap-timepicker">
                                            <asp:TextBox ID="txtEventEndTime" runat="server" CssClass="time-radius form-control timepicker"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="txtEventEndDate">Date: <span style="color: red;">*</span></label>
                                        <div class="datepicker input-group date">
                                            <asp:TextBox ID="txtEventEndDate" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label for="eventDescription">Description: <span style="color: red;">*</span></label>
                                        <textarea runat="server" class="form-control" id="eventDescription" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnEventCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnEventDeny" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="DENY" />
                        <asp:Button ID="btnEventSubmit" CssClass="btn btn-pink" data-dismiss="modal" runat="server" Text="APPROVE" />
                    </div>
                </div>
            </div>
        </div>


     <%--POLICY MODAL--%>
        <div class="modal fade" id="policyModal" tabindex="-1" role="dialog" aria-labelledby="policyModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgyellow">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-center" id="policyModalLabel">Approve Pending Policy Request</h4>
                        <small>Please review the form below and Approve or Deny a Policy request to the Policy Page.</small>
                    </div>
                    <div class="modal-body">
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
                                <asp:TextBox ID="txtPolicyRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                 <asp:TextBox ID="txtPolicySubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtPolicyDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                <div class="row">
                                    <div class="col-sm-7">
                                        <label for="txtpolicyTitle">Title: <span style="color: red;">*</span></label>
                                        <asp:TextBox ID="txtpolicyTitle" runat="server" CssClass="form-control"></asp:TextBox>
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnPolicyCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnPolicySubmit" CssClass="btn btn-yellow" data-dismiss="modal" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>

      <%--RESOURCE MODAL--%>
        <div class="modal fade" id="resourceModal" tabindex="-1" role="dialog" aria-labelledby="resourceModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgteal">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="resourceModalLabel">Approve Pending Resource Request</h4>
                        <small>Please review the form below and Approve or Deny a Resource request to the Resources Page.</small>
                    </div>
                    <div class="modal-body">
                        <div class="form">
                            <%--<div id="resourceError" class="alert alert-danger text-center" runat="server">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label3" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                            </div>
                            <div id="resourceSuccess" class="alert alert-success text-center" runat="server">
                                <i class="fa fa-check-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label4" runat="server" Text=" SUCCESS: The resource request has been submitted."></asp:Label>
                            </div>--%>
                            <div class="form-group">
                                <asp:TextBox ID="txtResourceRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                <asp:TextBox ID="txtResourceSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                <asp:TextBox ID="txtResourceDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                <div class="row">
                                    <div class="col-sm-7">
                                        <label for="resourceTitle">Title: <span style="color: red;">*</span></label>
                                        <asp:TextBox ID="txtResourceTitle" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:TextBox ID="txtResourceFile" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            <label class="input-group-btn">
                                                <span class="btn btn-teal"><i class="fa fa-upload" aria-hidden="true"></i>
                                                    <input type="file" style="display: none;" /></span>
                                            </label>
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnResourceCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnResourceSubmit" CssClass="btn btn-teal" data-dismiss="modal" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>



      <%--ACHIEVEMENT MODAL--%>
        <div class="modal fade" id="achievementModal" tabindex="-1" role="dialog" aria-labelledby="achievementModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bglight-blue">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="achievementModalLabel">Approve Pending Achievement Request</h4>
                        <small>Please review the form below and Approve or Deny an Achievement request to the page.</small>
                    </div>
                    <div class="modal-body">
                        <div class="form">
                            <%--<div id="achievementError" class="alert alert-danger text-center" runat="server">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label9" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
                            </div>
                            <div id="achievementSuccess" class="alert alert-success text-center" runat="server">
                                <i class="fa fa-check-circle" aria-hidden="true"></i>
                                <asp:Label ID="Label10" runat="server" Text=" SUCCESS: The achievement item request has been submitted."></asp:Label>
                            </div>--%>
                            <div class="form-group">
                                 <asp:TextBox ID="txtAchievementRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>                               
                                 <asp:TextBox ID="txtAchievementSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtAchievementDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
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
                                        <label for="tbxAchievementDate">Achievement Date: <span style="color: red;">*</span></label>
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
                                        <label for="txtAchievementDescription">Description: <span style="color: red;">*</span></label>
                                        <textarea runat="server" class="form-control" id="txtAchievementDescription" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnAchievementCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnAchievementSubmit" CssClass="btn btn-lblue" data-dismiss="modal" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>



     <%--PROF DEV MODAL--%>
        <div class="modal fade" id="profdevModal" tabindex="-1" role="dialog" aria-labelledby="profdevModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bggreen">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="profdevModalLabel">Approve Pending Professional Developement Request</h4>
                        <small>Please review the form below and Approve or Deny an Pending Professional Developement request to the page.</small>
                    </div>
                    <div class="modal-body">
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
                                 <asp:TextBox ID="txtProfDevRequestID" runat="server" CssClass="form-control" Visible ="false"></asp:TextBox>                        
                                 <asp:TextBox ID="txtProfDevSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtProfDevDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnProfDevCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnProfDevSubmit" CssClass="btn btn-green" data-dismiss="modal" runat="server" Text="SUBMIT" />
                    </div>
                </div>
            </div>
        </div>

    <%--CONTACT INFO MODAL--%>
        <div class="modal fade" id="contactModal" tabindex="-1" role="dialog" aria-labelledby="contactModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgpurple">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="contactModalLabel">Approve Pending Contact Information Request</h4>
                        <small>Please review the form below and Approve or Deny an Pending Contact Information request to the page.</small>
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
                            <div class="form-group">
                                <asp:TextBox ID="txtContactRequestID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>                                                      
                                 <asp:TextBox ID="txtContactSubmitter" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                   <asp:TextBox ID="txtContactDateSubmitted" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
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
                                        <asp:TextBox ID="txtContactPhone" runat="server" CssClass="form-control" data-inputmask="mask: (999) 999-9999"></asp:TextBox>
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnContactCancel" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="CANCEL" />
                        <asp:Button ID="btnContactSubmit" CssClass="btn btn-purple" runat="server" Text="SUBMIT" OnClick="btnContactSubmit_Click"/>
                    </div>
                </div>
            </div>
        </div>


</asp:Content>
