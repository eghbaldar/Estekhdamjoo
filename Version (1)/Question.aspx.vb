
Partial Class Question_Question
    Inherits System.Web.UI.Page
    Dim ClassAd As New Advertisement
    Dim classQ As New Question
    Dim ClassT As New Transaction
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim PostID As Integer

        ''------------------------------ Comment
        PostID = Convert.ToInt32(Page.RouteData.Values("id").ToString())
      
        'If Not IsPostBack Then ClassAd.Main_Update_Advertisement_Visit(Convert.ToInt64(Page.RouteData.Values("code").ToString()))
        'Title = ClassAd.SelectTitleAdvertisment(Convert.ToInt32(Page.RouteData.Values("code"))).ToString() + " | استخدام جو "
        'Dim tag As HtmlMeta = New HtmlMeta()
        'tag.Name = "description"
        'tag.Content = ClassAd.SelectTitleAdvertisment(Convert.ToInt32(Page.RouteData.Values("code"))).ToString()
        'Header.Controls.Add(tag)
    End Sub

    

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.LongDate)
    End Function

    Public Sub buymoney(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim price As Integer
        price = classQ.SelectRow_Question_Bought(Val(e.CommandArgument))("Price")
        

        Dim payline As New PayLine()
        Dim result As String = payline.Send("http://payline.ir/payment/gateway-send", _
                                            "efdc2-5eb7e-c9d12-4cfd9-a3638900a47d9b40857341d08a32", _
                                           price * 10, _
                                            "http%3A%2F%2Festekhdamjoo.ir%2Fbought%2F")

        ClassT.Insert_Transaction(Val(e.CommandArgument), Request.UserHostAddress, False, "", Val(result), price)


        If Val(result) > 0 Then

            Response.Redirect("http://payline.ir/payment/gateway-" + result)
        End If
        '    '''''''''''''''''''''''''''''''''''''''''''''''''''''''
    End Sub

End Class
