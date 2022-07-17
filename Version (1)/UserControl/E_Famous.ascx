<%@ Control Language="VB" AutoEventWireup="false" CodeFile="E_Famous.ascx.vb" Inherits="UserControl_E_Famous" %>
<div class="ContentTitlePost">
    کارآفرینان موفق و برتر
</div>
<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS" >
    <ItemTemplate>
        <div style="float: right; font-family: B Yekan;">
            <div class="ur" style="float: right;">
                <a href='<%# ResolveUrl(Eval("id","../service/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                    title='<%# Eval("Title") %>' rel="bookmark" target="_blank" class="im-hover">
                    <asp:Image ID="Image1" CssClass="im" ImageUrl='<%# Eval("PicFile","../management/images/{0}")   %>'
                        Width="70px" Height="70px" runat="server" AlternateText='<%# Eval("title","{0}") %>' /></a>
            </div>
            <div class="fam">
                <a href='<%# ResolveUrl(Eval("id","../service/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                    title='<%# Eval("Title") %>' rel="bookmark" target="_blank" class="im-hover">
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></a>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
<div style="float: left; margin: 10px;">
    <a href='<%= ResolveUrl("../کارآفرینان-موفق-و-برتر/") %>'>
        <asp:Button Font-Bold="false" ID="Button3" runat="server" Text="بیشتر ..." CssClass="more-f" />
    </a>
</div>
<asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
    SelectMethod="GetData" TypeName="DS_famousTableAdapters.Main_Select_famous_TitleTableAdapter">
</asp:ObjectDataSource>
