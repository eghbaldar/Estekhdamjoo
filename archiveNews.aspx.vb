
Partial Class archiveNews
    Inherits System.Web.UI.Page
    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.ShortDate)
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "اخبار استخدامی " + " | استخدام جو "
    End Sub
End Class
