<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="QuestionList.aspx.vb" Inherits="management_admin_QuestionList" %>

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
                                        DataSourceID="ODS_Show" CellPadding="5"  ShowFooter="True" 
                                      Width="949px" AllowPaging="True" PageSize="20" ForeColor="#333333">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="کد" InsertVisible="False" ReadOnly="True"
                                                SortExpression="ID" />
                                            <asp:BoundField DataField="Title" HeaderText="عنوان نمونه سوال" SortExpression="Title">
                                                <ItemStyle Width="620px" />
                                            </asp:BoundField>
                                               <asp:BoundField DataField="Title1" HeaderText="دسته نمونه سوال" SortExpression="Title1">
                                                <ItemStyle Width="620px" />
                                            </asp:BoundField>
                                              <asp:BoundField DataField="visit" HeaderText="تعداد بازدید" SortExpression="visit">
                                                <ItemStyle Width="150px" />
                                            </asp:BoundField>
                                             
                                              <asp:BoundField DataField="size" HeaderText="حجم فایل" SortExpression="size">
                                                <ItemStyle Width="150px" />
                                            </asp:BoundField>
                                                <asp:BoundField DataField="price" HeaderText="قیمت" SortExpression="size">
                                                <ItemStyle Width="150px" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="ContextAnchor">
                                                        <asp:LinkButton CssClass="Anchor" ID="LinkButton1" OnCommand="DeleteQuestion" CommandArgument='<%# Eval("id","{0}") %>'
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
                                                        <a href="#" class="Anchor" onclick="window.open ('<%# Eval("id","Edit_question.aspx?id={0}") %>', 'mywindow','location=1,status=1,scrollbars=1, width=750,height=700');">
                                                            ویرایش </a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="ODS_Show" runat="server" OldValuesParameterFormatString="original_{0}"
                                        SelectMethod="GetData" TypeName="DS_QuestionTableAdapters.CMS_Select_Question_ListTableAdapter">
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
