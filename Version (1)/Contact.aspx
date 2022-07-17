<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master"
    AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="estekhdami_contact_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div  id="Title-Post" style="width: 1153px;">
        تماس با ما</div>
   <div id="one_col" style="height:570px;" >

        <div style="float: right; padding-top: 10px;">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <div class="BigDiv">
                        <table style="width: 100%;">
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td  class="title-c">
                                    نام و نام خانوادگی:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 270px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtFnLn" runat="server" Style="border: 0; background-color: #f9f9f9;
                                            font-family: Tahoma;" Width="265px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFnLn"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td  class="title-c">
                                    پست الکترونیکی:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 270px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtEmail" runat="server" Style="border-style: none; direction: ltr;
                                            border-color: inherit; border-width: 0; background-color: #f9f9f9; text-align: left;"
                                            Width="265px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="font"
                                        runat="server" ControlToValidate="txtEmail" ErrorMessage="فرمت پست الکترونیکی را اصلاح کنید."
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td  class="title-c">
                                    شماره تلفن:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 170px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtTell" runat="server" Style="border-style: none; border-color: inherit;
                                            border-width: 0; background-color: #f9f9f9; text-align: left;" Width="165px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTell"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td  class="title-c">
                                    گروه:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 160px; padding: 5px;
                                        background-color: #F9F9F9;">
                                        <asp:DropDownList ID="cmbGroup" runat="server" Style="font-family: 'b yekan'; font-size: 13px;
                                            border: 0; background-color: #F9F9F9; padding: 2px;">
                                            <asp:ListItem>واحد پشتیبانی</asp:ListItem>
                                            <asp:ListItem>واحد برنامه نویسی و امنیت</asp:ListItem>
                                            <asp:ListItem>واحد مالی و اعتبار</asp:ListItem>
                                            <asp:ListItem>واحد نظرات و پیشنهادات</asp:ListItem>
                                            <asp:ListItem>تیم مدیریت</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </td>
                            </tr>
                            <tr >
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td  class="title-c">
                                    <br />
                                    پیام:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #CCCCCC; width: 539px; padding: 5px;
                                        background-color: #F9F9F9;">
                                        <asp:TextBox ID="txtCuase" runat="server" Height="123px" Style="border: 0; background-color: #F9F9F9;
                                            resize: none;" TextMode="MultiLine" Width="536px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCuase"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td>
                                    <asp:Label ID="lblWrong" runat="server" style="color: #FF0000"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Button ID="btnSend" CssClass="register" runat="server" Text="ارسال" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="BigDiv">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <img src='<%= ResolveUrl("content/images/Accept.png") %>' style="width: 50px; height: 50px;" />
                                </td>
                            </tr>
                            <tr>
                                <td style="  font-family:'b yekan'; font-size: 13px;">
                                    کاربر محترم;
                                </td>
                            </tr>
                            <tr>
                                <td style="  font-family:'b yekan'; font-size: 13px;">
                                    پیام شما با موفقیت ارسال گردید، لطفا منتظر پاسخ بمانید.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                          
                        </table>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <div style="float: right; width: 450px; background-color: #DBEAF9; margin-top: 10px;
            -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;">
            <div style="font-family: 'b yekan'; font-size: 21px; padding-right: 8px; padding-top: 15px;">
                چگونگی تماس با ما
            </div>
            <div style="font-size: 13px; padding: 15px; color: Black; font-family:'b yekan'; ">
                شما از طریق این فرم می توانید پیشنهادات ، مشکلات و نظرات خود را به مسئولان استخدام جو انتقال دهید
                <br /><br />
                کاربر محترم ، با توجه به حجم بالای پیامها ، پاسخ دادن به آنها در زمان کوتاه امکان
                پذیر نمی باشد. اما سعی می گردد تمامی مطالب مطالعه شده و در صورت نیاز واحد مربوطه
                با شما مکاتبه نموده و پاسخ لازم را ارائه دهد.
                <br /><br />
                لطفا برای تسریع در پاسخ به پیام ها، واحد مربوطه را به درستی انتخاب نمایید.
                <br />
                با تشکر
               
            </div>
        </div>
    </div>
</asp:Content>
