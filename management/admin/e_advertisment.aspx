<%@ Page Title="" Language="VB" ValidateRequest="false" MasterPageFile="~/management/admin/CMS.master"  EnableEventValidation="false"
    AutoEventWireup="false" CodeFile="e_advertisment.aspx.vb" Inherits="management_admin_e_advertisment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            width: 93px;
        }
        .dpl
        {
            margin-top:3px;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="style1">
        <tr>
            <td>
                <asp:MultiView ID="MultiView" runat="server">
                    <asp:View ID="insert_1" runat="server">
                      <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <br />
                                            درج آگهی استخدامی جدید<br />
                                            &nbsp;<table class="style1">
                                                <tr>
                                                    <td class="style34">
                                                        عنوان آگهی :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertTitle" runat="server" CssClass="CSSTEXTBOX" Width="450px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInsertTitle"
                                                            ForeColor="Red" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
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
                                                        ایمیل :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertEmail" runat="server" CssClass="CSSTEXTBOX_en" Width="390px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        وبسایت :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertWebsite" runat="server" CssClass="CSSTEXTBOX_en" Width="390px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        تلفن :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertTell" runat="server" CssClass="CSSTEXTBOX" Width="390px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        آدرس :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertAddress" runat="server" CssClass="CSSTEXTBOX" Width="623px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        تاریخ انقضا :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertDateExpire" runat="server" CssClass="CSSTEXTBOX_en"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        خلاصه متن:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInsertLid" runat="server" CssClass="CSSTEXTBOX" Width="741px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInsertLid"
                                                            ForeColor="Red" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
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
                                                    <td class="style31">
                                                        جنسیت :
                                                    </td>
                                                    <td class="style32">
                                                        <div style="padding: 3px; padding-bottom: 6px; border: 1px solid #ccc; width: 154px;
                                                            background-color: White;">
                                                            <asp:RadioButtonList ID="rblInsertSex" runat="server" Height="29px" RepeatDirection="Horizontal"
                                                                Width="150px">
                                                                <asp:ListItem Selected="True" Value="2">مرد و زن</asp:ListItem>
                                                                <asp:ListItem Value="1">مرد</asp:ListItem>
                                                                <asp:ListItem Value="0">زن</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        نوع آگهی :
                                                        <br />
                                                    </td>
                                                    <td>
                                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                            <ContentTemplate>
                                                             <div style="padding: 5px; padding-bottom: 6px; border: 1px solid #ccc; width: 270px;
                                                            background-color: White;">
                                                                <table class="style1">
                                                                    <tr>

                                                                        <td class="style33">
                                                                            <asp:RadioButtonList ID="rblInsertType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                                                                                ValidationGroup="6" Width="160px">
                                                                                <asp:ListItem Selected="True" Value="0">معمولی</asp:ListItem>
                                                                                <asp:ListItem Value="1">ویژه </asp:ListItem>
                                                                                <asp:ListItem Value="2">بانک</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="drpInsertBankID" runat="server" DataSourceID="ODS_Bank" Font-Names="Tahoma"  CssClass="dpl"
                                                                                Font-Size="11px" DataTextField="Title" DataValueField="ID" Visible="False">
                                                                            </asp:DropDownList>
                                                                            </td>
                                                                            <td>
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
                                                                </table></div>
                                                                <asp:UpdateProgress ID="UpdateProgress5" runat="server" AssociatedUpdatePanelID="UpdatePanel5">
                                                                    <ProgressTemplate>
                                                                        loading....
                                                                    </ProgressTemplate>
                                                                </asp:UpdateProgress>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style34">
                                                        عکس:
                                                    </td>
                                                    <td>
                                                        <div style="padding: 3px; border: 1px solid #ccc; background-color: White;">
                                                            <div>
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <a href="#" onclick="javascript:window.open('selectAvatars.aspx?src=txtFileNamePhotoDuplicate', 
'mywindow','location=1,status=1,scrollbars=1, width=800,height=700');" style="font: normal 11px tahoma; color: Red; text-decoration: none;">انتخاب عکس های تکراری
                                                                                (اینحا کلیک کنید )</a>
                                                                        </td>
                                                                        <td>
                                                                            عکس انتخاب شده شما:
                                                                            <input type="text" readonly="readonly" style="width: 300px; color: black;" name="txtDuplicatePhoto"
                                                                                id="txtFileNamePhotoDuplicate" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
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
                              <%--  <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                                    <ProgressTemplate>
                                        loading....
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </ContentTemplate>
                        </asp:UpdatePanel>--%>
                        <br />
                        <div>
                            <asp:Button ID="btnInsert" runat="server" Style="text-align: center; background-color: #fff;
                                margin-right: 100px; cursor: pointer; padding: 5px; background-color: #49BDC4;"
                                CssClass="CSSTEXTBOX" Text="ثبت آگهی " ValidationGroup="1" Width="158px" ForeColor="White" />
                        </div>
                    </asp:View>
                    <asp:View ID="insert_2" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <strong>درج رشته های احتمالی </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <table class="style1">
                                                <tr>
                                                    <td class="style28">
                                                        آگهی اعمال شونده:
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="drpAd1" runat="server" CssClass="CSSTEXTBOX" DataSourceID="ODS_LastAd"
                                                            DataTextField="Title" DataValueField="ID">
                                                        </asp:DropDownList>
                                                        
                                                    </td>
                                                </tr>
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
                                                                    background-color: White; border-radius: 5px;">
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
                                                                <asp:ControlParameter ControlID="drpAd1" Name="AdvertisementId" PropertyName="SelectedValue"
                                                                    Type="Int64" />
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
                                    <hr />
                                </td>
                            </tr>
                                <tr>
                                                    <td class="style28">
                                                        <strong>درج استان های احتمالی</strong>
                                                    </td>
                                                   
                                                </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <table class="style1">
                                            
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:RadioButtonList ID="rbSelectTyoeState" runat="server" CssClass="CSSTEXTBOX" AutoPostBack="true"
                                                            RepeatDirection="Horizontal">
                                                            <asp:ListItem>سراسری (همه ی استان ها و شهرها)</asp:ListItem>
                                                            <asp:ListItem Selected="True">استان</asp:ListItem>
                                                            <asp:ListItem>شهر</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        آگهی اعمال شونده:
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="drpAd2" runat="server" CssClass="CSSTEXTBOX" DataSourceID="ODS_LastAd"
                                                            DataTextField="Title" DataValueField="ID">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        انتخاب استان:
                                                    </td>
                                                    <td>
                                                     
                                                        <asp:DropDownList ID="drpState" runat="server" AutoPostBack="True" CssClass="CSSTEXTBOX"
                                                            DataSourceID="ODS_State" DataTextField="Name" DataValueField="ID" Enabled="true">
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
                                                        <asp:Button ID="btnState" runat="server" CssClass="CSSTEXTBOX" Text="درج........." />
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
                                                                    background-color: White; border-radius: 5px;">
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("name","{0}") %>'></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton4" runat="server" CommandArgument='<%# Eval("AdvertisementId","{0}")+"|"+Eval("StateId","{0}") %>'
                                                                                    ImageUrl="~/content/images/del.png" OnCommand="DeleteState" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                        <asp:ObjectDataSource ID="ODS_AdState" runat="server" OldValuesParameterFormatString="original_{0}"
                                                            SelectMethod="GetData" TypeName="DS_StateTableAdapters.Select_Advertisement_state_All_TableAdapter">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="drpAd2" Name="AdvertisementId" PropertyName="SelectedValue"
                                                                    Type="Int64" />
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
                                    <hr />
                                </td>
                            </tr>


                               <tr>
                                <td class="style28">
                                    <strong>درج مدرک های احتمالی</strong>
                                </td>
                              
                            </tr>
                              <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <table class="style1">
                         
                            <tr>
                                <td class="style28">
                                    آگهی اعمال شونده:
                                </td>
                                <td>
                                    <asp:DropDownList ID="drpAd3" runat="server" CssClass="CSSTEXTBOX" DataSourceID="ODS_LastAd"
                                        DataTextField="Title" DataValueField="ID">
                                    </asp:DropDownList>
                                </td>
                            </tr>
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
                                                background-color: White; border-radius: 5px;">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label21" runat="server" Text='<%# getTitleDegree(Eval("DegreeId","{0}")) %>'></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:ImageButton ID="ImageButton32" runat="server" CommandArgument='<%# Eval("AdvertisementId","{0}")+"|"+Eval("DegreeId","{0}") %>'
                                                                ImageUrl="~/content/images/del.png" OnCommand="DeleteDegree" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:ObjectDataSource ID="ODS_AdDegree" runat="server" OldValuesParameterFormatString="original_{0}"
                                        SelectMethod="GetData" TypeName="DegreeTableAdapters.Select_Advertisement_Degree_All_TableAdapter">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="drpAd3" Name="AdvertisementId" PropertyName="SelectedValue"
                                                Type="Int64" />
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




        <tr>
            <td>
                <asp:Button ID="btnFinish" runat="server" CssClass="CSSTEXTBOX" Style="color: #FFFFFF;
                    cursor: pointer; margin-right: 170px; background-color: #49BDC4" Text="اتمام فرآیند" />
            </td>
        </tr>
       <asp:ObjectDataSource ID="ODS_LastAd" runat="server" OldValuesParameterFormatString="original_{0}"
                                                            SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.CMS_Select_Advertisement_Last_TitleTableAdapter">
                                                        </asp:ObjectDataSource>
    </table>
   </asp:View>
    <asp:View ID="View1" runat="server">
        <div style="background-color: #4FBFC6; color: white; padding: 25px; font-size: 12px;
            font-weight: bold;">
            <div>
                آگهی استخدامی جدید شما با موفقیت به ثبت رسید
            </div>
        </div>
    </asp:View>
    </asp:MultiView> </td> </tr> </table>
</asp:Content>
