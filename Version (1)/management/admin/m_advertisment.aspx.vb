
Partial Class management_admin_m_advertisment
    Inherits System.Web.UI.Page
    Dim classAd As New Advertisement
    Public Sub DeleteNews(ByVal sender As Object, ByVal e As CommandEventArgs)
        classAd.Delete_Advertisement(Val(e.CommandArgument))
        dgShow.DataBind()
    End Sub
End Class
