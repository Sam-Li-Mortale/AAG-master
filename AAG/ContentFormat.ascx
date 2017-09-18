<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContentFormat.ascx.cs" Inherits="AAG.ContentFormat" %>

<div>
    <h4><asp:Label ID="lblTitle" runat="server"></asp:Label></h4>
    <p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
    <asp:HyperLink ID="URL" runat="server" Visible="false"></asp:HyperLink>
    <br />
    <asp:HyperLink ID="Download" runat="server" Visible="false"></asp:HyperLink>
</div>
<br />

