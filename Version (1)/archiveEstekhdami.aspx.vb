
Partial Class archiveEstekhdami
    Inherits System.Web.UI.Page
    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.ShortDate)
    End Function
End Class
