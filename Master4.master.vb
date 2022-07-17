
Partial Class Master4
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblDate.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)
    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSearch.Click
        If txtSearch.Text.Trim() <> "" Then
            Response.Redirect(String.Format("~/search.aspx?tx={0}", txtSearch.Text))
        End If
    End Sub
End Class

