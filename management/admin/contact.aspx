<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false"
    CodeFile="contact.aspx.vb" Inherits="management_admin_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .ok
        {
            padding: 2px;
            text-align: center;
            color: White;
            background: green;
            text-decoration: none;
        }
        .nok
        {
            padding: 2px;
            text-align: center;
            color: White;
            background: red;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td>
                <strong>نمایش</strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="DG_SHOW" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                    DataSourceID="ODS" GridLines="Horizontal" DataKeyNames="id">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="ID" />
                        <asp:BoundField DataField="FnLn" HeaderText="FnLn" SortExpression="FnLn" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="tell" HeaderText="tell" SortExpression="tell" />
                        <asp:BoundField DataField="group" HeaderText="group" SortExpression="group" />
                        <asp:BoundField DataField="cuase" HeaderText="cuase" SortExpression="cuase" />
                        <asp:CheckBoxField DataField="flag" HeaderText="flag" SortExpression="flag" />
                        <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
                        <asp:BoundField DataField="Create_Date" HeaderText="Create_Date" SortExpression="Create_Date" />
                        <asp:BoundField DataField="Part" HeaderText="Part" SortExpression="Part" />
                        <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="نمایش/عدم نمایش"
                            SortExpression="Website">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("flag") %>' Enabled="false" />
                                <asp:LinkButton ID="LinkButton1" OnCommand="UpdateOK" CommandArgument='<%# Eval("id","{0}") %>'
                                    CssClass="ok" runat="server">O</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" OnCommand="UpdateNOK" CommandArgument='<%# Eval("id","{0}") %>'
                                    CssClass="nok" runat="server">O</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="false" OnCommand="Delete"
                                    CommandArgument='<%# Eval("id","{0}") %>' OnClientClick="return confirm('sure');">حذف</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_ContactTableAdapters.Select_Contact_AllTableAdapter">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ODS_Detail"
                    GridLines="Both">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="cuaseLabel" runat="server" Text='<%# Bind("cuase") %>' />
                    </ItemTemplate>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                <asp:ObjectDataSource ID="ODS_Detail" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_ContactTableAdapters.Select_Contact_ByIDTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DG_SHOW" Name="id" PropertyName="SelectedValue"
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
