
Partial Class management_admin_e_Edit_advertisment
    Inherits System.Web.UI.Page

    Dim classAd As New Advertisement
    Dim classField As New Fields
    Dim classState As New State
    Dim classDegree As New Degree

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

       
        If Not IsPostBack Then

            Dim Id As Long = Request.QueryString("id")
            txtInsertTitle.Text = classAd.SelectRow_Advertisement(Id).Item("Title")

            txtInsertDate.Text = ShamsiDate.Miladi2Shamsi(classAd.SelectRow_Advertisement(Id).Item("Create_Date"), ShamsiDate.ShowType.ShortDate)
            Dim timeCreate As DateTime = Convert.ToDateTime(classAd.SelectRow_Advertisement(Id).Item("Create_Date"))
            lblTimeCraete.Text = timeCreate.TimeOfDay.ToString

            txtInsertEmail.Text = classAd.SelectRow_Advertisement(Id).Item("Mail")
            txtInsertWebsite.Text = classAd.SelectRow_Advertisement(Id).Item("Website")
            txtInsertTell.Text = classAd.SelectRow_Advertisement(Id).Item("Tel")
            txtInsertAddress.Text = classAd.SelectRow_Advertisement(Id).Item("Address")

            txtInsertDateExpire.Text = ShamsiDate.Miladi2Shamsi(classAd.SelectRow_Advertisement(Id).Item("Expiry_Date"), ShamsiDate.ShowType.ShortDate)
            Dim timeExpire As DateTime = Convert.ToDateTime(classAd.SelectRow_Advertisement(Id).Item("Expiry_Date"))
            lblTimeExpire.Text = timeExpire.TimeOfDay.ToString

            txtInsertText.Text = classAd.SelectRow_Advertisement(Id).Item("Text")
            txtInsertVisit.Text = classAd.SelectRow_Advertisement(Id).Item("visit")
            txtInsertLid.Text = classAd.SelectRow_Advertisement(Id).Item("Abstract")
            '/********************* Show ****************/
            Dim rShow As Boolean = classAd.SelectRow_Advertisement(Id).Item("Show")
            If rShow = True Then rblInsertShow.Items(0).Selected = True
            If rShow = False Then rblInsertShow.Items(1).Selected = True
            '/********************* Sex ****************/
            Dim rSex As Byte = classAd.SelectRow_Advertisement(Id).Item("Sex")
            If rSex = 0 Then
                rblInsertSex.Items(0).Selected = True
                rblInsertSex.Items(1).Selected = False
                rblInsertSex.Items(2).Selected = False
            End If

            If rSex = 1 Then
                rblInsertSex.Items(1).Selected = True
                rblInsertSex.Items(0).Selected = False
                rblInsertSex.Items(2).Selected = False
            End If

            If rSex = 2 Then
                rblInsertSex.Items(2).Selected = True
                rblInsertSex.Items(1).Selected = False
                rblInsertSex.Items(0).Selected = False
            End If

            '/********************* General & BankId ****************/
            Select Case classAd.SelectRow_Advertisement(Id).Item("General")
                Case True
                    If classAd.Select_Advertisement_Bank_Exist(Id) Then
                        rblInsertType.Items(0).Selected = False
                        rblInsertType.Items(1).Selected = True
                        rblInsertType.Items(2).Selected = False
                        drpInsertBankID.Enabled = True
                        drpInsertBankID.SelectedValue = classAd.Select_Advertisement_Bank_Exist(Id)
                    Else
                        rblInsertType.Items(0).Selected = True
                        rblInsertType.Items(1).Selected = False
                        rblInsertType.Items(2).Selected = False
                        drpInsertBankID.Enabled = False
                    End If
                   
                Case False
                    rblInsertType.Items(0).Selected = False
                    rblInsertType.Items(1).Selected = False
                    rblInsertType.Items(2).Selected = True
                    drpInsertBankID.Enabled = False
            End Select
            Try

                drpInsertBankID.SelectedValue = classAd.SelectRow_Advertisement(Id).Item("BankId")
                lblBankId.Text = classAd.SelectRow_Advertisement(Id).Item("BankId")

                If rblInsertType.Items(0).Selected Then 'نوع: سراسری - ویژه - 
                    drpInsertBankID.Enabled = False
                End If
                If rblInsertType.Items(1).Selected Then 'نوع: بانک
                    drpInsertBankID.Enabled = True
                End If
                If rblInsertType.Items(2).Selected Then 'نوع: معمولی
                    drpInsertBankID.Enabled = False
                End If

            Catch ex As Exception
            End Try
            '/********************* image  ****************/
            lblPic.Text = classAd.SelectRow_Advertisement(Id).Item("PicFile")
            Image.ImageUrl = "~\management\images\" + classAd.SelectRow_Advertisement(Id).Item("PicFile")

        End If


    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click

        '/********************* CraeteDate and ExpireDate ****************/
        Dim DateCreate As String = getShamsiToMiladiComplete(txtInsertDate.Text, lblTimeCraete.Text)
        Dim DateExpire As String = getShamsiToMiladiComplete(txtInsertDateExpire.Text, lblTimeExpire.Text)

        '/********************* Show ****************/
        Dim rShow As Boolean
        If rblInsertShow.Items(0).Selected Then rShow = True
        If rblInsertShow.Items(1).Selected Then rShow = False
        '/********************* Sex ****************/
        Dim rSex As Byte
        If rblInsertSex.Items(0).Selected Then rSex = 0
        If rblInsertSex.Items(1).Selected Then rSex = 1
        If rblInsertSex.Items(2).Selected Then rSex = 2
        '/********************* general ****************/

        If rblInsertType.Items(0).Selected Then 'نوع: سراسری - ویژه - 
            classAd.Update_Advertisement_Null(txtInsertTitle.Text.Trim(), DateCreate, ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                    DateExpire, rShow, txtInsertVisit.Text, txtInsertText.Text, rSex, True, Request.QueryString("ID"), txtInsertLid.Text)
        End If
        If rblInsertType.Items(1).Selected Then 'نوع: بانک
            classAd.Update_Advertisement(txtInsertTitle.Text.Trim(), DateCreate, ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                     DateExpire, rShow, txtInsertVisit.Text, txtInsertText.Text, rSex, True, _
                                     drpInsertBankID.SelectedValue, Request.QueryString("ID"), txtInsertLid.Text)
        End If
        If rblInsertType.Items(2).Selected Then 'نوع: معمولی
            classAd.Update_Advertisement_Null(txtInsertTitle.Text.Trim(), DateCreate, ReplaceNumberFromFaToEn(txtInsertEmail.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertWebsite.Text).Trim(), ReplaceNumberFromFaToEn(txtInsertTell.Text).Trim(), txtInsertAddress.Text, _
                                     DateExpire, rShow, txtInsertVisit.Text, txtInsertText.Text, rSex, False, Request.QueryString("ID"), txtInsertLid.Text)
        End If



    End Sub


    Private Function getShamsiToMiladiComplete(ByVal d As String, ByVal t As String) As DateTime
        'Return ShamsiDate.Shamsi2Miladi(d, Now.TimeOfDay.ToString.Substring(0, 9))
        Return ShamsiDate.Shamsi2Miladi(d.Trim, t.Trim)
    End Function

    Public Sub DeleteState(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classState.Delete_Advertisement_State(s(0), s(1))
        DL_States.DataBind()
    End Sub

    Public Sub DeleteFields(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classField.Delete_Advertisement_Field(s(0), s(1))
        DL_Fields.DataBind()
    End Sub

    Public Sub DeleteDegree(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim s() As String = e.CommandArgument.ToString().Split("|")
        classDegree.Delete_Advertisement_Degree(s(0), s(1))
        DL_Degree.DataBind()
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

    Protected Sub btnFields_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFields.Click
        classField.Insret_Advertisement_Field(Request.QueryString("id"), drpFiled.SelectedValue)
        DL_Fields.DataBind()
    End Sub

    Protected Sub btnState_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnState.Click

        'اگر سراسری انتخاب شود در جدول زیر عدد آیدی سراسری بر اساس فیلد پرنت آیدی منفی یک ، ریخته میشود
        'tbl_Advertisement_State
        If rbSelectTyoeState.Items(0).Selected Then 'سراسری
            classState.Insret_Advertisement_State(Request.QueryString("id"), classState.Get_ID_State_General)
        End If
        'اگر
        If rbSelectTyoeState.Items(1).Selected Then 'فقط استان
            classState.Insret_Advertisement_State(Request.QueryString("id"), drpState.SelectedValue)
        End If
        If rbSelectTyoeState.Items(2).Selected Then 'فقط شهر
            classState.Insret_Advertisement_State(Request.QueryString("id"), drpCity.SelectedValue)
        End If
        DL_States.DataBind()

    End Sub

    Protected Sub btnDegree_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDegree.Click
        classDegree.Insret_Advertisement_Degree(Request.QueryString("id"), drpDegree.SelectedValue)
        DL_Degree.DataBind()
    End Sub

    Protected Sub btnUpdatePhoto_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdatePhoto.Click

        '/********************* Picture ****************/
        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As System.IO.FileInfo
        Dim FilePic As String = ""
        If FileUpload.FileName <> "" Then
            FileInfo = New System.IO.FileInfo(FileUpload.FileName)
            FileUpload.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
            FilePic = Filename + FileInfo.Extension
        End If
        '-- update dataabse
        classAd.Update_Advertisement_Picture(FilePic, Request.QueryString("id"))
        '-- show
        Image.ImageUrl = "~\management\images\" + classAd.SelectRow_Advertisement(Request.QueryString("id")).Item("PicFile")

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

    End Sub

    Protected Sub rblInsertType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblInsertType.SelectedIndexChanged
        If rblInsertType.Items(0).Selected Then drpInsertBankID.Enabled = False
        If rblInsertType.Items(1).Selected Then drpInsertBankID.Enabled = True
        If rblInsertType.Items(2).Selected Then drpInsertBankID.Enabled = False
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
