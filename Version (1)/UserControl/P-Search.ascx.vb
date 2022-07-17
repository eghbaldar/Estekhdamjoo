
Partial Class UserControl_P_Search
    Inherits System.Web.UI.UserControl

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Session.Remove("drpdegree")
        Session.Remove("drpField")
        Session.Remove("drpStat")
        If drpdegree.Text = "انتخاب کنید" Then
            Session("drpdegree") = "-1"
        ElseIf drpdegree.Text <> "انتخاب کنید" Then
            Session("drpdegree") = drpdegree.SelectedValue
        End If
        If drpFiled.Text = "انتخاب کنید" Then
            Session("drpField") = "-1"
        ElseIf drpFiled.Text <> "انتخاب کنید" Then

            Session("drpField") = drpFiled.SelectedValue
        End If
        If drpState.Text = "انتخاب کنید" Then
            Session("drpStat") = "-1"
        ElseIf drpState.Text <> "انتخاب کنید" Then
            Session("drpStat") = drpState.SelectedValue
        End If






        If drpdegree.Text <> "انتخاب کنید" Or drpFiled.Text <> "انتخاب کنید" Or drpState.Text <> "انتخاب کنید" Then
            ' Response.Redirect("~/" + Session("drpdegree") + Session("drpField") + Session("drpStat"))
            Response.Redirect(String.Format("~/search.aspx?tx={0}", "جستجو"))
        ElseIf drpdegree.Text = "انتخاب کنید" And drpFiled.Text = "انتخاب کنید" And drpState.Text = "انتخاب کنید" Then
            Response.Redirect("~/")
        End If

    End Sub
End Class
