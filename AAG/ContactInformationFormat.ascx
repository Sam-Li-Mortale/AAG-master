<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactInformationFormat.ascx.cs" Inherits="AAG.ContactInformationFormat" %>

<div class="col-sm-6">
    <div class="info-box">
        <span class="info-box-icon bgpurple" style="margin-top: 10px;"><i class="fa fa-user-circle-o"></i></span>
        <div class="info-box-content">
            <h5><b><asp:Label ID="lblName" runat="server"></asp:Label></b> - <asp:Label ID="lblTitle" runat="server"></asp:Label></h5>
            <span>Phone: </span>
            <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
            <br />
            <span>Email: </span>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
            <br />
            <span>Location: </span>
            <asp:Label ID="lblLocation" runat="server"></asp:Label>
        </div>
    </div>
</div>