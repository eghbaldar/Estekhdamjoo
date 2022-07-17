
Partial Class estekhdami_contact_Default
    Inherits System.Web.UI.Page

    Dim ClassContact As New Contact



    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Try
            If txtCuase.Text <> "" And txtTell.Text <> "" And txtFnLn.Text <> "" And txtEmail.Text <> "" Then
                ClassContact.Insret_contact(txtFnLn.Text, txtEmail.Text, txtTell.Text, cmbGroup.Text, txtCuase.Text, Request.UserHostAddress)
                MultiView1.ActiveViewIndex = 1
            Else
                lblWrong.Text = "تمامی مشخصات باید پر شوند."
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "تماس با ما" + " | استخدام جو "
    End Sub
End Class
