
Partial Class management_admin_selectAttachImage
    Inherits System.Web.UI.Page

    Dim Attach As New AttachImage

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        '/********************* Picture ****************/

        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""

        If FileUpload.FileName <> "" Then
            FileInfo = New System.IO.FileInfo(FileUpload.FileName)
            FileUpload.SaveAs(MapPath("~\management\images\AttachPhoto\" + Filename + FileInfo.Extension))
            FilePic = Filename + FileInfo.Extension
        End If
        Attach.Insret_AttachImage(Request.QueryString("id"), FilePic, txtCaption.text)
        DL.DataBind()

    End Sub

    Public Sub delete(ByVal sender As Object, ByVal e As CommandEventArgs)
        Attach.Delete_AttachImage(e.CommandArgument)
        DL.DataBind()
    End Sub

End Class
