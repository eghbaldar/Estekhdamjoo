<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false"
    ValidateRequest="false" CodeFile="e_news.aspx.vb" Inherits="management_admin_e_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style13
        {
            width: 167px;
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
                <asp:GridView ID="dg" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                    DataSourceID="ODS_Show" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="ID" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a>نمایش پست</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" OnCommand="DeleteNews" CommandArgument='<%# Eval("id","{0}") %>'
                                    OnClientClick="return confirm('sure?');" runat="server">حذف</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton12" OnCommand="UpdateNews" CommandArgument='<%# Eval("id","{0}") %>'
                                    runat="server">ویرایش</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Show" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_Search_ListTableAdapters.Archive_NewsTableAdapter">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <strong>درج</strong>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style13">
                            عنوان:
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitle" runat="server" Width="355px" CssClass="CSSTEXTBOX"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                ErrorMessage="**********" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            لید متن:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAbstract" runat="server" Width="593px" CssClass="CSSTEXTBOX"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAbstract"
                                ErrorMessage="**********" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            متن:
                        </td>
                        <td>
                            <CKEditor:CKEditorControl ID="txtText" BasePath="../../Content/ckeditor" runat="server"
                                Language="fa"></CKEditor:CKEditorControl>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtText"
                                ErrorMessage="**********" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            تاریخ:
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDate"
                                ErrorMessage="**********" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            نمایش:
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rblInsert" runat="server">
                                <asp:ListItem Value="1" Selected="True">بله</asp:ListItem>
                                <asp:ListItem Value="0">خیر</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            عکس:
                        </td>
                        <td>
                            &nbsp;
                            <asp:FileUpload ID="FileUploadInsert" runat="server" />
                            &nbsp;(لطفا فایل را با png ذخیره کنید و با لینک روبرو optimize کنید&nbsp;&nbsp;
                            <a href="https://tinypng.com/">لینک</a> )
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnInsert" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                Text="درج خبر" ValidationGroup="2" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <strong>ویرایش</strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<table class="style1">
                    <tr>
                        <td class="style13">
                            کد:
                        </td>
                        <td>
                            <asp:Label ID="id" runat="server" Style="font-weight: 700; color: #CC0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            بازدید:
                        </td>
                        <td>
                            <asp:Label ID="visit" runat="server" Style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            عنوان:
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitleEdit" runat="server" Width="355px" CssClass="CSSTEXTBOX"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTextEdit"
                                ErrorMessage="**********" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            لید متن:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAbstractEdit" runat="server" Width="593px" CssClass="CSSTEXTBOX"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAbstractEdit"
                                ErrorMessage="**********" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            متن:
                        </td>
                        <td>
                            <CKEditor:CKEditorControl ID="txtTextEdit" BasePath="../../Content/ckeditor" runat="server"
                                Language="fa"></CKEditor:CKEditorControl>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTextEdit"
                                ErrorMessage="**********" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            تاریخ:
                        </td>
                        <td>
                            <asp:TextBox ID="txtDateEdit" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDateEdit"
                                ErrorMessage="**********" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            نمایش:
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rblEdit" runat="server">
                                <asp:ListItem Value="1" Selected="True">بله</asp:ListItem>
                                <asp:ListItem Value="0">خیر</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                            <asp:Image ID="Image" runat="server" />
                            <br />
                            <asp:Label ID="pic" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            عکس جدید:
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUploadEdit" runat="server" />
                            &nbsp;(لطفا فایل را با png ذخیره کنید و با لینک روبرو optimize کنید&nbsp;&nbsp;
                            <a href="https://tinypng.com/">لینک</a> )
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnEdit" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                Text="بروزرسانی" ValidationGroup="1" />
                        </td>
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
