<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucComments.ascx.vb" Inherits="Management_UserControl_ucComments" %>
<%@ Import Namespace="System.Data" %>
<%--<%@ Register Src="CapchaControl.ascx" TagName="CapchaControl" TagPrefix="uc1" %>--%>
<style type="text/css">
    .TextBoxStyle
    {
        height: 30px;
        width: 250px;
        font-family: Tahoma;
        font-size: 12px;
        border: 1px solid #ccc;
        padding: 4px;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        background-color: #FFFFFF;
    }
    .TextareaStyle
    {
        height: 130px;
        width: 417px;
        font-family: Tahoma;
        font-size: 11px;
        border: 1px solid #ccc;
        padding: 4px;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        background-color: #FFFFFF;
    }
    .TextareaStyle1
    {
        height: 110px;
        width: 581px;
        font-family: Tahoma;
        font-size: 11px;
        border: 1px solid #ccc;
        padding: 4px;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        background-color: #FFFFFF;
    }
    
    .ButtonSendStyle
    {
        border: 2px solid #ADCADC;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        background-color: #B9D1DF;
    }
  
    
</style>
<script src="../content/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    function Res(e) {
        var str = e.split('_');
        if (document.getElementById('DivRes_' + str[1]).style.display == 'none') {
            document.getElementById('DivRes_' + str[1]).style.display = 'inline';

            return 0;
        }
        if (document.getElementById('DivRes_' + str[1]).style.display == 'inline') {
            document.getElementById('DivRes_' + str[1]).style.display = 'none';

            return 0;
        }

    }
</script>
<script type="text/javascript">

    function fade() {
        $('#divSuccess').fadeIn().delay(5000).fadeOut();
        $('#divComment').fadeOut().delay(5000).fadeIn();
    }

    function validate(e) {

        var str = e.split('_');


        ////// example for local :: [ctl00_ContentPlaceHolder1_ucComments1_Repeater1_ctl00_btnSendans]
        ////// example for HOST  :: [ContentPlaceHolder1_ucComments1_Repeater1_btnSendans_0]
        // Code hae zir dar Local kar mikonam , dar local Conde "Ctl" dari vali dar host k test shod nabod
        //if (document.getElementById(str[0] + '_ContentPlaceHolder1_ucComments1_Repeater1_ctl00_txt_n1').value == 'نام شما' ||
        //    document.getElementById(str[0] + '_ContentPlaceHolder1_ucComments1_Repeater1_ctl00_txt_d1').value == 'نظر شما') {
        //    document.getElementById(str[0] + '_ContentPlaceHolder1_ucComments1_Repeater1_ctl00_txt_n1').style.border = '1px solid red';
        //    document.getElementById(str[0] + '_ContentPlaceHolder1_ucComments1_Repeater1_ctl00_txt_d1').style.border = '1px solid red';


        if (document.getElementById('ContentPlaceHolder1_ucComments1_Repeater1_txt_n1_' + str[4]).value == 'نام شما') {
            document.getElementById('ContentPlaceHolder1_ucComments1_Repeater1_txt_n1_' + str[4]).style.border = '1px solid red';
            return false;
        }
        if (document.getElementById('ContentPlaceHolder1_ucComments1_Repeater1_txt_d1_' + str[4]).value == 'نظر شما') {
            document.getElementById('ContentPlaceHolder1_ucComments1_Repeater1_txt_d1_' + str[4]).style.border = '1px solid red';
            document.getElementById('ContentPlaceHolder1_ucComments1_Repeater1_txt_n1_' + str[4]).style.border = '1px solid #CCCCCC';
            return false;
        }

    }

</script>
<div id="Comments">
    <asp:HiddenField ID="PostIdSaver" runat="server" />
    <asp:HiddenField ID="hdShowComment" runat="server" />
    <!-- SUccess -->
    <!-- SUccess -->
    <div id="divComment">
        <!-- start parent repeater -->
        <div style="width: 763px; float: right;">
            <asp:Label ID="lbl_parent" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div id='<%# Eval("CommentId") %>' class="CommentContainer">
                        <div class="InfoBar" style="   width: 766px;">
                            <div style="float: right;">
                                <img src="../content/images/user_blue.png" />
                            </div>
                            <div class="AutherName">
                                <%#DataBinder.Eval(Container.DataItem, "FullName")%>
                            </div>
                            <div class="DateTime">
                                <%#DataBinder.Eval(Container.DataItem, "CreateOn")%>
                            </div>
                            <div class="Answer">
                                <a id='<%# "btnRes_"+Eval("CommentId","{0}") %>' style="color: #1C5D6B; font-family: Tahoma;
                                    font-size: 11px; cursor: pointer;" onclick="return Res(this.id);">پاسخ به نظر</a>
                            </div>
                        </div>
                        <div class="Content">
                            <div>
                                <%#DataBinder.Eval(Container.DataItem, "Note")%>
                            </div>
                            <div style="display: none;" id='<%# "DivRes_"+Eval("CommentId","{0}") %>'>
                                <div style="float: right; margin-right: 10px; margin-top: 12px;">
                                    <div style="float: right;">
                                        <div>
                                            <asp:TextBox ID="txt_n1" runat="server" CssClass="TextBoxStyle" Text="نام شما" ValidationGroup="5"
                                                onfocus="if (this.value==this.defaultValue) this.value = ''" onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                                        </div>
                                        <div style="padding-top: 6px; text-align: left;">
                                            <asp:TextBox ID="txt_e1" runat="server" CssClass="TextBoxStyle" Text="پست الکترونیک"
                                                ValidationGroup="5" onfocus="if (this.value==this.defaultValue) this.value = ''"
                                                onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div style="float: right; margin-right: 5px;">
                                        <div>
                                            <asp:TextBox ID="txt_d1" runat="server" CssClass="TextareaStyle" TextMode="MultiLine"
                                                Text="نظر شما" ValidationGroup="5" onfocus="if (this.value==this.defaultValue) this.value = ''"
                                                onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div style="float: left; margin-left: 20px; padding-top: 5px; padding-bottom: 5px;">
                                        <asp:Button ID="btnSendans" Font-Names="tahoma" Font-Size="11px" runat="server" OnClientClick="return validate(this.id);"
                                            OnCommand="insertResponse" CommandArgument='<%# Eval("CommentId","{0}") %>' Text="ارسال نظر"
                                            Height="25px" Width="70px" ValidationGroup="5" CssClass="register1" />
                                    </div>
                                </div>
                            </div>
                            <asp:Repeater ID="NestedRepeater" runat="Server">
                                <ItemTemplate>
                                    <div class="ReAnswer">
                                        <div class="InfoBar"  style="   width: 712px; background:#ECFAFE;">
                                            <div style="float: right; margin-top:3px;">
                                                <img src="../content/images/user_blue.png" />
                                            </div>
                                            <div class="AutherName">
                                                <%#DataBinder.Eval(Container.DataItem, "FullName")%>
                                            </div>
                                            <div class="DateTime">
                                                <%#DataBinder.Eval(Container.DataItem, "CreateOn")%>
                                            </div>
                                        </div>
                                        <div class="Content">
                                            <%#DataBinder.Eval(Container.DataItem, "Note")%>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <!-- end parent repeater -->
        <div id="CommentForm" class="FormContainer">
            <div style="overflow: auto;">
                <div style="float: right; overflow: auto;">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="TextBoxStyle" Text="نام شما"
                        ValidationGroup="Comment" onfocus="if (this.value==this.defaultValue) this.value = ''"
                        onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Comment"
                        ForeColor="Red" ErrorMessage="*" ControlToValidate="txtFullName" InitialValue="نام شما"></asp:RequiredFieldValidator>
                </div>
                <div style="float: right; overflow: auto; padding-right: 10px; text-align: left;">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="TextBoxStyle" Text="پست الکترونیک"
                        ValidationGroup="Comment" onfocus="if (this.value==this.defaultValue) this.value = ''"
                        onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                </div>
            </div>
            <div style="padding-top: 10px;">
                <div>
                    <asp:TextBox ID="txtNote" runat="server" CssClass="TextareaStyle1" TextMode="MultiLine"
                        Text="نظر شما" ValidationGroup="Comment" onfocus="if (this.value==this.defaultValue) this.value = ''"
                        onblur="if (this.value=='') this.value = this.defaultValue"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Comment"
                        ForeColor="Red" ErrorMessage="*" ControlToValidate="txtNote" InitialValue="نظر شما"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="overflow: auto; width: 95%; padding-top: 2px; padding-bottom: 10px; text-align: right;">
                <asp:Button  ID="btnSend" Font-Names="tahoma" Font-Size="11px" runat="server" Text="ارسال نظر"
                    CssClass="register1" Height="25px" Width="70px" ValidationGroup="Comment" />
            </div>
            <%--<div style="padding-bottom: 10px;">
                <span>
                    <asp:Label ID="lblCommentMsg" runat="server"></asp:Label>
                </span>
            </div>--%>
            <div id="divSuccess" style="background-color: #D9E5B4; float: right; color: White;
                width: 575px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
                display: none; padding: 8px; color: #72842E; font-family: Tahoma; font-size: 12px;">
                کاربر محترم ، نظر شما با موفقیت به ثبت رسید ، پس از تایید در لیست نظرات قرار داده
                می شود.
            </div>
        </div>
    </div>
</div>
