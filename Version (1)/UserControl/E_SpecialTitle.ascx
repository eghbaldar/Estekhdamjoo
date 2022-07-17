<%@ Control Language="VB" AutoEventWireup="false" CodeFile="E_SpecialTitle.ascx.vb"
    Inherits="UserControl_E_SpecialTitle" %>
<div class="ContentTitlePost">
    تازه ترین استخدام های ویژه
</div>
<div class="res_ContentTitlePost2">
    تازه ترین استخدام های ویژه
</div>
<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS"
    CssClass="res_news_dl">
    <ItemTemplate>
        <div>
        </div>
        <h1 style="font-family: Tahoma; font-size: 12px; color: #A49F9B;">
            <a href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                <div class="u">
                    <img src='<%= ResolveUrl("../content/images/arrow.png") %>' />
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </div>
            </a>
        </h1>
    </ItemTemplate>
</asp:DataList>
<asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.Main_Select_Advertisement_General_TitleTableAdapter">
</asp:ObjectDataSource>
