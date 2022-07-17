<%@ Control Language="VB" AutoEventWireup="false" CodeFile="MenuVertical.ascx.vb"
    Inherits="UserControl_MenuVertical" %>
<div class="ContentTitlePost">
    دسترسی سریع
</div>
<div id="accordian">
    <ul>
        <li>
            <h3>
                <table>
                    <tr>
                        <td>
                            <div class="mnu2_location">
                            </div>
                        </td>
                        <td>
                            <span class="titrAccordian">استخدام براساس استان</span>
                        </td>
                    </tr>
                </table>
            </h3>
            <ul>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS_State">
                    <ItemTemplate>
                        <a href='<%# ResolveUrl(Eval("id","../{0}/محل-استخدام/استخدام"))  %>'>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></a>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS_State" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.MNU_state_state_AllTableAdapter">
                </asp:ObjectDataSource>
            </ul>
        </li>
        <li>
            <h3>
                <table>
                    <tr>
                        <td>
                            <div class="mnu2_degree">
                            </div>
                        </td>
                        <td>
                            <span class="titrAccordian">استخدام براساس رشته تحصیلی</span>
                        </td>
                    </tr>
                </table>
            </h3>
            <ul>
                <asp:DataList ID="Dl_State" runat="server" DataKeyField="ID" DataSourceID="ODS_Fields">
                    <ItemTemplate>
                     
                      <a href='<%# ResolveUrl(Eval("name","../{0}/تخصص-و-رشته-تحصیلی/استخدام").ToString().Replace(" ", "-"))  %>'>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></a>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS_Fields" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.MNU_Field_AllTableAdapter">
                </asp:ObjectDataSource>
            </ul>
        </li>
        <li>
            <h3>
                <table>
                    <tr>
                        <td>
                            <div class="mnu2_business">
                            </div>
                        </td>
                        <td>
                            <span class="titrAccordian">استخدام مشاغل عمومی</span>
                        </td>
                    </tr>
                </table>
            </h3>
            <ul>
                <asp:DataList ID="DL_Mashaghel" runat="server" DataKeyField="ID" DataSourceID="ODS_Mashaghel">
                    <ItemTemplate>
                        <a href='<%# ResolveUrl(Eval("name","../{0}/مشاغل-عمومی/استخدام").ToString().Replace(" ", "-"))  %>'>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></a>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS_Mashaghel" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.MNU_Field_Public_AllTableAdapter">
                </asp:ObjectDataSource>
            </ul>
        </li>
        <li>
            <h3>
                <table>
                    <tr>
                        <td>
                            <div class="mnu2_field">
                            </div>
                        </td>
                        <td>
                            <span class="titrAccordian">استخدام براساس مدرک تحصیلی</span>
                        </td>
                    </tr>
                </table>
            </h3>
            <ul>
                <li><a href='<%= ResolveUrl("../دکتری/مقطع-تحصیلی/استخدام")  %>'>دکتری</a></li>
                <li><a href='<%= ResolveUrl("../فوق لیسانس/مقطع-تحصیلی/استخدام")  %>'>فوق لیسانس</a></li>
                <li><a href='<%= ResolveUrl("../لیسانس/مقطع-تحصیلی/استخدام")  %>'>لیسانس</a></li>
                <li><a href='<%= ResolveUrl("../فوق دیپلم/مقطع-تحصیلی/استخدام")  %>'>فوق دیپلم</a></li>
                <li><a href='<%= ResolveUrl("../دیپلم/مقطع-تحصیلی/استخدام")  %>'>دیپلم</a></li>
                <li><a href='<%= ResolveUrl("../زیر دیپلم/مقطع-تحصیلی/استخدام")  %>'>زیر دیپلم</a></li>
                <li><a href='<%= ResolveUrl("../دانشجو/مقطع-تحصیلی/استخدام")  %>'>دانشجو</a></li>
            </ul>
        </li>
        <li>
            <h3>
                <table>
                    <tr>
                        <td>
                            <div class="mnu2_bank">
                            </div>
                        </td>
                        <td>
                            <span class="titrAccordian">استخدام بانک</span>
                        </td>
                    </tr>
                </table>
            </h3>
            <ul>
                <asp:DataList ID="Dl_Bank" runat="server" DataKeyField="ID" DataSourceID="OSD_Bank">
                    <ItemTemplate>
                        <a href='<%# ResolveUrl(Eval("Title","../{0}/بانک/استخدام"))  %>'>
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></a>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="OSD_Bank" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.MNU_Bank_AllTableAdapter">
                </asp:ObjectDataSource>
            </ul>
        </li>
    </ul>
</div>
