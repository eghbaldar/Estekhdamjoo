Imports Microsoft.VisualBasic
Imports System.Data

Public Class Fields

    Dim DS_Fields As New DS_FieldTableAdapters.CMS_Select_Field_AllTableAdapter
    Dim DS_FieldByCode As New DS_FieldTableAdapters.Select_Advertisement_Field_All_TableAdapter

    Public Function Select_Advertisement_Field() As DataTable
        Return DS_Fields.GetData
    End Function

    Public Function Insret_Advertisement_Field(ByVal AdvertisementId As Long, ByVal FieldId As Integer) As Boolean
        Return DS_Fields.Insert_Advertisement_Field(AdvertisementId, FieldId)
    End Function

    Public Function Delete_Advertisement_Field(ByVal AdvertisementId As Long, ByVal FieldId As Integer) As Boolean
        Return DS_Fields.Delete_Advertisement_Field(AdvertisementId, FieldId)
    End Function

    Public Function Update_Advertisement_Field(ByVal AdvertisementId As Long, ByVal FieldId As Integer) As Boolean
        Return DS_Fields.Update_Advertisement_Field(AdvertisementId, FieldId)
    End Function

   

    Public Function Select_Advertisement_Category_Filed(ByVal id As Long) As String
        If DS_FieldByCode.GetData(id).Rows.Count > 0 Then
            Dim res As String = "تخصص و رشته تحصیلی: "
            For i As Byte = 0 To DS_FieldByCode.GetData(id).Rows.Count - 1
                res += "<a target='_blank' class='acnhorList' href='" + "../" + DS_FieldByCode.GetData(id).Rows(i)(2).ToString.Replace(" ", "-") + "/تخصص-و-رشته-تحصیلی/استخدام" + "'>" + DS_FieldByCode.GetData(id).Rows(i)(2).ToString + "</a>" + " , "
            Next
            Return res.Substring(0, res.Length - 2)
        Else
            Return "تخصص و رشته تحصیلی : محدودیتی وجود ندارد"
        End If

    End Function

End Class
