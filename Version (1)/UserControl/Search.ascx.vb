
Partial Class UserControl_Search
    Inherits System.Web.UI.UserControl

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSearch.Click
        If txtSearch.Text.Trim() <> "" Then
            Response.Redirect(String.Format("~/search.aspx?tx={0}", txtSearch.Text))
        End If
    End Sub

 
End Class
