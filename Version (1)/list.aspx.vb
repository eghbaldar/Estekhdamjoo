
Partial Class list
    Inherits System.Web.UI.Page

    Dim ClassState As New State

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tag As HtmlMeta = New HtmlMeta()
        tag.Name = "description"


        Try
            Select Case Page.RouteData.Values("SubName").ToString().Trim

                Case "محل-استخدام"

                    MultiView.ActiveViewIndex = 0
                    Dim str As String = ClassState.GetnameById(Page.RouteData.Values("Name").ToString().Replace(".html", Nothing))
                    lbltitle.Text = String.Format("استخدام  > محل استخدام  > {0}", ClassState.GetnameById(Page.RouteData.Values("Name").ToString().Replace(".html", Nothing)))
                    Title = "استخدام در استان " + str + " | استخدام جو "
                    tag.Content = "استخدام در استان " + str + " - استخدام جو "
                Case "تخصص-و-رشته-تحصیلی"
                    MultiView.ActiveViewIndex = 1
                    lbltitle.Text = String.Format("استخدام  > تخصص و رشته تحصیلی  > {0}", Page.RouteData.Values("Name").ToString().Replace("-", " "))
                    Title = "استخدام " + Page.RouteData.Values("Name").ToString().Replace("-", " ") + " | استخدام جو "
                    tag.Content = "استخدام " + Page.RouteData.Values("Name").ToString().Replace("-", " ") + " - استخدام جو "
                Case "مشاغل-عمومی"
                    MultiView.ActiveViewIndex = 1
                    lbltitle.Text = String.Format("استخدام  > مشاغل عمومی  > {0}", Page.RouteData.Values("Name").ToString().Replace("-", " "))
                    Title = "استخدام " + Page.RouteData.Values("Name").ToString().Replace("-", " ") + " | استخدام جو "
                    tag.Content = "استخدام " + Page.RouteData.Values("Name").ToString().Replace("-", " ") + " - استخدام جو "
                Case "مقطع-تحصیلی"
                    MultiView.ActiveViewIndex = 2
                    Select Case Page.RouteData.Values("Name").ToString().Trim
                        Case "دکتری"
                            lblDegree.Text = "6"
                        Case "فوق لیسانس"
                            lblDegree.Text = "5"
                        Case "لیسانس"
                            lblDegree.Text = "4"
                        Case "فوق دیپلم"
                            lblDegree.Text = "3"
                        Case "دیپلم"
                            lblDegree.Text = "2"
                        Case "زیر دیپلم"
                            lblDegree.Text = "1"
                        Case "دانشجو"
                            lblDegree.Text = "0"
                    End Select
                    lbltitle.Text = String.Format("استخدام  > مقطع تحصیلی  > {0}", Page.RouteData.Values("Name").ToString().Replace(".html", Nothing))
                    Title = "استخدام با مدرک تحصیلی " + Page.RouteData.Values("Name").ToString().Replace(".html", Nothing) + " | استخدام جو "
                    tag.Content = "استخدام با مدرک تحصیلی " + Page.RouteData.Values("Name").ToString() + " - استخدام جو "
                Case "بانک"
                    MultiView.ActiveViewIndex = 3
                    lbltitle.Text = String.Format("استخدام  > بانک  > {0}", Page.RouteData.Values("Name").ToString().Replace(".html", Nothing))
                    Title = "استخدام در بانک " + Page.RouteData.Values("Name").ToString().Replace(".html", Nothing) + " | استخدام جو "
                    tag.Content = "استخدام در بانک " + Page.RouteData.Values("Name").ToString() + " - استخدام جو "
            End Select
            Header.Controls.Add(tag)
        Catch ex As Exception

        End Try

    End Sub

    Public Function getShamsi(ByVal d As Object) As String
        Return ShamsiDate.Miladi2Shamsi(d, ShamsiDate.ShowType.ShortDate)
    End Function

End Class
