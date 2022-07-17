<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Default.aspx.vb"
    Inherits="Outscope_Error_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        var cookieEnabled = (navigator.cookieEnabled) ? true : false;

        if (typeof navigator.cookieEnabled == "undefined" && !cookieEnabled) {
            document.cookie = "testcookie";
            cookieEnabled = (document.cookie.indexOf("testcookie") != -1) ? true : false;
        }
        if (!cookieEnabled)
            window.location.href = "cookie.aspx";

    </script>
    <style type="text/css">
        @font-face
        {
            font-family: 'koodakSMS';
            src: url(  '../../content/font/W_koodak.eot' );
            src: url(  '../../content/font/W_koodak.eot?#iefix' ) format(  'embedded-opentype' ), url(  '../../content/font/W_koodak.woff' ) format(  'woff' ), url(  '../../content/font/W_koodak.TTF' ) format(  'truetype' );
        }
        @font-face
        {
            font-family: 'homaSMS';
            src: url(  '../../content/font/W_homa.eot' );
            src: url(  '../../content/font/W_homa.eot?#iefix' ) format(  'embedded-opentype' ), url(  '../../content/font/W_homa.woff' ) format(  'woff' ), url(  '../../content/font/W_homa.TTF' ) format(  'truetype' );
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="font-family: koodakSMS; font-size: 20px; padding: 70px; text-align: center;">
        <table style="width: 100%;">
         
            <tr>
                <td>
                    برقراری شما با سرویس دهنده امکان پذیر نمی باشد.
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
