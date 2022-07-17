
Partial Class post
    Inherits System.Web.UI.Page

    Dim ClassAd As New Advertisement

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim PostID As Integer
       
            '------------------------------ Comment
            PostID = Convert.ToInt32(Page.RouteData.Values("code").ToString())
            ucComments1.PostID = PostID
            ucComments1.ShowComment = True
            ucComments1.ShowContent()
            If Not IsPostBack Then ClassAd.Main_Update_Advertisement_Visit(Convert.ToInt64(Page.RouteData.Values("code").ToString()))
            Title = ClassAd.SelectTitleAdvertisment(Convert.ToInt32(Page.RouteData.Values("code"))).ToString() + " | استخدام جو "
            Dim tag As HtmlMeta = New HtmlMeta()
            tag.Name = "description"
            tag.Content = ClassAd.SelectTitleAdvertisment(Convert.ToInt32(Page.RouteData.Values("code"))).ToString()
            Header.Controls.Add(tag)
    End Sub

    Public Function getSex(ByVal Sex As Object) As String

        Select Case Val(Sex)
            Case 0
                Return "مرد"
            Case 1
                Return "زن"
            Case 2
                Return "مهم نیست"

        End Select

    End Function

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.LongDate)
    End Function

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

    Dim ClassState As New State
    Public Function SetState(ByVal stateId As Object) As String
        Return ClassState.Select_Advertisement_Category_State(Val(stateId))
    End Function

    Dim ClassField As New Fields
    Public Function SetField(ByVal FieldId As Object) As String
        Return ClassField.Select_Advertisement_Category_Filed(Val(FieldId))
    End Function

    Dim ClassDegree As New Degree
    Public Function SetDegree(ByVal DegreeId As Object) As String
        Return ClassDegree.Select_Advertisement_Category_Degree(Val(DegreeId))
    End Function

End Class
