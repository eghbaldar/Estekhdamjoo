<%@ Page Title="" Language="VB" MasterPageFile="~/Master3.master" AutoEventWireup="false"
    CodeFile="archiveNews.aspx.vb" Inherits="archiveNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
       
        /* Pagging*/
        .gridview
        {
           
            padding: 2px;
        }
        .gridview a
        {
            margin: auto 1%;
            background-color: #444;
            padding: 5px 10px 5px 10px;
            color: #fff;
            text-decoration: none;
            box-shadow: 1px 1px 1px #111;
        }
        .gridview a:hover
        {
            background-color: #E76A01;
            color: #fff;
        }
        .gridview span
        {
            background-color: #009FA9;
            color: #fff;
            box-shadow: 1px 1px 1px #111;
            padding: 5px 10px 5px 10px;
        }
        
        /* ------ */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="ContentTitlePost" style="margin-right:2px; width:790px; border:1px solid #DADADA" >
                  آرشیو اخبار استخدامی</div>
    <div style="margin-bottom:7px;">
 
        <asp:GridView ID="gr_state" runat="server" DataSourceID="ODS_News" AutoGenerateColumns="False"
            AllowPaging="True" PageSize="15" DataKeyNames="ID" ShowHeader="False">
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <ItemTemplate>
                          <div class="ContextPostList" style="margin-right:3px;">
                            <table>
                                <tr>
                                    <td style="width: 665px; margin-left: 5px;">
                                        <div style="margin-bottom: 8px;">
                                            <a href='<%# ResolveUrl(Eval("id","news/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                                title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                                                <asp:Label ID="TitleLabel" class="ContextPostList_Title" runat="server" Text='<%# Eval("Title") %>' />
                                            </a>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="ContextPostList_Create_Date">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# "تاریخ درج : "+ getShamsi(Eval("Create_Date")) %>' />
                                                        </div>
                                                    </td>
                                                    <td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="DivAb">
                                            <asp:Label ID="PicFileLabel" runat="server" Text='<%# Eval("abstract","{0}...") %>' /></div>
                                    </td>
                                   <td>
                                     <a href='<%# ResolveUrl(Eval("id","news/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                        title='<%# Eval("Title") %>' rel="bookmark" target="_blank" class="im-hover">
                                <asp:Image ID="Image1" CssClass="im" ImageUrl='<%# Eval("PicFile","management/images/{0}")   %>' width="100px" height="100px"
                                    runat="server"  AlternateText='<%# Eval("title","{0}") %>' /></a>
                            </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="gridview"></PagerStyle>
        </asp:GridView>
        <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetData" TypeName="DS_Search_ListTableAdapters.Archive_NewsTableAdapter">
        </asp:ObjectDataSource>
    </div>
</asp:Content>
