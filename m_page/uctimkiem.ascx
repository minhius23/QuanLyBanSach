<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uctimkiem.ascx.cs" Inherits="m_page.uctimkiem" %>
<p>
    &nbsp;</p>
<asp:Label ID="Label1" runat="server" Text="TenSach"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txttensach" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Ten Tac Gia"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txttentacgia" runat="server"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btntimkiem" runat="server" OnClick="btntimkiem_Click" Text="Tim Kiem" />
