<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false"
    CodeFile="agahi.aspx.vb" Inherits="management_admin_agahi" %>

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
                مشاهده آگهی کارفرمایان
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="DG_SHOW" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
                    DataKeyNames="ID" DataSourceID="ODS_Show" GridLines="None">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="ID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Create_Date" HeaderText="Create_Date" SortExpression="Create_Date" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                        <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website"
                            Visible="False" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"
                            Visible="False" />
                        <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" SortExpression="Expiry_Date" />
                        <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" Visible="False" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"
                            Visible="False" />
                        <asp:TemplateField HeaderText="AttachFile" SortExpression="AttachFile">
                            <ItemTemplate>
                                <a href='<%# Eval("AttachFile","../files/{0}") %>' runat="server" visible='<%# iif(Eval("AttachFile","{0}")="",false,true) %>'>
                                    دانلود فایل... </a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CodeTransaction" HeaderText="CodeTransaction" SortExpression="CodeTransaction" />
                        <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="نمایش/عدم نمایش"
                            SortExpression="Website">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Show") %>' Enabled="false" />
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
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Show" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AgahiKarfarmaTableAdapters.CMS_Select_Poster_AllTableAdapter">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="ODS_Detail">
                    <ItemTemplate>
                        <h2>
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                        </h2>
                        <br />
                        <asp:Label ID="TextLabel" runat="server" Text='<%# Bind("Text") %>' />
                        <br />
                        توضیحات:
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("description") %>' />
                        <br />
                        وبسایت:
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("website") %>' />
                        <br />
                        آدرس:
                        <br />
                        <asp:Label ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </ItemTemplate>
                </asp:FormView>
                <asp:ObjectDataSource ID="ODS_Detail" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AgahiKarfarmaTableAdapters.CMS_Select_Poster_ByIDTableAdapter">
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
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
