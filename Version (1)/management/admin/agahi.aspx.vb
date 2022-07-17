
Partial Class management_admin_agahi
    Inherits System.Web.UI.Page

    Dim classAgahi As New AgahiKarfarma

    Public Sub UpdateOK(ByVal sender As Object, ByVal e As CommandEventArgs)
        classAgahi.Update_Agahi(True, e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub

    Public Sub UpdateNOK(ByVal sender As Object, ByVal e As CommandEventArgs)
        classAgahi.Update_Agahi(False, e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub

    Public Sub Delete(ByVal sender As Object, ByVal e As CommandEventArgs)
        classAgahi.Delete_Agahi(e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub


End Class
