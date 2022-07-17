Imports Microsoft.VisualBasic

Public Class Degree

    Dim DS_Degree As New DegreeTableAdapters.Query
    Dim DS_DegreeByCode As New DegreeTableAdapters.Select_Advertisement_Degree_All_TableAdapter

    Public Function Insret_Advertisement_Degree(ByVal AdvertisementId As Long, ByVal DegreeID As Integer) As Boolean
        Return DS_Degree.Insert_Advertisement_Degree(AdvertisementId, DegreeID)
    End Function

    Public Function Delete_Advertisement_Degree(ByVal AdvertisementId As Long, ByVal DegreeID As Integer) As Boolean
        Return DS_Degree.Delete_Advertisement_Degree(AdvertisementId, DegreeID)
    End Function

    Public Function Update_Advertisement_Degree(ByVal AdvertisementId As Long, ByVal DegreeID As Integer) As Boolean
        Return DS_Degree.Update_Advertisement_Degree(AdvertisementId, DegreeID)
    End Function

    Public Function Select_Advertisement_Category_Degree(ByVal id As Long) As String

        If DS_DegreeByCode.GetData(id).Rows.Count > 0 Then
            Dim res As String = "مقطع تحصیلی: "
            For i As Byte = 0 To DS_DegreeByCode.GetData(id).Rows.Count - 1
                res += "<a target='_blank' class='acnhorList' href='" + "../" + _
                    getTitleDegree(DS_DegreeByCode.GetData(id).Rows(i)(1).ToString) + "/مقطع-تحصیلی/استخدام" + "'>" + getTitleDegree(DS_DegreeByCode.GetData(id).Rows(i)(1).ToString) + "</a>" + " , "
            Next
            Return res.Substring(0, res.Length - 2)
        Else
            Return "مقطع تحصیلی : محدودیتی وجود ندارد"
        End If

    End Function

    Private Function getTitleDegree(ByVal DegreeID As Object) As String

        Select Case Val(DegreeID)
            Case 6
                Return "دکتری"
            Case 5
                Return "فوق لیسانس"
            Case 4
                Return "لیسانس"
            Case 3
                Return "فوق دیپلم"
            Case 2
                Return "دیپلم"
            Case 1
                Return "زیر دیپلم"
            Case 0
                Return "دانشجو"
        End Select

    End Function


End Class
