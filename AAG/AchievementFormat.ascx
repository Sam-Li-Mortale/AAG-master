<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AchievementFormat.ascx.cs" Inherits="AAG.AchievementFormat" %>
<div>
    <h4><asp:Label ID="lblName" runat="server"></asp:Label></h4>
    <b><asp:Label ID="lblAchievementType" runat="server"></asp:Label></b>
    <p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
    <asp:HyperLink ID="URL" runat="server" Visible="false"></asp:HyperLink>    <br />
    <asp:HyperLink ID="Download" runat="server" download Visible="false"></asp:HyperLink>
</div>
<br />