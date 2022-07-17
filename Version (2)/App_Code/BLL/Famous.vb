Imports Microsoft.VisualBasic
Imports System.Data
Public Class Famous

    Dim DS_Famous As New DS_FamousTableAdapters.Main_Select_Famous_TitleTableAdapter
    Dim DS_FamousDetail As New DS_FamousTableAdapters.Main_Select_Famous_AllTableAdapter

    Public Function Select_E_Famous() As DataTable
        Return DS_Famous.GetData
    End Function

    Public Function SelectRow_E_Famous(ByVal id As Long) As DataRow
        Return DS_FamousDetail.GetData(id).Rows(0)
    End Function

    Public Function Insret_E_Famous(ByVal Title As String, ByVal date_ As String, ByVal show As Boolean, ByVal text As String, ByVal PicFile As String, ByVal abstract As String) As Boolean
        Return DS_FamousDetail.insertFamous(Title, date_, show, 0, text, PicFile, abstract, "مدیرسایت")
        Return True
    End Function

    Public Function Delete_E_Famous(ByVal id As Long) As Boolean
        DS_FamousDetail.deleteFamous(id)
        Return True
    End Function

    Public Function Update_E_Famous(ByVal Title As String, ByVal date_ As String, ByVal show As Boolean, ByVal visit As Integer, _
                                  ByVal text As String, ByVal id As Long, ByVal PicFile As String, ByVal Abstract As String) As Boolean
        Return DS_FamousDetail.updateFamous(Title, date_, show, visit, text, id, PicFile, Abstract, "مدیرسایت")
    End Function

   
End Class
