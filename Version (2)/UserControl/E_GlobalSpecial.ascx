<%@ Control Language="VB" AutoEventWireup="false" CodeFile="E_GlobalSpecial.ascx.vb"
    Inherits="UserControl_E_GlobalSpecial" %>
<div class="ContentTitlePost" style="width:767px;">
    استخدام های ویژه
</div>

<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS"
    RepeatDirection="Horizontal">
    <ItemTemplate>
        <div style="padding: 12px 16px 0px 20px; height: 160px;" id="im_hov">
            <a href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                title='<%# Eval("Title") %>' rel="bookmark" target="_blank " >
                <asp:Image ID="Image1" CssClass="im" ImageUrl='<%# Eval("PicFile","../management/images/{0}")   %>'
                    Width="150px" Height="150px" runat="server" AlternateText='<%# Eval("title","{0}") %>' /></a>
        </div>
        <div style="padding: 1px 16px 0px 20px; height: 30px;">
            <h1 style="font-family: 'b yekan'; font-size: 14px; text-align: center;">
                <a href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                    title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></a></h1>
        </div>
    </ItemTemplate>
</asp:DataList>

<asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.Main_Select_Advertisement_General_Title_PictureTableAdapter">
</asp:ObjectDataSource>

