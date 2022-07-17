<%@ Page Title="" Language="VB" MasterPageFile="~/Master3.master" AutoEventWireup="false"
    CodeFile="post.aspx.vb" Inherits="post" %>
    <%@ Register Src="UserControl/ucComments.ascx" TagName="ucComments" TagPrefix="uc1" %>
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
            font-family:'b yekan';
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
            width: 797px;
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
            width: 783px;
            font-size: 13px;
            height: 100%;
            font-family:'b yekan';
            background: #EEEEEE; /* Old browsers */
            
        }
    </style>
    <script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.1.min.js"> </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
        
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS">
                <ItemTemplate>
                   <div class="ContentTitlePost" style="margin-right:2px; width:790px; border:1px solid #DADADA" >
    
                        <table>
                            <tr>
                                <td style="width: 600px;">
                                    <h2>
                                        <asp:Label Style="font-size: 17px   ; font-weight:normal; font-family:'b yekan';" ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    </h2>
                                </td>
                                <td>
                                  
                                </td>
                            </tr>
                        </table>
                    </div>
<div style="border: 1px solid #ccc; -moz-border-radius: 4px; -webkit-border-radius: 4px;
            border-radius: 4px; background-color:White; margin-right:2px; ">


                    <div class="postContent">
                        <div  style="padding:7px;" >
                            <table>
                                <tr>
                                    <td>
                                        <img src='<%=ResolveUrl("content/images/IconVisit.gif") %>' alt="IconVisit" />
                                    </td>
                                    <td>
                                        <div style="width: 600px; text-align: right; margin-right:3px;">
                                            <asp:Label ID="Label11" Style="font-size: 13px; font-family:'b yekan';" runat="server" Text='<%# "تعداد بازدید: "+Eval("visit","{0}") %>' />
                                        </div>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" Style="font-size: 13px; font-family:'b yekan';" runat="server" Text='<%# getShamsi(Eval("create_date")) %>' /> 
                                    </td>
                                </tr>
                            </table>
                        </div>
                    
                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("ID", "{0}") %>' Visible="False"></asp:Label>
                        <div class="OrgBox">
                            <table>
                                <tr>
                                    <td>
                                        <div class="boxInformation">
                                            <div>
                                                <asp:DataList ID="dl_sex" runat="server" DataSourceID="ods_sex">
                                                    <ItemTemplate>
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    جنسیت:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="newLabel" runat="server" Text='<%# Eval("new") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <asp:ObjectDataSource ID="ods_sex" runat="server" OldValuesParameterFormatString="original_{0}"
                                                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.Main_Select_Advertisement_Sex_TableAdapter">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="lblCode" Name="Id" PropertyName="Text" Type="Int64" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                            </div>
                                            <asp:Label ID="Label2" runat="server" Text='<%# SetField( Eval("id")) %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label1" runat="server" Text='<%# SetState( Eval("id")) %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text='<%# SetDegree( Eval("Id")) %>'></asp:Label>
                                            <br />
                                            <span>تاریخ انقضا: </span>
                                            <asp:Label ID="Label4" Style="font: normal 13px b yekan;" runat="server" Text='<%# getShamsi(Eval("Expiry_Date","{0}")) %>' />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="boxPhoto">
                                            <div style=" background-color:White; -moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;border:1px solid #ccc; padding:4px; box-shadow:0px 0px 3px 1px #E2E2E2;">
                                                <asp:Image ID="Image1" runat="server" Style="width: 150px; height: 150px;" ImageUrl='<%# ResolveUrl(Eval("PicFile","~/management/images/{0}")) %>'
                                                    AlternateText='<%# Eval("Title") %>'/></div>
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
                        <div style="padding: 8px;">
                            <asp:DataList ID="DL_Photo" runat="server" DataKeyField="ID" DataSourceID="ODS" RepeatColumns="4"
                                RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div class="Imagee">
                                        <a target="_blank" href='<%# Eval("FileLink","../management/images/AttachPhoto/{0}") %>'>
                                            <asp:Image ID="Image1" runat="server" Height="170px" Width="170px" ImageUrl='<%# Eval("FileLink","~\management\images\AttachPhoto\{0}") %>' /></div>
                                    </a>
                                    <div style="text-align: center;">
                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("Caption", "{0}") %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
                                SelectMethod="GetData" TypeName="DS_AttachImageTableAdapters.CMS_Select_Advertisement_picture_TableAdapter">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblCode" Name="AdvertisementId" PropertyName="Text"
                                        Type="Int64" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div>
                            <div class="Contact" runat="server" visible='<%# iif(Eval("Tel","{0}")="" and Eval("Address","{0}")=""  and Eval("Mail","{0}")="" and Eval("Website","{0}")="",false,true) %>'>
                                <table>
                                    <tr>
                                        <td>
                                            <div class="box" id="d1" runat="server" visible='<%# iif(Eval("Tel","{0}")="",false,true) %>'>
                                                <span class="titleContact">تلفن: </span>
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Tel","{0}") %>' />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="box" id="d2" runat="server" visible='<%# iif(Eval("Address","{0}")="",false,true) %>'>
                                                <span class="titleContact">آدرس: </span>
                                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Address","{0}") %>' />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="box" id="d3" runat="server" visible='<%# iif(Eval("Mail","{0}")="",false,true) %>'>
                                                <span class="titleContact">پست الکترونیکی: </span><a href='<%# Eval("Mail","mailto:{0}") %>'>
                                                    <asp:Label ID="Label14" runat="server" CssClass="titleHover" Font-Names="Tahoma" Font-Size="12px" Text='<%# Eval("Mail","{0}") %>' /></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="d4" runat="server" visible='<%# iif(Eval("Website","{0}")="",false,true) %>'
                                                class="box">
                                                <span class="titleContact">وب سایت:</span> <span>
                                                    <asp:HyperLink ID="HyperLink1" Target="_blank" CssClass="hyper" Font-Names="Tahoma" Font-Size="12px" Text='<%# "http://"+Eval("Website","{0}").tostring().replace("http://","").replace("http","").replace("://","") %>'
                                                        NavigateUrl='<%# "http://"+Eval("Website","{0}").tostring().replace("http://","").replace("http","").replace("://","") %>'
                                                        runat="server">HyperLink</asp:HyperLink>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div> </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.CMS_Select_Advertisement_ByIDTableAdapter">
                <SelectParameters>
                    <asp:RouteParameter Name="id" RouteKey="code" Type="Int64" />
                </SelectParameters>
            </asp:ObjectDataSource>
        
        
    <div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UP_Comment" runat="server">
                        <ContentTemplate>
                            <asp:UpdateProgress ID="UPG" runat="server" AssociatedUpdatePanelID="UP_Comment">
                                <ProgressTemplate>
                                    در حال بارگذاری...</ProgressTemplate></asp:UpdateProgress><uc1:ucComments ID="ucComments1" runat="server" Visible="true" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
</asp:Content>
