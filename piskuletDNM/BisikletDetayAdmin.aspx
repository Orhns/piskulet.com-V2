<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="BisikletDetayAdmin.aspx.cs" Inherits="piskuletDNM.BisikletDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            margin-top:25px;
            background-color:cadetblue;
        }
        .auto-style8 {
            width: 216px;
            text-align: center;
            font-size: medium;
        }
        .auto-style10 {
            width: 100%;
            margin-top: 3px;
            background-color: #3399FF;
            font-weight: bold;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7" border="1">
        <tr>
            <td class="auto-style8"><strong>Bisiklet türü(bikeName):</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="632px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Içerik (info)&nbsp; :&nbsp; </strong> </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="227px" TextMode="MultiLine" Width="635px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Artıları (Pros) : </strong> </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="66px" TextMode="MultiLine" Width="636px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Eksileri (Cons) :</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="66px" TextMode="MultiLine" Width="635px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong></strong></td>
            <td>
                <strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Update" />
                </em></strong>
            </td>
        </tr>
    </table>
</asp:Content>
