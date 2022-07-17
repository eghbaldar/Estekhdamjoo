
Partial Class management_admin_QuestionList
    Inherits System.Web.UI.Page
    Dim classQ As New Question
    Public Sub DeleteQuestion(ByVal sender As Object, ByVal e As CommandEventArgs)
        classQ.Delete_Question(Val(e.CommandArgument))
        dgShow.DataBind()
    End Sub
End Class
