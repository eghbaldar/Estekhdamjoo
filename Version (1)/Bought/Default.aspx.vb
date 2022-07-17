
Partial Class Bought_Default

    Inherits System.Web.UI.Page
    Dim ClassT As New Transaction
    Dim ClassQ As New Question
    Function Verfiy(ByVal trans_id As String, ByVal id_get As String) As Boolean

        Try

            If Val(trans_id) = -1 Then
                Return False
            ElseIf Val(trans_id) > 0 Then
                Dim payline As New PayLine()
                Dim result As String = payline.Get("http://payline.ir/payment/gateway-result-second", _
                                               "efdc2-5eb7e-c9d12-4cfd9-a3638900a47d9b40857341d08a32", _
                                              trans_id, _
                                              id_get)
                Select Case Val(result)
                    Case Is < 0
                        Return False
                    Case Is > 0
                        Return True
                End Select
            End If

        Catch ex As Exception
            Return False
        End Try

    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "نتیجه تراکنش" + " | استخدام جو "

        Try


            Select Case Verfiy(Request.Form("trans_id"), Request.Form("id_get"))

                Case True 'Success 


                    ClassT.Update_Transaction_State(Request.Form("id_get"), Request.Form("trans_id"))
                    lbl_code.Text = Request.Form("trans_id").ToString()
                    Dim questionId As Integer = ClassT.SelectRow_Transaction_QuestionID(Request.Form("id_get"))
                    Dim title As String = ClassQ.SelectRow_Question_DownloadLink(questionId)(0)
                    Dim DownloadLink As String = ClassQ.SelectRow_Question_DownloadLink(questionId)(1)
                    lbl_title.Text = title
                    Dim a As String = "<a  Style='color: #0050D4' href=http://www.estekhdamjoo.ir/management/files/" + DownloadLink + ">" + title + "</a>"

                    lbl_dl.Text = a

                    MultiView1.ActiveViewIndex = 0
                    ' lbl_title.Text = title + Request.Form("trans_id").ToString() + "   " + Request.Form("id_get").ToString()




                Case False 'Failure
                    MultiView1.ActiveViewIndex = 1



            End Select

        Catch ex As Exception
        End Try
    End Sub
End Class
