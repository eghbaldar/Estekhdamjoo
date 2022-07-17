<%@ Page Language="VB" AutoEventWireup="false" CodeFile="e_Edit_advertisment.aspx.vb"
    ValidateRequest="false" Inherits="management_admin_e_Edit_advertisment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ویرایش آگهی استخدامی</title>
    <link href="../../content/css/childWin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">}
        .style1
        {
            width: 100%;
            font-family:Tahoma;
        }

        .style14
        {
            width: 115px;
        }
        .CSSTEXTBOX
{
    font-family:Tahoma;
    font-size:11px;
    text-align:right;
    padding:8px;
    -moz-border-radius: 5px;	-webkit-border-radius: 5px;	 border-radius:5px;
    border:1px solid #ccc;
}
.CSSTEXTBOX_en
{
    font-family:Tahoma;
    font-size:11px;
    text-align:left;
    padding:8px;
    -moz-border-radius: 5px;	-webkit-border-radius: 5px;	 border-radius:5px;
    border:1px solid #ccc;
}

        .style15
        {
            width: 100%;
        }
        .style16
        {
            width: 118px;
        }
        .style28
        {
            width: 159px;
        }
        
        </style>
</head>
<body style="direction: rtl;">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <h3>
        </h3>
    </div>
    <div>
        <table class="style1">
            <tr class="fontT">
                <td>
                    <div class="divTitle">
                        ویرایش اطلاعات اصلی
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td>
                                <table class="style1">
                                    <tr>
                                        <td class="style14">
                                            عنوان آگهی
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertTitle" runat="server" CssClass="CSSTEXTBOX" Width="269px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInsertTitle"
                                                ErrorMessage="*********" ValidationGroup="1"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            تاریخ اصلی:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertDate" runat="server" CssClass="CSSTEXTBOX_en" Width="185px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtInsertDate" ErrorMessage="تاریخ" ValidationGroup="1"></asp:RequiredFieldValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            محاسبه تاریخ و زمان جدید:
                                        </td>
                                        <td class="">
                                            فرمت تاریخ وارده فوق ، باید بصورت&nbsp; 0000/00/00 باشد.//
                                            <asp:Label ID="lblTimeCraete" runat="server" 
                                                style="font-weight: 700; color: #009933"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            ایمیل
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertEmail" runat="server" CssClass="CSSTEXTBOX_en"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            وبسایت
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertWebsite" runat="server" CssClass="CSSTEXTBOX_en"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            تلفن
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertTell" runat="server" CssClass="CSSTEXTBOX_en"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            آدرس
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertAddress" runat="server" CssClass="CSSTEXTBOX" Width="603px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            تاریخ انقضا
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertDateExpire" runat="server" CssClass="CSSTEXTBOX_en" Width="188px"></asp:TextBox>
                                            &nbsp;&nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtInsertDateExpire" ErrorMessage="تاریخ" 
                                                ValidationGroup="1"></asp:RequiredFieldValidator>
                                            <br />
                                            فرمت تاریخ وارده فوق ، باید بصورت&nbsp; 0000/00/00 باشد.//
                                            <asp:Label ID="lblTimeExpire" runat="server" 
                                                style="color: #009900; font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            تعداد بازدید
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertVisit" runat="server" CssClass="CSSTEXTBOX_en" Width="161px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            لید متن:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInsertLid" runat="server" CssClass="CSSTEXTBOX" Width="603px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            متن
                                        </td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtInsertText" BasePath="../../Content/ckeditor" runat="server"
                                                Language="fa"></CKEditor:CKEditorControl>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            جنسیت
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="rblInsertSex" runat="server">
                                                <asp:ListItem Value="1">مرد</asp:ListItem>
                                                <asp:ListItem Value="0">زن</asp:ListItem>
                                                <asp:ListItem Selected="True">مهم نیست</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            نوع آگهی
                                        </td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <table class="style1">
                                                        <tr>
                                                            <td>
                                                                <asp:RadioButtonList ID="rblInsertType" runat="server" ValidationGroup="6" AutoPostBack="True">
                                                                    <asp:ListItem Selected="True" Value="1">ویژه-سراسری </asp:ListItem>
                                                                    <asp:ListItem Value="2">بانک</asp:ListItem>
                                                                    <asp:ListItem Value="0">معمولی</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:DropDownList ID="drpInsertBankID" runat="server" DataSourceID="ODS_Bank" DataTextField="Title"
                                                                    DataValueField="ID">
                                                                </asp:DropDownList>
                                                                شناسه بانک
                                                                <asp:ObjectDataSource ID="ODS_Bank" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
                                                                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.BankTableAdapter"
                                                                    UpdateMethod="Update">
                                                                    <DeleteParameters>
                                                                        <asp:Parameter Name="Original_ID" Type="Int32" />
                                                                    </DeleteParameters>
                                                                    <InsertParameters>
                                                                        <asp:Parameter Name="Title" Type="String" />
                                                                    </InsertParameters>
                                                                    <UpdateParameters>
                                                                        <asp:Parameter Name="Title" Type="String" />
                                                                        <asp:Parameter Name="Original_ID" Type="Int32" />
                                                                    </UpdateParameters>
                                                                </asp:ObjectDataSource>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                                                        <ProgressTemplate>
                                                            loading...........
                                                        </ProgressTemplate>
                                                    </asp:UpdateProgress>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            کد بانکی:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBankId" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            عکس جاری:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPic" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            نمایش:
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="rblInsertShow" runat="server">
                                                <asp:ListItem Selected="True" Value="1">بله</asp:ListItem>
                                                <asp:ListItem Value="0">خیر</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Button ID="btnUpdate" runat="server" CssClass="CSSTEXTBOX" Style="color: #FFFFFF;
                                                background-color: #0066FF" Text="ویرایش اطلاعات اصلی" 
                                                ValidationGroup="1" />
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
                </td>
            </tr>
            <tr class="fontT">
                <td>
                    <div class="divTitle">
                        ویرایش عکس
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <table class="style15">
                        <tr>
                            <td class="style16">
                                عکس قدیم
                            </td>
                            <td>
                                <asp:Image ID="Image" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                عکس جدید
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload" runat="server" />
                                &nbsp;(لطفا فایل را با png ذخیره کنید و با لینک روبرو optimize کنید&nbsp;&nbsp;&nbsp;<a
                                    href="https://tinypng.com/">لینک</a>&nbsp;)
                                <br />
                                طول و عرض تصویر:<br />
                                width:150px;height:150px
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                &nbsp;
                            </td>
                            <td>
                                <asp:Button ID="btnUpdatePhoto" runat="server" CssClass="CSSTEXTBOX" Style="color: #FFFFFF;
                                    background-color: #0066FF" Text="ویرایش عکس" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="fontT">
                <td>
                    <div class="divTitle">
                        ویرایش استان ها
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style28">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbSelectTyoeState" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                            <asp:ListItem>سراسری (همه ی استان ها و شهرها)</asp:ListItem>
                                            <asp:ListItem>استان</asp:ListItem>
                                            <asp:ListItem>شهر</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        انتخاب استان:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpState" runat="server" AutoPostBack="True" CssClass="CSSTEXTBOX"
                                            DataSourceID="ODS_State" DataTextField="Name" DataValueField="ID" Enabled="False">
                                        </asp:DropDownList>
                                        <asp:ObjectDataSource ID="ODS_State" runat="server" OldValuesParameterFormatString="original_{0}"
                                            SelectMethod="GetData" TypeName="DS_StateTableAdapters.List_StateTableAdapter">
                                        </asp:ObjectDataSource>
                                        <asp:DropDownList ID="drpCity" runat="server" CssClass="CSSTEXTBOX" DataSourceID="ODS_City"
                                            DataTextField="Name" DataValueField="ID" Enabled="False">
                                        </asp:DropDownList>
                                        <asp:ObjectDataSource ID="ODS_City" runat="server" OldValuesParameterFormatString="original_{0}"
                                            SelectMethod="GetData" TypeName="DS_StateTableAdapters.list_CityTableAdapter">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="drpState" Name="id" PropertyName="SelectedValue"
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Button ID="btnState" runat="server" CssClass="CSSTEXTBOX" Text="درج  ..." />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DataList ID="DL_States" runat="server" DataSourceID="ODS_AdState" RepeatColumns="6"
                                            RepeatDirection="Horizontal">
                                            <ItemTemplate>
                                                <div style="padding: 5px; border: 1px solid #ccc; -moz-border-radius: 5px; -webkit-border-radius: 5px;
                                                    border-radius: 5px;">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label13" Text='<%# Eval("name","{0}") %>' runat="server"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImageButton4" OnCommand="DeleteState" CommandArgument='<%# Eval("AdvertisementId","{0}")+"|"+Eval("StateId","{0}") %>'
                                                                    ImageUrl="~/content/images/del.png" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:ObjectDataSource ID="ODS_AdState" runat="server" OldValuesParameterFormatString="original_{0}"
                                            SelectMethod="GetData" TypeName="DS_StateTableAdapters.Select_Advertisement_state_All_TableAdapter">
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="AdvertisementId" QueryStringField="id" Type="Int64" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                    </td>
                                </tr>
                            </table>
                            <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="UpdatePanel3">
                                <ProgressTemplate>
                                    laoding...
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr class="fontT">
                <td>
                    <div class="divTitle">
                        ویرایش مدارک
                        <tr>
                            <td>
                                &nbsp;
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                        <table class="style1">
                                            <tr>
                                                <td class="style28">
                                                    انتخاب مدرک:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpDegree" runat="server" CssClass="CSSTEXTBOX">
                                                        <asp:ListItem Value="6">دکتری</asp:ListItem>
                                                        <asp:ListItem Value="5">فوق لیسانس</asp:ListItem>
                                                        <asp:ListItem Value="4">لیسانس</asp:ListItem>
                                                        <asp:ListItem Value="3">فوق دیپلم</asp:ListItem>
                                                        <asp:ListItem Value="2">دیپلم</asp:ListItem>
                                                        <asp:ListItem Value="1">زیر دیپلم</asp:ListItem>
                                                        <asp:ListItem Value="0">دانشجو</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style28">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnDegree" runat="server" CssClass="CSSTEXTBOX" Text="درج این مدرک ..." />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style28">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:DataList ID="DL_Degree" runat="server" DataSourceID="ODS_AdDegree" RepeatColumns="6"
                                                        RepeatDirection="Horizontal">
                                                        <ItemTemplate>
                                                            <div style="padding: 5px; border: 1px solid #ccc; -moz-border-radius: 5px; -webkit-border-radius: 5px;
                                                                border-radius: 5px;">
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="Label21" Text='<%# getTitleDegree(Eval("DegreeId","{0}")) %>' runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:ImageButton ID="ImageButton32" OnCommand="DeleteDegree" CommandArgument='<%# Eval("AdvertisementId","{0}")+"|"+Eval("DegreeId","{0}") %>'
                                                                                ImageUrl="~/content/images/del.png" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                    <asp:ObjectDataSource ID="ODS_AdDegree" runat="server" OldValuesParameterFormatString="original_{0}"
                                                        SelectMethod="GetData" TypeName="DegreeTableAdapters.Select_Advertisement_Degree_All_TableAdapter">
                                                        <SelectParameters>
                                                            <asp:QueryStringParameter Name="AdvertisementId" QueryStringField="id" Type="Int64" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:UpdateProgress ID="UpdateProgress4" runat="server" AssociatedUpdatePanelID="UpdatePanel4">
                                            <ProgressTemplate>
                                                laoding...
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr class="fontT">
                            <td>
                                ویرایش رشته ها
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <table class="style1">
                                            <tr>
                                                <td class="style28">
                                                    انتخاب رشته:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpFiled" runat="server" CssClass="CSSTEXTBOX" DataSourceID="ODS_Field"
                                                        DataTextField="Name" DataValueField="ID">
                                                    </asp:DropDownList>
                                                    <asp:ObjectDataSource ID="ODS_Field" runat="server" OldValuesParameterFormatString="original_{0}"
                                                        SelectMethod="GetData" TypeName="DS_FieldTableAdapters.CMS_Select_Field_AllTableAdapter">
                                                    </asp:ObjectDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style28">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnFields" runat="server" CssClass="CSSTEXTBOX" Text="درج این رشته ..." />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style28">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:DataList ID="DL_Fields" runat="server" DataSourceID="ODS_AdFields" RepeatColumns="6"
                                                        RepeatDirection="Horizontal">
                                                        <ItemTemplate>
                                                            <div style="padding: 5px; border: 1px solid #ccc; -moz-border-radius: 5px; -webkit-border-radius: 5px;
                                                                border-radius: 5px;">
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="Label1" Text='<%# Eval("name","{0}") %>' runat="server"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:ImageButton ID="ImageButton1" OnCommand="DeleteFields" CommandArgument='<%# Eval("AdvertisementId","{0}")+"|"+Eval("FieldId","{0}") %>'
                                                                                ImageUrl="~/content/images/del.png" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                    <asp:ObjectDataSource ID="ODS_AdFields" runat="server" OldValuesParameterFormatString="original_{0}"
                                                        SelectMethod="GetData" TypeName="DS_FieldTableAdapters.Select_Advertisement_Field_All_TableAdapter">
                                                        <SelectParameters>
                                                            <asp:QueryStringParameter Name="AdvertisementId" QueryStringField="id" Type="Int64" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                                            <ProgressTemplate>
                                                laoding...
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
        </table>
    </div>
    </form>
</body>
</html>
