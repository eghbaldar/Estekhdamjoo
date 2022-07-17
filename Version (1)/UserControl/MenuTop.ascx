<%@ Control Language="VB" AutoEventWireup="false" CodeFile="MenuTop.ascx.vb" Inherits="UserControl_MenuTop" %>
<div style="background: #4176AC; border-top: 2px solid #000;">
    <div id="container" style="width: 1160px; margin: 0px auto 0px auto;">
        <div class="nav black-menu" style="margin: 0px auto 0px auto;">
            <ul>
                <li><a href='<%= ResolveUrl("../") %>'>صفحه نخست</a> </li>
                <li><a href='<%= ResolveUrl("../آرشیو-استخدامی-ویژه/") %>'>استخدام های ویژه</a>
                </li>
                <li><a href='<%= ResolveUrl("../آرشیو-اخبار-استخدامی/") %>'>اخبار استخدامی</a> </li>
                <li><a href='<%= ResolveUrl("../درج-آگهی-استخدامی-رایگان/") %>'>درج آگهی استخدام ( رایگان
                    )</a></li>
                <li><a href='<%= ResolveUrl("../نحوه-ی-نگارش-رزومه/") %>'>نحوه نگارش رزومه</a></li>
                <li><a href='<%= ResolveUrl("../نمونه-سوالات-استخدامی/") %>'>نمونه سوالات استخدامی</a>
                </li>
            </ul>
            <div class="clear">
            </div>
        </div>
    </div>
</div>
