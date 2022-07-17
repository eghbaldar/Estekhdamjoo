<%@ Page Title="" Language="VB" MasterPageFile="~/Master4.master" AutoEventWireup="false"
    CodeFile="Question.aspx.vb" Inherits="Question_Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #divText
        {
            line-height: 1.8em;
        }
        #divText table
        {
            border: 1px solid #9E9E9E;
        }
        
        #divText table td:first-child
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
        
        #divText table td:last-child
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
        #divText table td
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
        .Box
        {
            padding: 4px;
            border: 1px solid #E96B02;
            background-color: #fff;
            margin: 2px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        .box
        {
            padding: 1px; /*border: 1px solid #7BA6D0;
            background-color: #fff;*/
            margin: 2px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            width: 660px;
        }
        
        .hyper
        {
            color: Blue;
        }
        .hyper:hover
        {
            color: red;
        }
        .boxInformation
        {
            padding: 10px;
            width: 580px;
            margin: 3px;
            font-size: 13px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            height: 100%;
            border-radius: 5px;
            line-height: 1.9em;
            font-family: 'b yekan';
        }
        
        
        .acnhorList
        {
            color: Blue;
        }
        .acnhorList:hover
        {
            color: red;
        }
        .OrgBox
        {
             width: 799px;
            padding-bottom: 10px;
            padding-top: 10px;
            border-top:1px solid #CECECE ;
                  border-bottom:1px solid #CECECE ;
       background:#EEEEEE;
        }
        .Imagee
        {
            padding: 4px;
            border: 1px solid #ccc;
            margin: 2px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        .Imagee:hover
        {
            border: 1px solid #D56515;
            cursor: pointer;
        }
        
        .titleHover:hover
        {
            color: Red;
            cursor: pointer;
        }
        .Contact
        {
            padding: 7px;
            color: Black;
            width: 699px;
            font-size: 13px;
            height: 100%;
            font-family: 'b yekan';
            background: #E2E2E2; /* Old browsers */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS">
            <ItemTemplate>
              <div class="ContentTitlePost" style="margin-right:2px; width:790px; border:1px solid #DADADA" >
                    <table>
                        <tr>
                            <td style="width: 540px;">
                                <h2>
                                    <asp:Label Style="font-size: 17px   ; font-weight:normal; font-family:'b yekan';"
                                        ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                </h2>
                            </td>
                            <td>
                             
                            </td>
                        </tr>
                    </table>
                </div>
                 <div style="border: 1px solid #ccc; -moz-border-radius: 4px; -webkit-border-radius: 4px;
        border-radius: 4px; background-color: White;">
                <div class="postContent">
                   
                    <asp:Label ID="lblCode" runat="server" Text='<%# Eval("ID", "{0}") %>' Visible="False"></asp:Label>
                    <div class="OrgBox">
                        <table>
                            <tr>
                                <td>
                                    <div class="boxInformation">
                                        <span>دسته: </span>
                                        <asp:Label ID="Label3" Style="font: normal 13px b yekan;" runat="server" Text='<%# Eval("Title1") %>' />
                                        <br />
                                        <span>حجم فایل: </span>
                                        <asp:Label ID="Label4" Style="font: normal 12px Tahoma;" runat="server" Text='<%# Eval("Size") %>' />
                                        <br />
                                        <span>نوع فایل: </span>
                                        <asp:Label ID="Label1" Style="font: normal 12px Tahoma;" runat="server" Text='<%# Eval("File_Type") %>' />
                                        <br />
                                        <span>قیمت: </span>
                                        <asp:Label ID="Label2" Style="font: normal 13px b yekan;" runat="server" Text='<%# Eval("Price") %>' />
                                        <span>تومان </span>
                                    </div>
                                </td>
                                <td>
                                    <div class="boxPhoto">
                                        <div style=" background-color:White; -moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;border:1px solid #ccc; padding:4px; box-shadow:0px 0px 3px 1px #E2E2E2;">
                                            <asp:Image ID="Image1" runat="server" Style="width: 150px; height: 150px;" ImageUrl='<%# ResolveUrl(Eval("PicFile","~/management/images/{0}")) %>'
                                                AlternateText='<%# Eval("Title") %>' /></div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="padding: 10px; font-size: 11px;" id="divText" class="divText">
                        <br />
                        <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                        <br />
                    </div>
                    <div style="margin: 5px 80px 30px 80px; padding: 20px; border: 1px solid #CCCCCC;
                        font-size: 11px; text-align: center;" id="div1">
                        <asp:Label ID="Label5" Style="font: bolder 13px tahoma; color: #383838;" runat="server"
                            Text='<%# Eval("Title") %>' />
                        <br />
                        <br />
                        <span>قیمت: </span>
                        <asp:Label ID="Label6" Style="font: normal 13px b yekan;" runat="server" Text='<%# Eval("Price") %>' />
                        <span>تومان </span>
                         <br />
                        <asp:LinkButton ID="lnkbuy1" Width="50" Height="60"  runat="server" OnCommand="buymoney" CommandArgument='<%# Eval("ID","{0}") %>'>  
                         <div style="border: 2px solid #4176AC; width: 50px; height: 60px; margin: 2px -3px 1px 2px;
                            padding: 3px;">
                            <div style="font-size: 13px; font-family: b yekan; color: #E96B02; padding: 2px;">
                                دانلود</div>

                            <img src='<%=ResolveUrl("content/images/download.png") %>' />
                        </div>
                        </asp:LinkButton>
                         <br /> <br /> 
                        <asp:LinkButton ID="lnkbuy" runat="server" OnCommand="buymoney" CommandArgument='<%# Eval("ID","{0}") %>'><span style=" margin: 2px 5px 1px 2px; color: #E96B02;">[ پرداخت آنلاین ] </span></asp:LinkButton>
                        <br />
                        <span style="color: #808080;">[ بلافاصله بعد از پرداخت لینک دانلود فعال می شود ]
                        </span>
                        <div style="margin: 5px 40px 30px 40px; padding: 20px; border: 1px solid #CCCCCC;
                            font-size: 11px; text-align: center;" id="div2">
                            <span style="color: #0055FF; font-weight: bold;">پرداخت شما از طریق تمامی کارت های بانکی
                                عضو شتاب قابل انجام است </span>
                            <br />
                            <br />
                            <span style="color: #0055FF; font-weight: bold;">پشتیبانی فروش : </span>
                            <br />
                            <div style="float: left; margin-left: 150px;">
                                <div style="float: left;">
                                    <img src='<%=ResolveUrl("content/images/email.png") %>' /></div>
                                <div style="float: left; padding: 5px;">
                                    <span style="color: #808080; font-weight: bold;">estekhdamjoo.ir@gmail.com </span>
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetData" TypeName="DS_QuestionTableAdapters.Main_Select_QuestionTableAdapter">
            <SelectParameters>
                <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
