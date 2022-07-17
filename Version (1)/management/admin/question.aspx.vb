
Partial Class management_admin_question
    Inherits System.Web.UI.Page
    Dim classQ As New Question
  

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        MultiView.ActiveViewIndex = 0
        Title = "درج نمونه سوال جدید"
        If Not IsPostBack Then

            txtInsertDate.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.ShortDate)

        End If

    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        '/********************* Picture ****************/

        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim Filename1 As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""
        Dim File As String = ""
       
            If FileUploadInsert.FileName <> "" Then
                FileInfo = New System.IO.FileInfo(FileUploadInsert.FileName)
                FileUploadInsert.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
                FilePic = Filename + FileInfo.Extension
            End If
       
        If FileUploadInsertFile.FileName <> "" Then
            FileInfo = New System.IO.FileInfo(FileUploadInsertFile.FileName)
            FileUploadInsertFile.SaveAs(MapPath("~\management\files\" + Filename1 + FileInfo.Extension))
            File = Filename1 + FileInfo.Extension
        End If
        '/********************* Show ****************/
        Dim rShow As Boolean
        If rblInsertShow.Items(0).Selected Then rShow = True
        If rblInsertShow.Items(1).Selected Then rShow = False
        '/********************* Sex ****************/
        Dim rShowMain As Boolean
        If rblInsertShowMain.Items(0).Selected Then rShowMain = True
        If rblInsertShowMain.Items(1).Selected Then rShowMain = False




        classQ.Insret_Question(txtInsertTitle.Text.Trim(), getShamsiToMiladiComplete(txtInsertDate.Text), rShow, txtInsertText.Text, _
                               ReplaceNumberFromFaToEn(txtInsertPrice.Text).Trim(), File, txtInsertSize.Text.Trim() + " " + DDL_Size.Text, _
                                DDL_Type.Text, FilePic, DDL_categoryQ.SelectedValue, rShowMain)


        btnInsert.Enabled = False
        MultiView.ActiveViewIndex = 1

    End Sub

    Private Function getShamsiToMiladiComplete(ByVal d As String) As DateTime
        Return ShamsiDate.Shamsi2Miladi(d, Now.TimeOfDay.ToString.Substring(0, 9))
    End Function



    
    Function ReplaceNumberFromFaToEn(ByVal text As String) As String

        Dim t As String = text
        t = t.Replace("۰", "0")
        t = t.Replace("۱", "1")
        t = t.Replace("۲", "2")
        t = t.Replace("۳", "3")
        t = t.Replace("۴", "4")
        t = t.Replace("۵", "5")
        t = t.Replace("۶", "6")
        t = t.Replace("۷", "7")
        t = t.Replace("۸", "8")
        t = t.Replace("۹", "9")
        Return t

    End Function
End Class
