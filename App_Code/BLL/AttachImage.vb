Imports Microsoft.VisualBasic

Public Class AttachImage

    Dim Attach As New DS_AttachImageTableAdapters.CMS_Select_Advertisement_picture_TableAdapter

    Public Function Insret_AttachImage(ByVal ID As Long, ByVal Path As String, ByVal Caption As String) As Boolean
        Return Attach.Insert_Advertisement_Picture(ID, Path, Caption)
    End Function

    Public Function Delete_AttachImage(ByVal id As Long) As Boolean
        Return Attach.Delete_Advertisement_Picture(id)
    End Function

End Class
