Imports System.Data.SqlClient
Imports System.Data
Partial Class management_admin_sitemap
    Inherits System.Web.UI.Page

    Protected Sub btnSiteMap_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSiteMap.Click
        Dim items As New List(Of Sitemap.SitemapItem)()
        Try
            Dim sqlconn As New SqlConnection(ConfigurationManager.ConnectionStrings("shaahrEconnectionString").ConnectionString)
            Dim sqlcom As New SqlCommand("exec [SiteMap]", sqlconn)
            Dim sqlda As New SqlDataAdapter(sqlcom)
            Dim ds As New DataSet
            sqlconn.Open()
            sqlda.Fill(ds)

            For i As Long = 0 To ds.Tables(0).Rows.Count - 1
                items.Add(New Sitemap.SitemapItem(String.Format("http://estekhdamjoo.ir/{0}/{1}.html", ds.Tables(0).Rows(i)("id").ToString, _
                                                                ds.Tables(0).Rows(i)("title").ToString().Replace(" ", "-")), Nothing, Sitemap.ChangeFrequency.always, 1))
            Next

            sqlconn.Close()
            Dim sm As New Sitemap.XmlSitemapResult(items)
            sm.CreateXmlSitemap(Server.MapPath("~/sitemap.xml"))

        Catch ex As Exception
        End Try

    End Sub
End Class
