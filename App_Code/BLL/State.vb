Imports Microsoft.VisualBasic
Imports System.Data

Public Class State

    Dim DS_State As New DS_StateTableAdapters.CMS_Select_State_AllTableAdapter
    Dim DS_Query As New DS_StateTableAdapters.Query
    Dim DS_StateByCode As New DS_StateTableAdapters.Select_Advertisement_state_Name_TableAdapter


    Public Function Select_Advertisement_State() As DataTable
        Return DS_State.GetData
    End Function

    Public Function Insret_Advertisement_State(ByVal AdvertisementId As Long, ByVal StateId As Integer) As Boolean
        Return DS_State.Insert_Advertisement_State(AdvertisementId, StateId)
    End Function

    Public Function Delete_Advertisement_State(ByVal AdvertisementId As Long, ByVal StateId As Integer) As Boolean
        Return DS_State.Delete_Advertisement_State(AdvertisementId, StateId)
    End Function

    Public Function Update_Advertisement_State(ByVal AdvertisementId As Long, ByVal StateId As Integer) As Boolean
        Return DS_State.Update_Advertisement_State(AdvertisementId, StateId)
    End Function

    Public Function Get_ID_State_General() As String
        Return DS_Query.Get_ID_State_General
    End Function

    Public Function Select_Advertisement_Category_State(ByVal id As Long) As String
        If DS_StateByCode.GetData(id).Rows.Count > 0 Then
            Dim res As String = "محل استخدام: "
            For i As Byte = 0 To DS_StateByCode.GetData(id).Rows.Count - 1
                res += "<a target='_blank' class='acnhorList' href='" + "../" + _
                        DS_StateByCode.GetData(id).Rows(i)(0).ToString + "/محل-استخدام/استخدام" + "'>" + DS_StateByCode.GetData(id).Rows(i)(1).ToString + "</a>" + " , "
            Next
            Return res.Substring(0, res.Length - 2)
        Else
            Return "محل استخدام : محدودیتی وجود ندارد"
        End If
    End Function

    Public Function GetnameById(ByVal ID As Long) As String
        Return DS_Query.Get_Select_state(ID)
    End Function

End Class
