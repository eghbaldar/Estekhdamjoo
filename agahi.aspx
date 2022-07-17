<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false"
    CodeFile="agahi.aspx.vb" Inherits="agahi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href='<%=ResolveUrl("content/css/Agahi.css") %>' rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 204px;
        }
    </style>
    <script type="text/javascript">
        function openFile() {
            document.getElementById('<%= FileUploadInsert.ClientID %>').click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
       <div class="ContentTitlePost" style="margin-right:2px; width:790px; border:1px solid #DADADA" >
                 درج آگهی استخدام</div>
                   <div class="AgahiContext">
        <div class="AgahiContent">
            <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                <asp:View ID="Vinsert" runat="server">
                    <div>
                        <asp:Label ID="lblWrong" runat="server" Style="color: Red; font-weight: bold;"></asp:Label>
                    </div>
                    <div style="background-color: #F5F5F5; margin: 5px; text-align: center; border: 1px solid #ccc;
                        padding: 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;">
                        <h4>
                            کارفرمایان گرامی ، توجه داشته باشید که پس از تکمیل فرم ، آگهی شما مورد تایید کارشناسان
                            ما قرار گرفته و علاوه بر امکان نمایش آن در بین آگهی های روزانه سایت و همچنین به
                            شکل بنر، برای کابران هدف آگهی ، به تفکیک استان و رشته به شکل پیامک ارسال خواهد شد.
                        </h4>
                    </div>
                    <div>
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    عنوان آگهی (الزامی):
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTitle"
                                        ErrorMessage="*******" ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="CSSTEXTBOX" Width="300px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    متن آگهی (الزامی):
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtText"
                                        ErrorMessage="*******" ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtText" runat="server" CssClass="CSSTEXTBOX" Width="500px" Height="150px"
                                        TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    پیوست فایل:
                                    <br />
                                    <span style="color: Blue;">(فرمت فایل انتخاب شده : PDF , DOC , DOCX , JPG , PNG , GIF)
                                    </span>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUploadInsert" runat="server" Style="display: none;" />
                                    <a onclick="return openFile();" class="FileU">برای بارگزاری فایل پیوست کلیک کنید...</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    تاریخ انقضاء آگهی (الزامی):
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExpireDate"
                                        ErrorMessage="*******" ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtExpireDate" runat="server" CssClass="CSSTEXTBOX_en" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    شماره تماس (الزامی):
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTel"
                                        ErrorMessage="*******" ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTel" runat="server" CssClass="CSSTEXTBOX_en" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    آدرس (الزامی):
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"
                                        ErrorMessage="*******" ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="CSSTEXTBOX" Width="500px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    وب سایت :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="CSSTEXTBOX_en" Width="300px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    پست الکترونیکی :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="CSSTEXTBOX_en" Width="300px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    توضیحات :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="CSSTEXTBOX" Width="500px"
                                        Height="150px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="padding: 5px;">
                                        <asp:LinkButton ID="btnInsert" CssClass="register" runat="server" ValidationGroup="1">
                            
                            درج آگهی ...
                            
                                        </asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="Vsuccess" runat="server">
                    <div class="Success">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                <img src='<%= ResolveUrl("content/images/big-tick.png")%>' alt="tick" />
                                   
                                </td>
                                <td>
                                    کاربر محترم ، آگهی شما با موفقیت به ثبت رسید و در کوتاه ترین زمان فعال خواهد شد.
                                    <br />
                                    با تشکر مدیریت استخدام جو
                                    <br />
                                    برای اطلاعات بیشتر از بخش تماس با ما، با ما در ارتباط باشید.
                                </td>
                            </tr>
                          
                        </table>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
