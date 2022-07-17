
Partial Class UserControl_newsLetters
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Iframe1.Attributes.Add("src", "rss/frm_all.aspx")
        Iframe1.Visible = False
        Panel1.Visible = True
    End Sub

    Protected Sub d_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles d.SelectedIndexChanged


        If d.Items(0).Selected Then
            Iframe1.Visible = False
            Panel1.Visible = True
        End If
        '''''''''''''''''''
        If d.Items(1).Selected Then
            Iframe1.Visible = True

            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_all.aspx")) '''''''''''''''''''

        End If
        '''''''''''''''''''
        If d.Items(26).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_gilan.aspx")) '''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(9).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_tehran.aspx")) ''''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(6).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_alborz.aspx")) '''''''''''''''
        End If
        ''''''''''''''''''
        If d.Items(4).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_ardebil.aspx")) '''''''''''''''''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(8).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_boshehr.aspx")) '''''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(10).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_Chaharmahal.aspx")) '''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(2).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_EastAzarbaijan.aspx")) '''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(5).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_esfehan.aspx")) '''''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(18).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_fars.aspx")) '''''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(19).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_ghazvin.aspx")) ''''''''''''''''
        End If
        ''''''''''''''''''
        If d.Items(20).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_qom.aspx")) '''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(25).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_golestan.aspx")) '''''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(31).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_hamedan.aspx")) '''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(30).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_hormozgan.aspx")) ''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(7).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_ilam.aspx")) ''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(22).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_kerman.aspx")) '''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(23).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_kermanshah.aspx")) '''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(14).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_khozestan.aspx")) ''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(24).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_kohgiloye.aspx")) '''''''''''
        End If
        '''''''''''''''''''
        If d.Items(21).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_kordestan.aspx")) '''''''''''
        End If
        '''''''''''''''''''
        If d.Items(27).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_lorestan.aspx")) ''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(29).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_markazi.aspx")) ''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(28).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_mazandaran.aspx")) '''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(13).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_NorthKhorasan.aspx")) '''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(12).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_RazaviKhorasan.aspx")) '''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(16).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_semnan.aspx")) ''''''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(17).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_sistan.aspx")) '''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(11).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_SouthKhorasan.aspx")) ''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(3).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/WestAzarbaijan.aspx")) ''''''''''''
        End If
        '''''''''''''''''''
        If d.Items(32).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_Yazd.aspx")) '''''''''
        End If
        '''''''''''''''''''
        If d.Items(15).Selected Then
            Iframe1.Visible = True
            Panel1.Visible = False
            Iframe1.Attributes.Add("src", ResolveUrl("../rss/frm_zanjan.aspx")) ''''''''
        End If
        '''''''''''''''''''


    End Sub

End Class
