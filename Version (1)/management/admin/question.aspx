<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="question.aspx.vb" Inherits="management_admin_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
            width: 93px;
            height: 30px;
        }
        .style32
        {
            height: 30px;
        }
        .style33
        {
            height: 36px;
            width: 158px;
        }
        .style34
        {
            font-family: Tahoma;
            font-size: 12px;
            width: 123px;
        }
        .dpl
        {
            margin-top:3px;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="style1">
        <tr>
            <td>
                <asp:MultiView ID="MultiView" runat="server">
                    <asp:View ID="insert_1" runat="server">
                      
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <br />
                                            درج نمونه سوال استخدامی جدید<br />
                                            &nbsp;<table class="style1">
                                                <tr>
                                                    <td class="style34">
                                                        عنوان  :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertTitle" runat="server" CssClass="CSSTEXTBOX" Width="450px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInsertTitle"
                                                            ForeColor="Red" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="style34">
                                                        دسته :
                                                    </td>
                                                    <td>
                                                        
                                                          <asp:DropDownList ID="DDL_categoryQ" runat="server" Width="250px" 
                                                              CssClass="CSSTEXTBOX" DataSourceID="ODS_CategoryQ" DataTextField="Title" 
                                                              DataValueField="ID" >
                                                        </asp:DropDownList>
                                                          <asp:ObjectDataSource ID="ODS_CategoryQ" runat="server" 
                                                              OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                                              TypeName="DS_QuestionTableAdapters.CMS_Select_Question_Category_AllTableAdapter">
                                                          </asp:ObjectDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        تاریخ درج :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertDate" runat="server" CssClass="CSSTEXTBOX_en"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                   <tr>
                                                    <td class="style34">
                                                        متن :
                                                    </td>
                                                    <td>
                                                        <CKEditor:CKEditorControl ID="txtInsertText" runat="server" BasePath="../../Content/ckeditor"
                                                            Language="fa"></CKEditor:CKEditorControl>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        قیمت :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertPrice" runat="server" CssClass="CSSTEXTBOX_en" 
                                                            Width="200px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        حجم :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertSize" runat="server" CssClass="CSSTEXTBOX_en" 
                                                            Width="200px"></asp:TextBox>
                                                          <asp:DropDownList ID="DDL_Size" runat="server" Width="100px" 
                                                            CssClass="CSSTEXTBOX" >
                                                              <asp:ListItem>MB</asp:ListItem>
                                                              <asp:ListItem>KB</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        نوع فایل :
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="DDL_Type" runat="server" Width="100px" 
                                                            CssClass="CSSTEXTBOX" >
                                                            <asp:ListItem>PDF</asp:ListItem>
                                                            <asp:ListItem>ZIP</asp:ListItem>
                                                        </asp:DropDownList>
                                                       
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="style34">
                                                        نمایش در صفحه اصلی :
                                                    </td>
                                                    <td>
                                                        <asp:RadioButtonList ID="rblInsertShowMain" runat="server">
                                                            <asp:ListItem Selected="True" Value="1">بله</asp:ListItem>
                                                            <asp:ListItem Value="0">خیر</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                              
                                                <tr>
                                                    <td class="style34">
                                                       فایل:
                                                    </td>
                                                    <td>
                                                           <div style="padding: 3px; border: 1px solid #ccc; background-color: White;"> 
                                                        <asp:FileUpload ID="FileUploadInsertFile" runat="server" />  <br />
                                                            </div>
                                                    </td>
                                                </tr>
                                             
                                               
                                                
                                                <tr>
                                                    <td class="style34">
                                                        عکس:
                                                    </td>
                                                    <td>
                                                        <div style="padding: 3px; border: 1px solid #ccc; background-color: White;">
                                                          
                                                            <div>
                                                                <asp:FileUpload ID="FileUploadInsert" runat="server" />
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        نمایش :
                                                    </td>
                                                    <td>
                                                        <asp:RadioButtonList ID="rblInsertShow" runat="server">
                                                            <asp:ListItem Selected="True" Value="1">بله</asp:ListItem>
                                                            <asp:ListItem Value="0">خیر</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            
                        <br />
                        <div>
                            <asp:Button ID="btnInsert" runat="server" Style="text-align: center; background-color: #fff;
                                margin-right: 100px; cursor: pointer; padding: 5px; background-color: #49BDC4;"
                                CssClass="CSSTEXTBOX" Text="ثبت نمونه سوال " ValidationGroup="1" Width="158px" ForeColor="White" />
                        </div>
                    </asp:View>
                    
    <asp:View ID="View1" runat="server">
        <div style="background-color: #4FBFC6; color: white; padding: 25px; font-size: 12px;
            font-weight: bold;">
            <div>
                نمونه سوال استخدامی جدید با موفقیت به ثبت رسید
            </div>
        </div>
    </asp:View>
    </asp:MultiView> </td> </tr> </table>
</asp:Content>

