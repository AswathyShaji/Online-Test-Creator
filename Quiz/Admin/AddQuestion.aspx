<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddQuestion.aspx.cs" Inherits="Admin_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Event
                <asp:DropDownList ID="ddlevent" runat="server" Height="16px" Width="124px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
                <br />
                Section&nbsp;&nbsp;
                <asp:DropDownList ID="ddlsection" runat="server" Height="16px" Width="170px" OnSelectedIndexChanged="ddlsection_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Question</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtquestion" runat="server" Height="32px" TextMode="MultiLine" Width="440px"></asp:TextBox>
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="25px" Width="210px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Option1&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtopt1" runat="server" Height="26px" Width="194px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Option2&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtopt2" runat="server" Height="26px" Width="194px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">option3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtopt3" runat="server" Height="26px" Width="194px"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>option4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtopt4" runat="server" Height="26px" Width="194px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtanswer" runat="server" Height="26px" Width="194px"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" BackColor="#00CC99" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="34px" OnClick="btnsubmit_Click" Text="Submit" Width="111px" />
                &nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#00CC99" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="34px" OnClick="btncancel_Click" Text="Cancel" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="quiz_name" HeaderText="Event Name" />
                        <asp:BoundField DataField="section_id" HeaderText="Round" />
                        <asp:BoundField DataField="question" HeaderText="Question" />
                        <asp:BoundField DataField="opt1" HeaderText="Option 1" />
                        <asp:BoundField DataField="opt2" HeaderText="Option 2" />
                        <asp:BoundField DataField="opt3" HeaderText="Option3" />
                        <asp:BoundField DataField="opt4" HeaderText="Option 4" />
                        <asp:BoundField DataField="answer" HeaderText="Answer" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("question_id") %>' CommandName="edt" Font-Bold="True" Font-Names="Times New Roman" Text="Edit" />
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("question_id") %>' CommandName="del" Font-Bold="True" Font-Names="Times New Roman" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

