
Partial Class _Default
    Inherits System.Web.UI.Page

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.ShortDate)
    End Function

    'Protected Sub ContactsDataPager_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles ContactsDataPager.PreRender

    '    'For Each ctrl As Control In ContactsDataPager.Controls
    '    '    For Each c As Control In ctrl.Controls
    '    '        If TypeOf (c) Is HyperLink Then
    '    '            Dim hl As HyperLink = DirectCast(c, HyperLink)
    '    '            Dim PageId As String = hl.NavigateUrl.Split("=")(1).Trim()
    '    '            hl.NavigateUrl = Page.GetRouteUrl("PostPaging", New With {.PageId = PageId})
    '    '        End If
    '    '    Next
    '    'Next

    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tag As HtmlMeta = New HtmlMeta()
        tag.Name = "description"
        tag.Content = "آگهی استخدام های کل کشور , استخدام در همه رشته ها, اطلاع از آگهی استخدام بانک ها ، ثبت رزومه کاری, آزمون استخدامی"
        Header.Controls.Add(tag)

        'Dim PageId As Integer = 0

        'If IsNumeric(Page.RouteData.Values("PageID")) Then

        '    Integer.TryParse((Page.RouteData.Values("PageID")), PageId)

        '    PageId = PageId - 1

        '    If PageId = -1 Then PageId = 0

        'End If

        'ContactsDataPager.SetPageProperties(PageId * 15, ContactsDataPager.MaximumRows, False)
    End Sub
End Class
