<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmNewsLetter.aspx.vb" Inherits="UserControl_frmNewsLetter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title ></title>
</head>
<body>
    <form id="form1" runat="server" action="http://feedburner.google.com/fb/a/mailverify"
    method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=estekhdami_shaahr', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true">
    <div class="FeedContext">
        <div class="FeedTitle">
            عضویت در خبرنامه استخدامی</div>
        <div class="FeedText">
            پس از وارد کردن ایمیل خود در کادر زیر ، برای فعالسازی آن می بایست ، بروی لینک فعالسازی
            ارسال شده برای تان کلیک کنید ، در غیر این صورت اشتراک شما غیر فعال خواهد ماند.
        </div>
        <div>
            <input type="text" class="FeedTXT" name="email" />
        </div>
        <div style="text-align: center; padding-top: 5px;">
            <input type="hidden" value="estekhdami_shaahr" name="uri" />
            <input type="hidden" name="loc" value="en_US" />
            <input type="submit" class="FeedBtn" value="عضویت" />
        </div>
    </div>
    </form>
</body>
</html>
