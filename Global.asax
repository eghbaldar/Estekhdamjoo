
<%@ Application Language="VB" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.Routing.Route" %>
<%@ Import Namespace="System.Web" %>
<script runat="server">

    
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
    
    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        RegisterRoutes(RouteTable.Routes)
        RegisterRoutes1(RouteTable.Routes)
    End Sub
   

    Shared Sub RegisterRoutes(ByVal routes As RouteCollection)
        
        'routes.MapPageRoute("Post", "{Code}/{title}", "~/post.aspx", )
        routes.MapPageRoute("famous", "service/{Code}/{title}", "~/famous.aspx")
        routes.MapPageRoute("news", "news/{Code}/{title}", "~/news.aspx")
        routes.MapPageRoute("rss", "feed/", "~/rss.aspx")
        routes.MapPageRoute("newsrss", "Newsfeed/", "~/newsrss.aspx")
        routes.MapPageRoute("netrss", "Netfeed/", "~/netrss.aspx")
         routes.MapPageRoute("resume", "نحوه-ی-نگارش-رزومه/", "~/resum.aspx")
        routes.MapPageRoute("agahi", "درج-آگهی-استخدامی-رایگان/", "~/agahi.aspx")
        routes.MapPageRoute("toolbar", "تولبار-شهر-استخدامی/", "~/toolbar.aspx")
        routes.MapPageRoute("archiveNews", "آرشیو-اخبار-استخدامی/", "~/archiveNews.aspx")
        routes.MapPageRoute("archiveFamous", "کارآفرینان-موفق-و-برتر/", "~/archiveFamous.aspx")
        routes.MapPageRoute("archiveEstekhdami", "آرشیو-استخدامی-ویژه/", "~/archiveEstekhdami.aspx")
        routes.MapPageRoute("PostPaging", "page/{PageId}/", "~/default2.aspx")
        routes.MapPageRoute("contact", "تماس-با-ما/", "~/Contact.aspx")
        routes.MapPageRoute("about", "درباره-ما/", "~/About.aspx")
        routes.MapPageRoute("file", "file/{id}/{title}", "~/Question.aspx")
        routes.MapPageRoute("list", "{name}/{SubName}/{SubName2}", "~/list.aspx")
       
           routes.MapPageRoute("questionList", "نمونه-سوالات-استخدامی/", "~/QuestionList.aspx")
        routes.MapPageRoute("ads", "تبلیغات/", "~/ads.aspx")
        'routes.MapPageRoute("search", "{Subject}", "~/search.aspx")
        'routes.RouteExistingFiles = True
    End Sub
    Shared Sub RegisterRoutes1(ByVal routes As RouteCollection)
        
        routes.MapPageRoute("Post", "{Code}/{title}", "~/post.aspx")
    End Sub
    
    Shared Sub RegisterRoutes2(ByVal routes As RouteCollection)
        
       
    End Sub
</script>