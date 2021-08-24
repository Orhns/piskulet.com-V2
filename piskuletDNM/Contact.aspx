<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="piskuletDNM.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="~/StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 102px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 100%;
            height: 296px;
        }
        .auto-style7 {
            width: 102px;
            text-align: right;
            height: 32px;
        }
        .auto-style8 {
            text-align: left;
            height: 32px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style11 {
            width: 100%;
            font-weight: bold;
            background-color: #9999FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width:1000px;margin:auto">
            <div class="auto-style2" style=" height:50px; margin:auto; background-color:black;">
                <a href="home.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~\images\icons2\cycling.png" style="margin-left:10px;" Height="45px" Width="45px"/></a>&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label666" runat="server" CssClass="auto-style1" ForeColor="White" Text="Piskulet.com"></asp:Label>
                </strong>
                <a href="Contact.aspx"><asp:Image ID="Image4" runat="server" Height="40px" style="margin-left:740px;" ImageUrl="~/images/icons2/email.png" Width="40px" /></a>
            </div>
            <div class="contact-container" >
                <div class="contact-wrapper" style="background-color: rgb(255, 217, 0);border-radius: 10px;padding: 10px;max-width: 40%;margin: auto;">
                    <table class="auto-style6" border="1" style="border: thin dashed #FFFFFF">
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label667" runat="server" Text="Ad : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style5" style="border: thin dashed #FFFFFF;">
                                <asp:TextBox ID="TextBoxAD" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAD" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label668" runat="server" Text="Soyad : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style5" style="border: thin dashed #FFFFFF;">
                                <asp:TextBox ID="TextBoxSOYAD" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxSOYAD" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label674" runat="server" Text="Cinsiyet:"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style8" style="border: thin dashed #FFFFFF;"><asp:RadioButtonList ID="Gender" runat="server" CellPadding="5" RepeatDirection="Horizontal">
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="O">Other</asp:ListItem>
                        </asp:RadioButtonList></td>
                        </tr>
                        <tr>
                            <td class="auto-style7" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label669" runat="server" Text="Bisiklet : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style8" style="border: thin dashed #FFFFFF;">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="bike_Name" DataValueField="Id">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bikes_DBConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [bike_Name] FROM [bikes] ORDER BY [Id]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label670" runat="server" Text="Mobil : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style5" style="border: thin dashed #FFFFFF;">
                                <asp:TextBox ID="TextBoxMOBIL" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMOBIL" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label671" runat="server" Text="Email : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style5" style="border: thin dashed #FFFFFF;">
                                <asp:TextBox ID="TextBoxEMAIL" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxEMAIL" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Label ID="Label672" runat="server" Text="Mesaj : "></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style5" style="border: thin dashed #FFFFFF;">
                                <asp:TextBox ID="TextBoxMESAJ" runat="server" Height="38px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMESAJ" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="border: thin dashed #FFFFFF;"><strong></strong></td>
                            <td class="auto-style9" style="border: thin dashed #FFFFFF;">
                                <strong>
                                <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="auto-style11" OnClick="Button1_Click" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
