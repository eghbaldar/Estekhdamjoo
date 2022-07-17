Imports Microsoft.VisualBasic

Public Class Transaction


    Dim DS_Transaction As New DS_TransactionTableAdapters.CMS_Select_TransactionTableAdapter

    Dim DS_Transaction_Row As New DS_TransactionTableAdapters.QueriesTableAdapter
    Public Function Insert_Transaction(ByVal QuestionId As Integer, ByVal IP As String, ByVal State As Boolean, _
                             ByVal TransId As String, ByVal PayId As String, ByVal Price As String) As Boolean
        Return DS_Transaction.Insert_Transaction(QuestionId, Now, IP, State, TransId, PayId, Price)
        Return True
    End Function


    Public Function Update_Transaction_State(ByVal PayId As String, ByVal TransId As String) As Boolean
        Return DS_Transaction.Update_Transaction_State(PayId, TransId)
        Return True
    End Function


    Public Function SelectRow_Transaction_QuestionID(ByVal payid As String) As Integer
        Return DS_Transaction_Row.Main_Select_Transaction_QuestionId(payid)
    End Function
End Class
