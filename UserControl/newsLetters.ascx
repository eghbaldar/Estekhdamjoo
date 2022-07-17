<%@ Control Language="VB" AutoEventWireup="false" CodeFile="newsLetters.ascx.vb"
    Inherits="UserControl_newsLetters" %> 
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
<div id="newsLetters">
    <div class="ContentTitlePost" style="width: 363px;">
        دریافت روزانه اخبار استخدامی محل سکونت شما در ایمیل</div>
    <div class="FeedContext">
        <div class="FeedText">
            پس از وارد کردن ایمیل خود در کادر زیر، بروی لینک فعالسازی ارسال شده برای ایمیلتان
            کلیک کرده و اشتراک خود را فعال نمایید.
        </div>
        <div style="float: right; margin: 7px 3px 0px 2px; width: 60px;">
            <img src='<%= ResolveUrl( "../content/images/mails-icon.png") %>' /></div>
        <div style="color: #96918C; margin-right: 27px; margin-top: 6px; font-family: B Yekan;
            font-size: 11px;">
            ابتدا استان خود را انتخاب و سپس ایمیل خود را وارد کنید</div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
                <div>
                    <asp:DropDownList ID="d" runat="server" AutoPostBack="True" CssClass="cssSelect">
                        <asp:ListItem>... انتخاب کنید ...</asp:ListItem>
                        <asp:ListItem>همه استان ها</asp:ListItem>
                        <asp:ListItem>آذربایجان شرقی</asp:ListItem>
                        <asp:ListItem>آذربایجان غربی</asp:ListItem>
                        <asp:ListItem>اردبیل</asp:ListItem>
                        <asp:ListItem>اصفهان</asp:ListItem>
                        <asp:ListItem>البرز</asp:ListItem>
                        <asp:ListItem>ایلام</asp:ListItem>
                        <asp:ListItem>بوشهر</asp:ListItem>
                        <asp:ListItem>تهران</asp:ListItem>
                        <asp:ListItem>چهارمحال و بختیاری</asp:ListItem>
                        <asp:ListItem>خراسان جنوبی</asp:ListItem>
                        <asp:ListItem>خراسان رضوی</asp:ListItem>
                        <asp:ListItem>خراسان شمالی</asp:ListItem>
                        <asp:ListItem>خوزستان</asp:ListItem>
                        <asp:ListItem>زنجان</asp:ListItem>
                        <asp:ListItem>سمنان</asp:ListItem>
                        <asp:ListItem>سیستان و بلوچستان</asp:ListItem>
                        <asp:ListItem>فارس</asp:ListItem>
                        <asp:ListItem>قزوین</asp:ListItem>
                        <asp:ListItem>قم</asp:ListItem>
                        <asp:ListItem>کردستان</asp:ListItem>
                        <asp:ListItem>کرمان</asp:ListItem>
                        <asp:ListItem>کرمانشاه</asp:ListItem>
                        <asp:ListItem>کهگیلویه و بویراحمد</asp:ListItem>
                        <asp:ListItem>گلستان</asp:ListItem>
                        <asp:ListItem>گیلان</asp:ListItem>
                        <asp:ListItem>لرستان</asp:ListItem>
                        <asp:ListItem>مازندران</asp:ListItem>
                        <asp:ListItem>مرکزی</asp:ListItem>
                        <asp:ListItem>هرمزگان</asp:ListItem>
                        <asp:ListItem>همدان</asp:ListItem>
                        <asp:ListItem>یزد</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="text-align: center;">
                    <iframe id="Iframe1" runat="server" style="border: 0;  font-family:'b yekan'; " scrolling="no" height="90px"
                        width="333px"></iframe>
                </div>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        در حال بارگزاری ...
                    </ProgressTemplate>
                </asp:UpdateProgress>
           
    </div>
</div>
<asp:Panel ID="Panel1" runat="server" >
     <div id="panel">
   <%--  <a href='<%= ResolveUrl("../نمونه-سوالات-استخدامی/") %>'>--%>
          <a href='<%= ResolveUrl("http://estekhdamjoo.ir/3687/%D8%AF%D8%B1-%DA%A9%D8%A7%D9%86%D8%A7%D9%84-%D8%AE%D8%A8%D8%B1%DB%8C-%C2%AB%D8%A7%D8%B3%D8%AA%D8%AE%D8%AF%D8%A7%D9%85-%D8%AC%D9%88%C2%BB-%D8%AF%D8%B1-%D8%AA%D9%84%DA%AF%D8%B1%D8%A7%D9%85-%D8%B9%D8%B6%D9%88-%D8%B4%D9%88%DB%8C%D8%AF-%D9%88-%D8%A2%DA%AF%D9%87%DB%8C-%D8%A7%D8%B3%D8%AA%D8%AE%D8%AF%D8%A7%D9%85%DB%8C-%D8%B1%D8%A7-%D8%AF%D8%B1%DB%8C%D8%A7%D9%81%D8%AA-%DA%A9%D9%86%DB%8C%D8%AF.html") %>'> 
             <img border="0" src='<%= ResolveUrl("../content/images/question.png") %>' height="80" width="371" />
             
               </a>
       
    </div>
</asp:Panel>

 </ContentTemplate>
        </asp:UpdatePanel>
