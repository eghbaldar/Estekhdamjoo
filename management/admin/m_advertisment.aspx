<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="m_advertisment.aspx.vb" Inherits="management_admin_m_advertisment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 115px;
        }
        .style28
        {
            width: 159px;
        }
        .Anchor
        {
            text-decoration: none;
            color: #105357;
        }
        .Anchor:hover
        {
            color: White;
        }
        .ContextAnchor
        {
            background-color: #DFE9F1;
            padding: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        .ContextAnchor:hover
        {
            background-color: #E76800;
        }
        .At
        {
            text-decoration: none;
            color: #105357;
        }
        .At:hover
        {
            color: White;
        }
        .style31
        {
            width: 115px;
            height: 52px;
        }
        .style32
        {
            height: 52px;
        }
        .style33
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
                            <tr>
                                <td>
                                    <asp:GridView ID="dgShow" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                        DataSourceID="ODS_Show" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="3" GridLines="Horizontal" ShowFooter="True" 
                                        ShowHeader="False" Width="949px" AllowPaging="True" PageSize="40">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                                                SortExpression="ID" />
                                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
                                                <ItemStyle Width="570px" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="ContextAnchor">
                                                        <asp:LinkButton CssClass="Anchor" ID="LinkButton1" OnCommand="DeleteNews" CommandArgument='<%# Eval("id","{0}") %>'
                                                            OnClientClick="return confirm('sure?');" runat="server">حذف</asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="ContextAnchor">
                                                        <a class="At" href='<%# ResolveUrl(Eval("id","../../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                                            target="_blank">نمایش </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <div class="ContextAnchor">
                                                        <a href="#" class="Anchor" onclick="window.open ('<%# Eval("id","e_Edit_advertisment.aspx?id={0}") %>', 'mywindow','location=1,status=1,scrollbars=1, width=750,height=700');">
                                                            ویرایش </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <div class="ContextAnchor">
                                                        <a href="#" class="Anchor" onclick="window.open ('<%# Eval("id","selectAttachImage.aspx?id={0}") %>', 'mywindow','location=1,status=1,scrollbars=1, width=750,height=700');">
                                                            اضافه کردن تصاویر ضمیمه </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="right" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="ODS_Show" runat="server" OldValuesParameterFormatString="original_{0}"
                                        SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.CMS_Select_Advertisement_AllTableAdapter">
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

