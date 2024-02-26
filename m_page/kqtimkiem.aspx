<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kqtimkiem.aspx.cs" Inherits="m_page.kqtimkiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td rowspan="3">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/" + Eval("Duongdan_Anh") %>' />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Don Gia: "></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Chi_Tiet_MT.aspx?masp="+Eval("Ma_Sach") %>' Text='<%# Eval("Ten_Sach") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Dongia_Sach","{0:#,##0}VND") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnchonmua" runat="server" Text="chon mua" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
