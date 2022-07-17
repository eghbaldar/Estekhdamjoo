<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newsrss.aspx.vb" ContentType="text/xml"
    Inherits="newsrss" %>

<asp:repeater id="RepeaterRSS" runat="server">
            <HeaderTemplate>
                <rss version="2.0">  
                    <channel>  
    <title>استخدام جو </title> 
    <link>http://www.estekhdamjoo.ir</link>  
    <description>  
   آخرین اخبار استخدام جو
    </description>
          
            </HeaderTemplate>
            <ItemTemplate>
                <item>  


                <title> <%# RemoveIllegalCharacters(DataBinder.Eval(Container.DataItem, "Title")) %>  </title>  
                                
                <link> <%# RemoveIllegalCharacters(String.Format("http://www.estekhdamjoo.ir/" + "news/" + "{0}/{1}", Eval("id"), Eval("Title").ToString().Replace(" ", "-") + ".html"))%>  </link> 
                <description> <%# RemoveIllegalCharacters(DataBinder.Eval(Container.DataItem, "abstract"))%></description>  
               
                     <pubDate><%# String.Format("{0:R}", DataBinder.Eval(Container.DataItem, "create_date"))%>  </pubDate> 


        </item>
            </ItemTemplate>
            <FooterTemplate>
                </channel> </rss>
            </FooterTemplate>
        </asp:repeater>
