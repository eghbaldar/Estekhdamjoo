
Partial Class agahi
    Inherits System.Web.UI.Page

    Dim ClassAgahi As New AgahiKarfarma

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        Try
            '/********************* Files ****************/
            Dim Rnd As New Random
            Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
            Dim FileInfo As System.IO.FileInfo
            Dim FilePic As String = ""
            If FileUploadInsert.FileName <> "" Then

                If Not ValidationFilePath(FileUploadInsert.FileName) Then
                    lblWrong.Text = "فرمت فایل انتخاب شده باید یکی از فرمت های استاندارد روبرو باشد : PDF , DOC , DOCX , JPG , PNG , GIF"
                    Exit Sub
                End If

                FileInfo = New System.IO.FileInfo(FileUploadInsert.FileName)
                FileUploadInsert.SaveAs(MapPath("~\management\files\" + Filename + FileInfo.Extension))
                FilePic = Filename + FileInfo.Extension
            End If

            ClassAgahi.Insret_Agahi(txtTitle.Text, txtEmail.Text, txtWebsite.Text, txtTel.Text, txtAddress.Text, txtExpireDate.Text, txtText.Text, txtDescription.Text, FilePic)
            MultiView.ActiveViewIndex = 1
        Catch ex As Exception

        End Try

    End Sub

    Public Function ValidationFilePath(ByVal Path As String) As Boolean

        If Path <> String.Empty Then
            Dim Postfix() As String = {"JPG", "PNG", "GIF", "DOC", "PDF"}
            Dim Str As String = Mid(Path, Path.Length - 2, 3)
            Dim b As Boolean = False
            For i As Integer = 0 To Postfix.Length - 1
                If Postfix(i).ToUpper() = Str.ToUpper() Then
                    Return True
                    Exit Function
                Else : b = False
                End If
            Next
            Return b
        End If

    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "درج آگهی استخدام " + " | استخدام جو "
    End Sub
End Class
