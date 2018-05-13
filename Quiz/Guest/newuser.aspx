<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMasterPage.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="guest_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 126px;
        }
        .auto-style3 {
            width: 126px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 126px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            width: 571px;
        }
        .auto-style8 {
            height: 23px;
            width: 571px;
        }
        .auto-style9 {
            height: 25px;
            width: 571px;
        }
        .auto-style10 {
            width: 204px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" colspan="3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Event </td>
            <td class="auto-style7" colspan="3">
                <asp:DropDownList ID="ddlevent" runat="server" Height="16px" Width="124px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Team Name</td>
            <td class="auto-style8" colspan="2">
                <asp:TextBox ID="txtteamname" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtteamname" ErrorMessage="Enter first name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3">Member 1</td>
            <td class="auto-style8" colspan="2">
                <asp:TextBox ID="txtname1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="23px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname1" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Member 2</td>
            <td class="auto-style8" colspan="2">
                <asp:TextBox ID="txtname2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="23px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtname2" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address/College</td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtaddress" runat="server" Width="194px" Font-Bold="True" Font-Names="Times New Roman" Height="48px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter address/college"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="2">Contact</td>
            <td class="auto-style10" rowspan="2" colspan="2">
                <asp:TextBox ID="txtcontact" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="23px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter the phone number" ControlToValidate="txtcontact"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Phone number is not valid" ValidationExpression="([+][0-9]{10,12})" ValidationGroup="vgroup" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="2">Email</td>
            <td class="auto-style10" rowspan="2" colspan="2">
                <asp:TextBox ID="txtemail" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="30px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter e-mail ID" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email ID is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ValidationGroup="vgroup" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtusername" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="28px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" colspan="3">
                <asp:Button ID="btnchk" runat="server" BorderColor="Black" Text="Check Availability" Width="136px" OnClick="btnchk_Click" style="margin-left: 0px" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" colspan="3">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtpassword" runat="server" OnTextChanged="TextBox6_TextChanged" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="27px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtcnfrmpassword" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="27px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcnfrmpassword" ErrorMessage="Retype password" ValidationGroup="vgroup"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Security Question</td>
            <td class="auto-style9" colspan="3">
                <asp:DropDownList ID="ddlquestion" runat="server" Width="202px">
                    <asp:ListItem>What was the name of your first primary school?</asp:ListItem>
                    <asp:ListItem>What is your pets name?</asp:ListItem>
                    <asp:ListItem>What is your favourite colour?</asp:ListItem>
                    <asp:ListItem>What was your first phone number?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">Answer</td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtanswer" runat="server" Width="206px" Font-Bold="True" Font-Names="Times New Roman" Height="26px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter answer"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="butnsubmit" runat="server" Text="Save" Font-Bold="True" Font-Names="Times New Roman" Height="29px" OnClick="butnsubmit_Click1" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="butncancel" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Times New Roman" Height="30px" Width="64px" OnClick="butncancel_Click" CausesValidation="False" />
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" colspan="3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

