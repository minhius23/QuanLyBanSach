<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_left.ascx.cs" Inherits="m_page.UC_left" %>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Theoloaisach.aspx?maloai=" + Eval("Ma_dausach") %>' Text='<%# Eval("Ten_dausach") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>

