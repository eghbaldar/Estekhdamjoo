Imports Microsoft.VisualBasic
Imports System.Data

Public Class Advertisement

    Dim Query As New DS_AdvertisementTableAdapters.Query
    Dim DS_Advertiesmnet_Row As New DS_AdvertisementTableAdapters.CMS_Select_Advertisement_ByIDTableAdapter
    Dim DS_NewsDetail As New DS_newsTableAdapters.Main_Select_News_AllTableAdapter
    Dim DS_FamousDetail As New DS_FamousTableAdapters.Main_Select_Famous_AllTableAdapter
    Public Function Insret_Advertisement(ByVal Title As String, ByVal Create_Date As String, ByVal Mail As String, ByVal Website As String, ByVal tel As String, _
                                         ByVal address As String, ByVal Expiry_Date As String, ByVal show As String, ByVal Visit As String, ByVal Text As String, _
                                         ByVal sex As Byte, ByVal general As Boolean, ByVal BankId As Integer, ByVal PicFile As String, ByVal Abstract As String) As Boolean
        Return Query.CMS_Insert_Advertisement(Title, Create_Date, Mail, Website, tel, address, Expiry_Date, show, Visit, Text, sex, general, BankId, PicFile, Abstract)
    End Function

    Public Function Insret_Advertisement_Null(ByVal Title As String, ByVal Create_Date As String, ByVal Mail As String, ByVal Website As String, ByVal tel As String, _
                                       ByVal address As String, ByVal Expiry_Date As String, ByVal show As String, ByVal Visit As String, ByVal Text As String, _
                                       ByVal sex As Byte, ByVal general As Boolean, ByVal PicFile As String, ByVal Abstract As String) As Boolean
        Return Query.CMS_Insert_Advertisement_Null(Title, Create_Date, Mail, Website, tel, address, Expiry_Date, show, Visit, Text, sex, general, PicFile, Abstract)
    End Function

    Public Function Delete_Advertisement(ByVal id As Long) As Boolean
        Return Query.CMS_Delete_Advertisement(id)
    End Function

    Public Function Update_Advertisement(ByVal Title As String, ByVal Create_Date As String, ByVal Mail As String, ByVal Website As String, ByVal tel As String, _
                                         ByVal address As String, ByVal Expiry_Date As String, ByVal show As String, ByVal Visit As String, ByVal Text As String, _
                                         ByVal sex As Byte, ByVal general As Boolean, ByVal BankId As Integer, ByVal id As Long, ByVal Abstract As String) As Boolean
        Return Query.CMS_Update_Advertisement(Title, Create_Date, Mail, Website, tel, address, Expiry_Date, show, Visit, Text, sex, general, BankId, id, Abstract)
    End Function

    Public Function Update_Advertisement_Null(ByVal Title As String, ByVal Create_Date As String, ByVal Mail As String, ByVal Website As String, ByVal tel As String, _
                                     ByVal address As String, ByVal Expiry_Date As String, ByVal show As String, ByVal Visit As String, ByVal Text As String, _
                                     ByVal sex As Byte, ByVal general As Boolean, ByVal id As Long, ByVal Abstract As String) As Boolean
        Return Query.CMS_Update_Advertisement_Null(Title, Create_Date, Mail, Website, tel, address, Expiry_Date, show, Visit, Text, sex, general, id, Abstract)
    End Function

    Public Function Update_Advertisement_Picture(ByVal PicFile As String, ByVal id As Long) As Boolean
        Return Query.CMS_Update_Advertisement_Picture(PicFile, id)
    End Function

    Public Function SelectRow_Advertisement(ByVal id As Long) As DataRow
        Return DS_Advertiesmnet_Row.GetData(id).Rows(0)
    End Function

    Public Function Main_Update_News_Visit(ByVal id As Long) As Boolean
        Return Query.Main_Update_News_Visit(id)
    End Function
    Public Function Main_Update_Famous_Visit(ByVal id As Long) As Boolean
        Return Query.Main_Update_Famous_Visit(id)
    End Function
    Public Function Select_Advertisement_Bank_Exist(ByVal id As Long) As Boolean
        Return Query.CMS_select_Advertisement_Bank_Exist(id)
        'Return 1 ---> BankID is full
        'Return 1 ---> BankID is empty
    End Function

    Public Function Main_Update_Advertisement_Visit(ByVal id As Long) As Boolean
        Return Query.Main_Update_Advertisement_Visit(id)
    End Function


    Public Function SelectTitleAdvertisment(ByVal id As Long) As String
        Return DS_Advertiesmnet_Row.GetData(id).Rows(0)(1).ToString()
    End Function
    Public Function SelectTitleNews(ByVal id As Long) As String
        Return DS_NewsDetail.GetData(id).Rows(0)(1).ToString()
    End Function
    Public Function SelectTitleFamous(ByVal id As Long) As String
        Return DS_FamousDetail.GetData(id).Rows(0)(1).ToString()
    End Function
End Class
