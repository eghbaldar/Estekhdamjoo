<%@ Page Title="" Language="VB" MasterPageFile="~/Master2.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Bought_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <div  id="Title-Post" style="width: 1153px;">
       نتیجه تراکنش</div>
   
     <div id="one_col" style="height:100%;" >  
    <table>
        <tr>
            <td style="font-family: 'b yekan'; font-size: 13px; padding: 5px; line-height: 160%;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="view1" runat="server">
                          <br />
                        <center>
                            <div style="color: #008000;">
                                تراکنش شما با موفقیت انجام شد.</div>
                        </center>
                        <br />
                        بابت خريد محصول
                        <asp:Label ID="lbl_title" runat="server" Text="  "></asp:Label>
                        تشکر مي کنيم لينک دانلود در انتهاي اين پيغام قرار گرفته است. براي پيگيري هاي بعدي
                        شماره تراکنش
                        <asp:Label ID="lbl_code" runat="server" Text="  "></asp:Label>
                        را يادداشت نماييد.
                        <br />
                        به این نکته توجه داشته باشید که کلیه لینکها سالم، تست شده و بدون اشکال هستند. لذا
                        در صورتی که پس از دانلود، فایل از حالت زیپ خارج نشد و پیغام خطا داده شد علت آن ناقص
                        دانلود شدن فایل می باشد. جهت حل مشکل فایل را مجددا و با حجم کامل دانلود نمایید.
                        <br />
                        پشتیبانی فروش : info@estekhdamjoo.ir
                                   <br /> 
                        <center>
                            <span>لینک دانلود سوالات استخدامی :</span>
                        </center>
                        <center>
                            <asp:Label ID="lbl_dl" runat="server"></asp:Label>
                        </center>
                        <br />      <br />   
                    </asp:View>
                    <asp:View ID="view2" runat="server">
                     <br />
                        <center>
                            <div style="color: #FF0000;">
                                تراکنش شما ناموفق بود.</div>
                        </center>
                        <br />
                        عدم موفقیت در تراکنش ممکن است به یکی از دلایل زیر باشد:
                        <br />
                        1- ممکن است ارتباط شما با دروازه پرداخت بانک برقرار نشده باشد
                        <br />
                        2- ممکن است از انجام عملیات پرداخت منصرف شده باشید
                        <br />
                        3- ممکن است سرعت اینترنت شما درحال حاضر کم بوده و قادر به باز کردن درگاه پرداخت
                        بانک نباشید.
                        <br />
                        لطفا به صفحه اصلی استخدام جو بازگشته و مجددا خرید خود را انجام دهید.
                        <br />
                        پشتیبانی فروش : estekhdamjoo.ir@gmail.com

                         <br /> <br />
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table></div>
</asp:Content>

