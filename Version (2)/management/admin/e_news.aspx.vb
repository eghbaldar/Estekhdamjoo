
Partial Class management_admin_e_news
    Inherits System.Web.UI.Page

    Dim classNews As New News

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "اخبار استخدامی"
        If Not IsPostBack Then txtDate.Text = Now
    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        '/********************* Picture ****************/
        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""
        If FileUploadInsert.FileName <> "" Then
            FileInfo = New System.IO.FileInfo(FileUploadInsert.FileName)
            FileUploadInsert.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
            FilePic = Filename + FileInfo.Extension
        End If
        '/********************* Picture ****************/
        Dim R As Boolean
        If rblInsert.Items(0).Selected Then R = True
        If rblInsert.Items(1).Selected Then R = False
        classNews.Insret_E_News(txtTitle.Text, txtDate.Text, R, txtText.Text, FilePic, txtAbstract.Text)
        dg.DataBind()

        txtAbstract.Text = ""
        txtDate.Text = ""
        txtText.Text = ""
        txtTitle.Text = ""

    End Sub

    Public Sub DeleteNews(ByVal sender As Object, ByVal e As CommandEventArgs)
        classNews.Delete_E_News(Val(e.CommandArgument))
        dg.DataBind()
    End Sub

    Public Sub UpdateNews(ByVal sender As Object, ByVal e As CommandEventArgs)

        id.Text = classNews.SelectRow_E_News(Val(e.CommandArgument))("id")
        txtTitleEdit.Text = classNews.SelectRow_E_News(Val(e.CommandArgument))("title")
        txtTextEdit.Text = classNews.SelectRow_E_News(Val(e.CommandArgument))("text")
        txtDateEdit.Text = classNews.SelectRow_E_News(e.CommandArgument)("create_date")
        visit.Text = classNews.SelectRow_E_News(e.CommandArgument)("visit")
        Image.ImageUrl = "~\management\images\" + classNews.SelectRow_E_News(e.CommandArgument)("PicFile")
        pic.Text = classNews.SelectRow_E_News(e.CommandArgument)("PicFile")
        txtAbstractEdit.Text = classNews.SelectRow_E_News(e.CommandArgument)("Abstract")
        Select Case Convert.ToBoolean(classNews.SelectRow_E_News(e.CommandArgument)("show"))
            Case True
                rblEdit.Items(0).Selected = True
                rblEdit.Items(1).Selected = False
            Case False
                rblEdit.Items(1).Selected = True
                rblEdit.Items(0).Selected = False
        End Select

    End Sub

    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click

        '/********************* Picture ****************/
        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""
        If FileUploadEdit.FileName <> "" Then
            FileInfo = New System.IO.FileInfo(FileUploadEdit.FileName)
            FileUploadEdit.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
            FilePic = Filename + FileInfo.Extension
        End If
        '/********************* Picture ****************/
        Dim R As Boolean
        If rblEdit.Items(0).Selected Then R = True
        If rblEdit.Items(1).Selected Then R = False
        If FilePic = "" Then
            classNews.Update_E_News(txtTitleEdit.Text, txtDateEdit.Text, R, visit.Text, txtTextEdit.Text, id.Text, pic.Text, txtAbstractEdit.Text)
        Else
            classNews.Update_E_News(txtTitleEdit.Text, txtDateEdit.Text, R, visit.Text, txtTextEdit.Text, id.Text, FilePic, txtAbstractEdit.Text)
        End If

        dg.DataBind()

    End Sub

End Class
