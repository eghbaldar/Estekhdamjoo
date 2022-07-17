
Partial Class famous
    Inherits System.Web.UI.Page
    Dim ClassAd As New Advertisement

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then ClassAd.Main_Update_Famous_Visit(Convert.ToInt64(Page.RouteData.Values("code").ToString()))
        Title = ClassAd.SelectTitleFamous(Convert.ToInt32(Page.RouteData.Values("code"))).ToString() + " | استخدام جو "
        Dim tag As HtmlMeta = New HtmlMeta()
        tag.Name = "description"
        tag.Content = ClassAd.SelectTitleFamous(Convert.ToInt32(Page.RouteData.Values("code"))).ToString()
        Header.Controls.Add(tag)
    End Sub

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.LongDate)
    End Function
End Class
