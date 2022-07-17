<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Search.ascx.vb" Inherits="UserControl_Search" %>
<div id="search">
    <table>
        <tr>
            <td>
                <asp:TextBox ID="txtSearch" CssClass="txtSearch" runat="server" Text="جستجو آگهی استخدامی ..."
                    onfocus="if(this.value=='جستجو آگهی استخدامی ...'){this.value='';}" ForeColor="#999999"
                    onblur="if(this.value==''){this.value='جستجو آگهی استخدامی ...';}if(this.value=='جستجو آگهی استخدامی ...')this.style.color='#999999';"
                    onmousedown="this.style.color='#000000';"></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ForeColor="Transparent" AlternateText="" ID="btnSearch" ImageUrl="~/content/images/btnSearch.png" runat="server" />
            </td>
        </tr>
    </table>
</div>
