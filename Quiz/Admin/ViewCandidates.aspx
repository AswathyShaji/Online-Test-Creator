<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewCandidates.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="quiz_name" HeaderText="Event" />
                        <asp:BoundField DataField="user_teamname" HeaderText="Team" />
                        <asp:BoundField DataField="user_mb1" HeaderText="Member1" />
                        <asp:BoundField DataField="user_mb2" HeaderText="Member2" />
                        <asp:BoundField DataField="user_address" HeaderText="Address/College" />
                        <asp:BoundField DataField="user_email" HeaderText="Email" />
                        <asp:BoundField DataField="user_phone" HeaderText="Contact" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px"></td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

