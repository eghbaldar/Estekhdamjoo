<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="questionCategory.aspx.vb" Inherits="management_admin_questionCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 14px;
        }
        .style14
        {
            width: 65px;
        }
        .style15
        {
            height: 45px;
        }
        .style16
        {
            width: 74px;
        }
        .style17
        {
            width: 569px;
        }
        .style18
        {
            width: 14px;
            height: 14px;
        }
        .style19
        {
            height: 14px;
        }
        .style20
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1">
        <tr>
            <td class="style20">
                <strong>مدیریت دسته نمونه سوالات</strong></td>
        </tr>
<tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style16">
                            عنوان دسته :
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitle" runat="server" Width="355px" CssClass="CSSTEXTBOX"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                ErrorMessage="**********" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="style16">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnInsert" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                Text="درج دسته" ValidationGroup="2" />
                            <asp:Button ID="btnEdit" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                Text="بروزرسانی" ValidationGroup="1" Visible="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <strong> لیست دسته نمونه سوالات استخدامی</strong>
            </td>
        </tr>
     
        <tr>
      
            <td>
            <table>
            <tr>
            <td class="style14">&nbsp;</td>
            <td class="style17">
                <asp:GridView ID="dg" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                    DataSourceID="ODS_CategoryC" AllowPaging="True" CellPadding="8" 
                    ForeColor="#333333" GridLines="None" Width="398px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="عنوان دسته" 
                            SortExpression="Title" >
                       
                           
                       
                        <ControlStyle Width="300px" />
                        <ItemStyle Width="280px" />
                        </asp:BoundField>
                       
                           
                       
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" OnCommand="Delete_Question_Category" CommandArgument='<%# Eval("id","{0}") %>'
                                    OnClientClick="return confirm('sure?');" runat="server">حذف</asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle Width="70px" />
                            <ItemStyle Width="60px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton12" OnCommand="Update_Question_Category" CommandArgument='<%# Eval("id","{0}") %>'
                                    runat="server">ویرایش</asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle Width="70px" />
                            <ItemStyle Width="60px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_CategoryC" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_QuestionTableAdapters.CMS_Select_Question_Category_AllTableAdapter">
                </asp:ObjectDataSource>
                </td>
            
            </tr>
                </table>
            </td>
        </tr>

        
       
        <tr>
            <td>
                &nbsp;<table class="style1">
                    <tr>
                        <td class="style18">
                            </td>
                        <td class="style19">
                            <asp:Label ID="id" runat="server" Style="font-weight: 700; color: #CC0000" 
                                Visible="False"></asp:Label>
                        </td>
                    </tr>
                  
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                   
                    <tr>
                        <td class="style13">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

