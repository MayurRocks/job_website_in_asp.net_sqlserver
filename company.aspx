<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            color: #333399;
            font-size: medium;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {}
        .auto-style5 {
            text-align: center;
            color: #333399;
            font-size: x-large;
        }
        .auto-style6 {}
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style5">
        <span class="auto-style3">COMPANY DETAILS AND REQUIREMENTS </span>
        <br class="auto-style3" />
    </p>
    <p class="auto-style2">
&nbsp;&nbsp;&nbsp;
    <span class="auto-style7">SEARCH BY</span></p>
    <p class="auto-style2">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style8" Width="132px">
            <asp:ListItem>Local</asp:ListItem>
            <asp:ListItem>Global</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p class="auto-style2">
        &nbsp;VACANCY :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtvac" runat="server" CssClass="auto-style6" Height="16px" TextMode="Number" Width="138px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4" DataSourceID="com" Height="151px" Width="884px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cmp_id" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cmp_id" HeaderText="cmp_id" ReadOnly="True" SortExpression="cmp_id" />
                <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
                <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                <asp:BoundField DataField="deadline" HeaderText="deadline" SortExpression="deadline" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
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
        <asp:SqlDataSource ID="com" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Job_PortalConnectionString %>" DeleteCommand="DELETE FROM [COMPANY] WHERE [cmp_id] = @original_cmp_id AND (([c_name] = @original_c_name) OR ([c_name] IS NULL AND @original_c_name IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL)) AND (([deadline] = @original_deadline) OR ([deadline] IS NULL AND @original_deadline IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL))" InsertCommand="INSERT INTO [COMPANY] ([cmp_id], [c_name], [vacancy], [deadline], [contact_no], [email_id]) VALUES (@cmp_id, @c_name, @vacancy, @deadline, @contact_no, @email_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [COMPANY]" UpdateCommand="UPDATE [COMPANY] SET [c_name] = @c_name, [vacancy] = @vacancy, [deadline] = @deadline, [contact_no] = @contact_no, [email_id] = @email_id WHERE [cmp_id] = @original_cmp_id AND (([c_name] = @original_c_name) OR ([c_name] IS NULL AND @original_c_name IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL)) AND (([deadline] = @original_deadline) OR ([deadline] IS NULL AND @original_deadline IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cmp_id" Type="Int32" />
                <asp:Parameter Name="original_c_name" Type="String" />
                <asp:Parameter Name="original_vacancy" Type="Int32" />
                <asp:Parameter Name="original_deadline" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cmp_id" Type="Int32" />
                <asp:Parameter Name="c_name" Type="String" />
                <asp:Parameter Name="vacancy" Type="Int32" />
                <asp:Parameter Name="deadline" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_name" Type="String" />
                <asp:Parameter Name="vacancy" Type="Int32" />
                <asp:Parameter Name="deadline" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="original_cmp_id" Type="Int32" />
                <asp:Parameter Name="original_c_name" Type="String" />
                <asp:Parameter Name="original_vacancy" Type="Int32" />
                <asp:Parameter Name="original_deadline" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

