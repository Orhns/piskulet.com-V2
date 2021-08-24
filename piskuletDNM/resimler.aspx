<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="resimler.aspx.cs" Inherits="piskuletDNM.resimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 858px;
        }
        .auto-style13 {
            width: 19px;
            text-align: right;
        }
        .auto-style14 {
            width: 153px;
            text-align: right;
        }
        .auto-style15 {
            font-weight: bold;
        }
        .auto-style16 {
            width: 19px;
            height: 26px;
            text-align: right;
            background-color: #808080;
        }
        .auto-style17 {
            width: 153px;
            height: 26px;
            background-color: #808080;
        }
        .auto-style18 {
            width: 135px;
            height: 26px;
            background-color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style9">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("bike_Name") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style14">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("bike_BigImg") %>' Width="150px" />
                    </td>
                    <td class="auto-style19"><strong>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style15" OnDataBinding="Button1_Click" />
                        </strong></td>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="Güncelle" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
