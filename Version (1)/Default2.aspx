<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <form action='https://www.jahanpay.com/pay/submit' method="post">
        <input type='hidden' name='gateway' value='qmhzo' />
        نام و نام خانوادگي
        <input type="text" name='namefield' dir="rtl" />
        <br>
        پست الکترونيکي
        <input type="text" name='emailfield' dir="ltr" />
        <br>
        <input type="hidden" name='pricefield' dir="ltr" value='1000' />
        <input type="hidden" name='callback' value='http://www.google.com/pay' />
        <input type='submit' style='background: #00AAFF; border: 1px solid transparent; color: white;
            font-size: 11px; padding: 2px 4px 2px 4px; border-bottom: 2px solid  #009BE6;
            margin: 3px; font-family: tahoma,sans-serif,arial,times; border-radius: 4px'
            value='اتصال به درگاه پرداخت جهان پي' /></form>
    </div>
    </form>
</body>
</html>
