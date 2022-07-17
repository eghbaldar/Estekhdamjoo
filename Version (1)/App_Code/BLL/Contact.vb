Imports Microsoft.VisualBasic
Imports System.Data

Public Class Contact

    Dim DS_Contact As New DS_ContactTableAdapters.Select_Contact_AllTableAdapter

    Public Function Select_contact() As DataTable
        Return DS_Contact.GetData
    End Function

    Public Function Insret_contact(ByVal FnLn As String, ByVal email As String, _
                                 ByVal tell As String, ByVal Group As String, ByVal cuase As String, ByVal ip As String) As Boolean
        Try
            DS_Contact.Main_Insert_Contact(FnLn, email, tell, Group, cuase, 0, ip, Now, 0)

            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function Delete_contact(ByVal id As Long) As Boolean
        Return DS_Contact.CMS_Delete_Contact(id)
    End Function

    Public Function Update_contact(ByVal flag As Boolean, ByVal id As Long) As Boolean
        Return DS_Contact.CMS_Update_Contact_Flag(flag, id)
    End Function

End Class
