<%@ Page Language="VB" AutoEventWireup="false" CodeFile="selectAttachImage.aspx.vb"
    Inherits="management_admin_selectAttachImage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>اضافه کردن عکس های ضمیمه آگهی</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family: Tahoma;
            font-size: 11px;
        }
        .style2
        {
            text-align: right;
        }
        body{
        direction:ltr;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;border-bottom:1px solid green;">
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload" runat="server" />
                </td>
                <td>
                    :آپلود فایل</td>
            </tr>
            <tr>
                <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtCaption" ErrorMessage="***********" ValidationGroup="2"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCaption" runat="server"></asp:TextBox>
                </td>
                <td>
                    :عنوان عکس</td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Button ID="btnInsert" runat="server" Text="اضافه کردن" ValidationGroup="2" 
                        style="font-family: Tahoma" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="text-align: center;">
        <asp:DataList ID="DL" runat="server" DataKeyField="ID" DataSourceID="ODS" RepeatColumns="3"
            RepeatDirection="Horizontal">
            <ItemTemplate>
                <div>
                    <asp:Image ID="Image1" runat="server"  Height="200px" Width="200px" ImageUrl='<%# Eval("FileLink","~\management\images\AttachPhoto\{0}") %>' /></div>
                <div>
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/content/images/del.png" OnCommand="delete"
                        CommandArgument='<%# Eval("id","{0}") %>' OnClientClick="return confirm('مطمئن هستید؟');"
                        runat="server" />
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetData" TypeName="DS_AttachImageTableAdapters.CMS_Select_Advertisement_picture_TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="AdvertisementId" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div style="text-align: center;">
        <button onclick="window.close(); return false;" style="font: normal 10pt tahoma;">
            پنجره را ببند
        </button>
    </div>
    </form>
</body>
</html>
