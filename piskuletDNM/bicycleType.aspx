<%@ Page Title="" Language="C#" MasterPageFile="~/masterpg.Master" AutoEventWireup="true" CodeBehind="bicycleType.aspx.cs" Inherits="piskuletDNM.bicycleType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style4 {
        font-size: large;
        display: flex;
        flex-direction: row;
        align-items: center;
        border-radius: 10px;
        max-width: 1000px;
        max-height: 35px;
        text-align: left;
        border: 10px none white;
        margin: auto;
        padding-left: 5px;
        padding-right: 5px;
        padding-top: 8px;
        padding-bottom: 5px;
        background-color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataList4" runat="server">
            <ItemTemplate>
                <asp:Image ID="Image3" runat="server" style="width:95%; border-radius:10px;  padding: 15px 10px 10px 20px;" ImageUrl='<%# Eval("bike_BigImg") %>' />
            </ItemTemplate>
        </asp:DataList>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:DataList ID="DataList3" runat="server" Width="806px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("bikeName") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("info") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("pros") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("cons") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
