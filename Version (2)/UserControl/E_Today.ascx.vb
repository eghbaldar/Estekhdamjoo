
Partial Class UserControl_E_Today
    Inherits System.Web.UI.UserControl

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.ShortDate)
    End Function

End Class
