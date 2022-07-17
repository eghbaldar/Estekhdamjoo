<%@ Page Language="VB" AutoEventWireup="false" CodeFile="agahitoolbar.aspx.vb" ContentType="text/xml"
    Inherits="rss" %>

<asp:repeater id="RepeaterRSS" runat="server">
            <HeaderTemplate>
                <rss version="2.0">  
                    <channel>  
        <title>استخدام جو </title>  
        <link>http://www.estekhdamjoo.ir</link>  
        <description>  
      آخرین آگهی های استخدامی
        </description>
          
            </HeaderTemplate>
            <ItemTemplate>
                <item>  


                <title> <%# RemoveIllegalCharacters(DataBinder.Eval(Container.DataItem, "Title")) %>  </title>  
                                
                <link> <%# RemoveIllegalCharacters(String.Format("http://www.estekhdamjoo.ir/{0}/{1}.html", Eval("id"), Eval("Title")))%>  </link> 


        </item>
            </ItemTemplate>
            <FooterTemplate>
                </channel> </rss>
            </FooterTemplate>
        </asp:repeater>
