Imports Microsoft.VisualBasic
Imports System.Data
Public Class Question
    Dim DS_Question As New DS_QuestionTableAdapters.CMS_Select_Question_AllTableAdapter
    Dim DS_Question_Category As New DS_QuestionTableAdapters.CMS_Select_Question_Category_AllTableAdapter
    Dim DS_Question_Bought As New DS_QuestionTableAdapters.Main_Select_Question_BoughtTableAdapter
    Dim DS_Question_DownloadLink As New DS_QuestionTableAdapters.Main_Select_Question_DownloadLinkeTableAdapter

    Public Function Insret_Question(ByVal Title As String, ByVal date_ As String, ByVal show As Boolean, ByVal text As String, ByVal price As Integer, ByVal download_link As String, _
                               ByVal size As String, ByVal file_type As String, ByVal picfile As String, ByVal categoryid As Integer, _
                                  ByVal showbox As Boolean) As Boolean
        Return DS_Question.Insert_Question(Title, date_, show, text, price, download_link, size, file_type, picfile, categoryid, 0, showbox)
        Return True
    End Function

    Public Function Insret_Question_Category(ByVal Title As String) As Boolean
        Return DS_Question_Category.Insert_Question_Category(Title)
        Return True
    End Function

    Public Function Delete_Question_Category(ByVal id As Integer) As Boolean
        DS_Question_Category.Delete_Question_Category(id)
        Return True
    End Function

    Public Function Update_Question_Category(ByVal Title As String, ByVal id As Integer) As Boolean
        Return DS_Question_Category.Update_Question_Category(Title, id)
    End Function

    Public Function SelectRow_Question_Category(ByVal id As Integer) As DataRow
        Return DS_Question_Category.GetDataBy3(id).Rows(0)
    End Function

    Public Function Delete_Question(ByVal id As Integer) As Boolean
        DS_Question.Delete_Question(id)
        Return True
    End Function

    Public Function SelectRow_Question_Bought(ByVal id As Integer) As DataRow
        Return DS_Question_Bought.GetData(id).Rows(0)
    End Function



    Public Function SelectRow_Question_DownloadLink(ByVal id As Integer) As DataRow
        Return DS_Question_DownloadLink.GetData(id).Rows(0)
    End Function
End Class
