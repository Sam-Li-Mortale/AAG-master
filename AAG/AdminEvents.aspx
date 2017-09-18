<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEvents.aspx.cs" Inherits="AcademicAdvisingGroup.AdminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Events</h1>
    <br />
    <div id="eventError" class="alert alert-danger text-center" runat="server" visible="false">
        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
        <asp:Label ID="lblEventError" runat="server" Text=" ERROR: Something went wrong. Please try again."></asp:Label>
    </div>
    <div id="eventSuccess" class="alert alert-success text-center" runat="server" visible="false">
        <i class="fa fa-check-circle" aria-hidden="true"></i>
        <asp:Label ID="lblEventSuccess" runat="server" Text=" SUCCESS: The event has been added."></asp:Label>
    </div>
    <br />
    <div class="box pink-top">
        <div class="box-body">
            <div id="admin-calendar"></div>
        </div>
    </div>

     <%--ADD MODAL--%>
    <div class="modal fade" id="addCalendarEventModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center bgpink">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="addCalendarEventLabel">Create New Event Request</h4>
                        <small>Please fill out the form below to add an event.</small>
                    </div>
                    <div class="modal-body">
                        <div class="form">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <label for="txtAddEventTitle">Title: <span style="color: red;">*</span></label>
                                        <asp:TextBox ID="txtAddEventTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-5">
                                        <label for="ddlEventType">Type: <span style="color: red;">*</span></label>
                                        <asp:DropDownList ID="ddltxtAddEventType" CssClass="form-control dropdown" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="txtEventStart">Start Date: <span style="color: red;">*</span></label>
                                            <div class="datetimepickerStart input-group date">
                                                <asp:TextBox ID="txtAddEventStart" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="txtEventEnd">End Date: <span style="color: red;">*</span></label>
                                            <div class="datetimepickerEnd input-group date">
                                                <asp:TextBox ID="txtAddEventEnd" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label for="eventDescription">Description: <span style="color: red;">*</span></label>
                                        <textarea runat="server" class="form-control" id="addEventDescr" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="Button1" runat="server" Text="CANCEL" CssClass="btn btn-default" data-dismiss="modal" />
                        <asp:Button ID="btnEventSubmit" runat="server" Text="SUBMIT" CssClass="btn btn-pink" OnClick="btnEventSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>

    <%--UPDATE MODAL--%>
    <div class="modal fade" id="calendarEventModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center bgpink">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="eventModalLabel">Manage Event</h4>
                </div>
                <div class="modal-body">
                    <div class="form">
                        <asp:TextBox ID="txtID" runat="server" CssClass="form-control" Visible="true" type="hidden"></asp:TextBox>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-7">
                                    <label for="txtEventTitle">Title: <span style="color: red;">*</span></label>
                                    <asp:TextBox ID="txtEventTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <label for="ddlEventType">Type: <span style="color: red;">*</span></label>
                                    <asp:DropDownList ID="ddlEventType" CssClass="form-control dropdown" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="txtEventStart">Start Date: <span style="color: red;">*</span></label>
                                        <div class="datetimepickerStart input-group date">
                                            <asp:TextBox ID="txtEventStart" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="txtEventEnd">End Date: <span style="color: red;">*</span></label>
                                        <div class="datetimepickerEnd input-group date">
                                            <asp:TextBox ID="txtEventEnd" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        </div>
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
                    <asp:Button ID="btnEventCancel" runat="server" Text="CANCEL" data-dismiss="modal" CssClass="btn btn-default" />
                    <a id="btnDeleteEvent" class="btn btn-danger"  href="#" data-toggle="modal" data-target="#calendarEventDeleteModal">DELETE</a>
                    <asp:Button ID="btnUpdateEvent" runat="server" Text="UPDATE" CssClass="btn btn-pink" OnClick="btnUpdateEvent_Click"/>
                </div>
            </div>
        </div>
    </div>

    <%--DELETE EVENT MODAL--%>
    <div class="modal fade" id="calendarEventDeleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center bgpink">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="deleteModalLabel">Delete Event?</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Are you sure you want to delete this event?</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton ID="LinkButton2" runat="server" data-dismiss="modal" CssClass="btn btn-default">NO</asp:LinkButton>

                    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" CssClass="btn btn-pink">YES</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
