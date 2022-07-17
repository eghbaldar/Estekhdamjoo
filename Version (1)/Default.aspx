<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="ContentTitlePost" style="margin-right: 2px; width: 790px; border: 1px solid #DADADA;">
        آخرین آگهی های استخدامی روز
    </div>
    <div class="res_ContentTitlePost2">
        آخرین آگهی های استخدامی روز
    </div>
    <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetData" TypeName="DS_Search_ListTableAdapters.Main_Select_Advertisement_ALL_List_TableAdapter">
    </asp:ObjectDataSource>
    <asp:ListView ID="gridview" runat="server" DataSourceID="ODS_News" GroupItemCount="1">
        <layouttemplate>
            <table runat="server" id="table1" width="100%" class="TableSoftwareList">
                <tr runat="server" id="groupPlaceholder">
                </tr>
            </table>
        </layouttemplate>
        <grouptemplate>
            <tr runat="server" id="tableRow">
                <td runat="server" id="itemPlaceholder" />
            </tr>
        </grouptemplate>
        <itemtemplate>
            <td id="Td1" runat="server">
                <div class="ContextPostList">
                    <table style="width:100%;">
                        <tr>
                            <td id="res_ContextPostList_column1" style="width: 665px; margin-left: 5px;">
                                <div style="margin-bottom: 8px;">
                                    <a href='<%# ResolveUrl(Eval("id","{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                        title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                                        <asp:Label ID="TitleLabel" class="ContextPostList_Title" runat="server" Text='<%# Eval("Title") %>' />
                                    </a>
                                </div>
                                <div>
                                    <table>
                                        <tr>
                                            <td>
                                                <div class="ContextPostList_Create_Date">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# "تاریخ درج : "+getShamsi(Eval("Create_Date")) %>' />
                                                </div>
                                            </td>
                                            <td>
                                                <div class="ContextPostList_Expiry_Date">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# "تاریخ انقضا : "+getShamsi(Eval("Expiry_Date","{0}")) %>' />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="DivAb">
                                    <asp:Label ID="PicFileLabel" runat="server" Text='<%# Eval("abstract","{0}...")%>' /></div>
                            </td>
                            <td id="res_ContextPostList_column2">
                             <a href='<%# ResolveUrl(Eval("id","{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                        title='<%# Eval("Title") %>' rel="bookmark" target="_blank" class="im-hover">
                                <asp:Image ID="Image1" CssClass="im" ImageUrl='<%# Eval("PicFile","management/images/{0}")   %>' width="100px" height="100px"
                                    runat="server"  AlternateText='<%# Eval("title","{0}") %>' /></a>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </itemtemplate>
    </asp:ListView>
    <div style="text-align: right; direction: rtl; width: 100%; padding: 20px 0px;">
        <asp:DataPager runat="server" ID="ContactsDataPager" PageSize="15" PagedControlID="gridview"
            QueryStringField="PageId" style="display: inline-block;">
            <fields>
            
                <asp:TemplatePagerField>
                    <PagerTemplate>
                        <div style="float: right;" class="page-active-style">
                            صفحه
                                <asp:Label runat="server" ID="CurrentPageLabel" Text="<%# IIf(Container.TotalRowCount>0,  (Container.StartRowIndex / Container.PageSize) + 1 , 0) %>" />
                                از
                                <asp:Label runat="server" ID="TotalPagesLabel" Text="<%# Math.Ceiling (System.Convert.ToDouble(Container.TotalRowCount) / Container.PageSize) %>" />
                           
                        </div>
                    </PagerTemplate>
                </asp:TemplatePagerField>
                       <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="page-style" ShowFirstPageButton="true"
                    ShowLastPageButton="false" FirstPageText="اولین صفحه" ShowPreviousPageButton="false"
                    ShowNextPageButton="false" />
               <asp:NumericPagerField  
                    NextPreviousButtonCssClass="page-style" NumericButtonCssClass="page-style" CurrentPageLabelCssClass="page-active-style"
                    ButtonCount="10" />
                <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="page-style" ShowFirstPageButton="false"
                    ShowLastPageButton="true" LastPageText="آخرین صفحه" ShowPreviousPageButton="false"
                    ShowNextPageButton="false" />
            </fields>
        </asp:DataPager>
    </div>
</asp:Content>
