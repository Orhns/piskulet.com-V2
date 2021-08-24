<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="bisikletTurleri.aspx.cs" Inherits="piskuletDNM.bisikletTurleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style7 {
        font-size: small;
    }
    .auto-style8 {
        text-align: right;
        background-color: #000000;
    }
    .auto-style9 {
        width: 366px;
        text-align: left;
        background-color: #000000;
    }
    .auto-style10 {
        text-align: left;
    }
    .auto-style11 {
        text-align: left;
        background-color: #CCCCCC;
    }
    .auto-style12 {
        width: 366px;
        text-align: left;
        background-color: #CCCCCC;
    }
        .auto-style20 {
            width: 89px;
            text-align: left;
            background-color: #3399FF;
        }
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            width: 49px;
            background-color: #FF9933;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style24 {
            background-color: #FF9933;
        }
        .auto-style25 {
            font-weight: bold;
            font-size: large;
            margin-left: 13px;
        }
        .auto-style26 {
            width: 36px;
            background-color: #FF9933;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style10">
            <strong>
            <table class="auto-style21">
                <tr>
                    <td class="auto-style26">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style25" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style24">Sayfa içeriklerini düzenle</td>
                </tr>
            </table>
            </td>
            </tr>
            </table>
            </strong>
           
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style20">
                            Sayfa:</td>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("bikeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <a href="BisikletDetayAdmin.aspx?Id=<%# Eval("Id") %>""><asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/images/icons2/update.png" Width="35px" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
