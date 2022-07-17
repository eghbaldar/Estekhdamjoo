<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Footer.ascx.vb" Inherits="UserControl_Footer" %>
<div id="footerContent">
   
    <div style="float: right;  ">
        <div style="margin-top: 35px; height: 42px; ">
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href="http://estekhdamjoo.ir">صفحه اصلی</a>
            <div style="width: 1px; height: 18px; background-color: White; float: right; margin: 5px;">
            </div>
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href='<%= ResolveUrl("../آرشیو-اخبار-استخدامی/") %>'>اخبار استخدامی</a>
            <div style="width: 1px; height: 18px; background-color: White; float: right; margin: 5px;">
            </div>
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href='<%= ResolveUrl("../آرشیو-استخدامی-ویژه/") %>'>استخدام های ویژه</a>
            <div style="width: 1px; height: 18px; background-color: White; float: right; margin: 5px;">
            </div>
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href='<%= ResolveUrl("../نمونه-سوالات-استخدامی/") %>'>نمونه سوالات استخدامی</a>
            <div style="width: 1px; height: 18px; background-color: White; float: right; margin: 5px;">
            </div>
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href='<%= ResolveUrl("../تماس-با-ما/") %>'>تماس با ما</a>
            <div style="width: 1px; height: 18px; background-color: White; float: right; margin: 5px;">
            </div>
            <a style="font-family: 'b yekan'; font-size: 13px; padding: 5px; float: right; color: White;"
                href='<%= ResolveUrl("../درباره-ما/") %>'>درباره ما</a></div>
        <div style="color: #A5A58C;  height: 50px; font-family: 'b yekan';
            font-size: 13px;">
            تمامی حقوق این وبسایت متعلق به استخدام جو می باشد و استفاده از مطالب همراه با ذکر
            منبع بلا مانع است.
        </div>
    </div>
    <div style="float: left;">
        <div style=" height:5px; padding-top:20px;">
            <div style="width: 25px; float: right; padding: 3px;">
                <img src='<%= ResolveUrl("../content/images/mail.png") %>' /></div>
            <div style="float: right; color: White; padding: 5px;">
                پست الکترونیک : info@estekhdamjoo.ir</div>
        </div>
        <div style="width: 245px; padding:35px;">
            <div style="width: 40px; float: right; padding: 4px; ">
                <img src='<%= ResolveUrl("../content/images/facebook.png") %>' /></div>
            <div style="width: 40px; float: right; padding: 4px;">
                <img src='<%= ResolveUrl("../content/images/Google-plus.png") %>' /></div>
            <div style="width: 40px; float: right; padding: 4px;">
                <a href='<%= ResolveUrl("../feed/") %>'>
                    <img src='<%= ResolveUrl("../content/images/rss.png") %>' /></a>
            </div>
            <div style="width: 40px; float: right; padding: 4px;">
            <a href=https://instagram.com/estekhdamjoo_ir/ target="_blank" >
                <img src='<%= ResolveUrl("../content/images/Instagram.png") %>' /></a></div>
        </div>
        <div style="width: 245px;padding:25px; ">
         <div style="margin-right: 45px;color: White; font-size: 12px;">Copyright © 2013 - 2015</div></div> 
    </div>
</div>
