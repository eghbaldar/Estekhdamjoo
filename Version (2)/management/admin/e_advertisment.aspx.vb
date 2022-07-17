
Partial Class management_admin_e_advertisment
    Inherits System.Web.UI.Page

    Dim classAd As New Advertisement
    Dim classField As New Fields
    Dim classState As New State
    Dim classDegree As New Degree

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        MultiView.ActiveViewIndex = 0
        Title = "درج آگهی استخدامی جدید"
        If Not IsPostBack Then

            txtInsertDate.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.ShortDate)
            txtInsertDateExpire.Text = ShamsiDate.Miladi2Shamsi(Now.AddDays(15), ShamsiDate.ShowType.ShortDate)


        End If

    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        '/********************* Picture ****************/

        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""

        If Request("txtDuplicatePhoto") <> "" Then
            FilePic = "DuplicateFiles\" + Request("txtDuplicatePhoto")
        Else
            If FileUploadInsert.FileName <> "" Then
                FileInfo = New System.IO.FileInfo(FileUploadInsert.FileName)
                FileUploadInsert.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
                FilePic = Filename + FileInfo.Extension
            End If
        End If


        '/********************* Show ****************/
        Dim rShow As Boolean
        If rblInsertShow.Items(0).Selected Then rShow = True
        If rblInsertShow.Items(1).Selected Then rShow = False
        '/********************* Sex ****************/
        Dim rSex As Byte
        If rblInsertSex.Items(0).Selected Then rSex = 2
        If rblInsertSex.Items(1).Selected Then rSex = 0
        If rblInsertSex.Items(2).Selected Then rSex = 1
        '/********************* Sex ****************/
        If rblInsertType.Items(1).Selected Then 'نوع: سراسری - ویژه 
            classAd.Insret_Advertisement_Null(txtInsertTitle.Text.Trim(), getShamsiToMiladiComplete(txtInsertDate.Text), ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), _
                                              ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                     getShamsiToMiladiComplete(txtInsertDateExpire.Text), rShow, 0, txtInsertText.Text, rSex, True, FilePic, txtInsertLid.Text)
        End If
        If rblInsertType.Items(2).Selected Then 'نوع: بانک
            classAd.Insret_Advertisement(txtInsertTitle.Text.Trim(), getShamsiToMiladiComplete(txtInsertDate.Text), ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), _
                                         ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                     getShamsiToMiladiComplete(txtInsertDateExpire.Text), rShow, 0, txtInsertText.Text, rSex, True, drpInsertBankID.SelectedValue, FilePic, txtInsertLid.Text)
        End If
        If rblInsertType.Items(0).Selected Then 'نوع: معمولی
            classAd.Insret_Advertisement_Null(txtInsertTitle.Text.Trim(), getShamsiToMiladiComplete(txtInsertDate.Text), ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), _
                                              ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                     getShamsiToMiladiComplete(txtInsertDateExpire.Text), rShow, 0, txtInsertText.Text, rSex, False, FilePic, txtInsertLid.Text)
        End If

        btnInsert.Enabled = False
        MultiView.ActiveViewIndex = 1

    End Sub

    Private Function getShamsiToMiladiComplete(ByVal d As String) As DateTime
        Return ShamsiDate.Shamsi2Miladi(d, Now.TimeOfDay.ToString.Substring(0, 9))
    End Function


    Protected Sub rblInsertType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblInsertType.SelectedIndexChanged
        If rblInsertType.Items(0).Selected Then drpInsertBankID.Visible = False
        If rblInsertType.Items(1).Selected Then drpInsertBankID.Visible = False
        If rblInsertType.Items(2).Selected Then drpInsertBankID.Visible = True

    End Sub


    Protected Sub btnFields_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFields.Click
        classField.Insret_Advertisement_Field(drpAd1.SelectedValue, drpFiled.SelectedValue)
        DL_Fields.DataBind()
        MultiView.ActiveViewIndex = 1
    End Sub

    Protected Sub btnState_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnState.Click

        'اگر سراسری انتخاب شود در جدول زیر عدد آیدی سراسری بر اساس فیلد پرنت آیدی منفی یک ، ریخته میشود
        'tbl_Advertisement_State
        If rbSelectTyoeState.Items(0).Selected Then 'سراسری
            classState.Insret_Advertisement_State(drpAd2.SelectedValue, classState.Get_ID_State_General)
        End If
        'اگر
        If rbSelectTyoeState.Items(1).Selected Then 'فقط استان
            classState.Insret_Advertisement_State(drpAd2.SelectedValue, drpState.SelectedValue)
        End If
        If rbSelectTyoeState.Items(2).Selected Then 'فقط شهر
            classState.Insret_Advertisement_State(drpAd2.SelectedValue, drpCity.SelectedValue)
        End If
        DL_States.DataBind()
        MultiView.ActiveViewIndex = 1

    End Sub

    Protected Sub rbSelectTyoeState_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbSelectTyoeState.SelectedIndexChanged

        If rbSelectTyoeState.Items(0).Selected Then
            drpState.Enabled = False
            drpCity.Enabled = False
        End If
        If rbSelectTyoeState.Items(1).Selected Then
            drpState.Enabled = True
            drpCity.Enabled = False
        End If
        If rbSelectTyoeState.Items(2).Selected Then
            drpState.Enabled = True
            drpCity.Enabled = True
        End If
        MultiView.ActiveViewIndex = 1
    End Sub

    Protected Sub btnDegree_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDegree.Click
        classDegree.Insret_Advertisement_Degree(drpAd3.SelectedValue, drpDegree.SelectedValue)
        DL_Degree.DataBind()
        MultiView.ActiveViewIndex = 1
    End Sub

    Protected Sub btnFinish_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFinish.Click

        MultiView.ActiveViewIndex = 2
    End Sub

    Public Sub DeleteDegree(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classDegree.Delete_Advertisement_Degree(s(0), s(1))
        DL_Degree.DataBind()
        MultiView.ActiveViewIndex = 1
    End Sub

    Public Function getTitleDegree(ByVal DegreeID As Object) As String

        Select Case Val(DegreeID)
            Case 6
                Return "دکتری"
            Case 5
                Return "فوق لیسانس"
            Case 4
                Return "لیسانس"
            Case 3
                Return "فوق دیپلم"
            Case 2
                Return "دیپلم"
            Case 1
                Return "زیر دیپلم"
            Case 0
                Return "دانشجو"
        End Select

    End Function

    Public Sub DeleteFields(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classField.Delete_Advertisement_Field(s(0), s(1))
        DL_Fields.DataBind()
        MultiView.ActiveViewIndex = 1
    End Sub

    Public Sub DeleteState(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classState.Delete_Advertisement_State(s(0), s(1))
        DL_States.DataBind()
        MultiView.ActiveViewIndex = 1
    End Sub



    Protected Sub drpState_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpState.SelectedIndexChanged
        MultiView.ActiveViewIndex = 1
      

    End Sub
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
