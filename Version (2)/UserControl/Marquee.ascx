<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Marquee.ascx.vb" Inherits="UserControl_Marquee" %>
<marquee dir="rtl" direction="right" onmouseout="this.scrollAmount=2;" onmouseover="this.scrollAmount=0;"
    width="1024" height="24" scrollamount="2" scrolldelay="1"> 
                    
                       <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ODS_Marquee">
                    <ItemTemplate>
                    <div style="height:20px;">
                        

                        <a  href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                title='<%# Eval("Title") %>' rel="bookmark" >

                       <asp:Label ID="TitleLabel" style="font:normal 12px tahoma;" runat="server" Text='<%# Eval("Title") %>' />
                        </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>  <asp:ObjectDataSource ID="ODS_Marquee" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.Select_Advertisement_Random_TitleTableAdapter">
                </asp:ObjectDataSource></marquee>
