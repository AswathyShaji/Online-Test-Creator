<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SetQuiz.aspx.cs" Inherits="Admin_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

*
{
    margin:0;
    padding:0;
}

    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="startquiz">
        <br />
        <h2>New quiz</h2>
        <br />
        <asp:Label ID="lblname" runat="server" Text="Quiz Name" />
        <br />
        <asp:TextBox ID="txtname" runat="server" height="25px" Width="350px" />
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="namevalidator" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="please enter quiz name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="submitvalidation" />
        <asp:RegularExpressionValidator ID="nameregexvalidator" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="only alphabets allowed" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[a-zA-Z'.\s]{1,100}$" ValidationGroup="submitvalidation" />
        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server" Text="Description" />
        <br />
        <asp:TextBox ID="txtdescription" runat="server" height="25px" Width="350px" />
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="descriptionvalidator" runat="server" ControlToValidate="txtdescription" Display="Dynamic" ErrorMessage="please enter description" ForeColor="Red" SetFocusOnError="true" ValidationGroup="submitvalidation" />
        <br />
        <br />
        <asp:Label ID="lblstartdate" runat="server" Text="Start Date" />
        <br />
&nbsp;<asp:TextBox ID="txtstartdate" runat="server" height="25px" OnTextChanged="txtstartdate_TextChanged" Width="125px" AutoPostBack="True" />
        &nbsp;
        <asp:RequiredFieldValidator ID="startdatevalidator" runat="server" ControlToValidate="txtstartdate" Display="Dynamic" ErrorMessage="please enter start date" ForeColor="Red" SetFocusOnError="true" ValidationGroup="submitvalidation" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lblvenue" runat="server" Text="Venue" />
        <br />
        <asp:TextBox ID="txtvenue" runat="server" height="25px" Width="125px" />
        <asp:RequiredFieldValidator ID="venuevalidator" runat="server" ControlToValidate="txtvenue" Display="Dynamic" ErrorMessage="please enter venue" ForeColor="Red" SetFocusOnError="true" ValidationGroup="submitvalidation" />
        <br />
        <br />
        &nbsp;<asp:Button ID="submitquiz" runat="server" Height="25px" OnClick="submitquiz_click" Text="Submit" ValidationGroup="submitvalidation" Width="75px" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="quiz_name" HeaderText="Event name" />
                <asp:BoundField DataField="quiz_description" HeaderText="Description" />
                <asp:BoundField DataField="quiz_date" HeaderText="Date" />
                <asp:BoundField DataField="quiz_venue" HeaderText="Venue" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("quiz_id") %>' CommandName="edt" Font-Bold="True" Font-Names="Times New Roman" Text="Edit" />
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("quiz_id") %>' CommandName="del" Font-Bold="True" Font-Names="Times New Roman" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    </div>
</asp:Content>

