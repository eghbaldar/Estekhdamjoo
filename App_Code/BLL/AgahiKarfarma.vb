Imports Microsoft.VisualBasic
Imports System.Data

Public Class AgahiKarfarma

    Dim DS_Agahi As New DS_AgahiKarfarmaTableAdapters.CMS_Select_Poster_AllTableAdapter

    Public Function Select_Agahi() As DataTable
        Return DS_Agahi.GetData()
    End Function

    Public Function Insret_Agahi(ByVal Title As String, ByVal Mail As String, ByVal Website As String, ByVal tel As String, ByVal Address As String, _
                                 ByVal Expiry_Date As String, ByVal Text As String _
                                 , ByVal Description As String, ByVal AttachFile As String) As Boolean
        Return DS_Agahi.Main_Insert_Poster(Title, Now, Mail, Website, tel, Address, Expiry_Date, False, Text, Description, AttachFile, "")
    End Function

    Public Function Delete_Agahi(ByVal id As Integer) As Boolean
        Return DS_Agahi.CMS_Delete_Poster(id)
    End Function

    Public Function Update_Agahi(ByVal show As Boolean, ByVal id As Integer) As Boolean
        Return DS_Agahi.CMS_Update_poster_Show(show, id)
    End Function

    Public Function SelectRow_Agahi(ByVal id As Integer) As DataRow
        Return DS_Agahi.CMS_Select_Poster_ByID(id)
    End Function

End Class
