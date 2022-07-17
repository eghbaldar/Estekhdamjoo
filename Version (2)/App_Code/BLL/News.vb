Imports Microsoft.VisualBasic
Imports System.Data

Public Class News

    Dim DS_News As New DS_newsTableAdapters.Main_Select_News_TitleTableAdapter
    Dim DS_NewsDetail As New DS_newsTableAdapters.Main_Select_News_AllTableAdapter

    Public Function Select_E_News() As DataTable
        Return DS_News.GetData
    End Function

    Public Function Insret_E_News(ByVal Title As String, ByVal date_ As String, ByVal show As Boolean, ByVal text As String, ByVal PicFile As String, ByVal abstract As String) As Boolean
        Return DS_News.insertNews(Title, date_, show, 0, text, PicFile, Abstract)
        Return True
    End Function

    Public Function Delete_E_News(ByVal id As Long) As Boolean
        DS_News.deleteNews(id)
        Return True
    End Function

    Public Function Update_E_News(ByVal Title As String, ByVal date_ As String, ByVal show As Boolean, ByVal visit As Integer, _
                                  ByVal text As String, ByVal id As Long, ByVal PicFile As String, ByVal Abstract As String) As Boolean
        Return DS_News.updateNews(Title, date_, show, visit, text, id, PicFile, Abstract)
    End Function

    Public Function SelectRow_E_News(ByVal id As Long) As DataRow
        Return DS_NewsDetail.GetData(id).Rows(0)
    End Function
   

End Class
