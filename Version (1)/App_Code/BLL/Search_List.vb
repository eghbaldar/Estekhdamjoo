Imports Microsoft.VisualBasic
Imports System.Data

Public Class Search_List


    Dim DS_PSearch As New DS_Search_ListTableAdapters.Main_Select_Advertisement_PSearch_List_TableAdapter

    Public Function Search(ByVal StateId As Integer, ByVal FieldId As Integer, ByVal DegreeId As Integer) As DataRow
        Return DS_PSearch.GetData(DegreeId, StateId, FieldId).Rows(0)
    End Function

End Class
