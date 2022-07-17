
Partial Class management_admin_questionCategory
    Inherits System.Web.UI.Page
    Dim classQ As New Question

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "دسته نمونه سوالات"

    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

        classQ.Insret_Question_Category(txtTitle.Text.Trim())
        dg.DataBind()
        txtTitle.Text = ""

    End Sub

    Public Sub Delete_Question_Category(ByVal sender As Object, ByVal e As CommandEventArgs)
        classQ.Delete_Question_Category(Val(e.CommandArgument))
        dg.DataBind()
    End Sub

    Public Sub Update_Question_Category(ByVal sender As Object, ByVal e As CommandEventArgs)

        id.Text = classQ.SelectRow_Question_Category(Val(e.CommandArgument))("id")
        txtTitle.Text = classQ.SelectRow_Question_Category(Val(e.CommandArgument))("title")
        btnInsert.Visible = False
        btnEdit.Visible = True

    End Sub

    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click

        classQ.Update_Question_Category(txtTitle.Text.Trim(), Convert.ToInt32(id.Text))
    
        txtTitle.Text = ""
        dg.DataBind()
        btnEdit.Visible = False
        btnInsert.Visible = True

    End Sub

   
End Class
