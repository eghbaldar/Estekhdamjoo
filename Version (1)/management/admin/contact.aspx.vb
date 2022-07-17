
Partial Class management_admin_contact
    Inherits System.Web.UI.Page


    Dim classContact As New Contact

    Public Sub UpdateOK(ByVal sender As Object, ByVal e As CommandEventArgs)
        classContact.Update_contact(True, e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub

    Public Sub UpdateNOK(ByVal sender As Object, ByVal e As CommandEventArgs)
        classContact.Update_contact(False, e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub

    Public Sub Delete(ByVal sender As Object, ByVal e As CommandEventArgs)
        classContact.Delete_contact(e.CommandArgument)
        DG_SHOW.DataBind()
    End Sub


End Class
