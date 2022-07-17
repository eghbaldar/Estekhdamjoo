<%@ Control Language="VB" AutoEventWireup="false" CodeFile="E_Today.ascx.vb" Inherits="UserControl_E_Today" %>
<div style="background-color: #FFFFFF; padding: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;
    border-radius: 5px;" onmousemove="move();" onmouseout="out();" id="DivC" class="ContentPost">
    <div class="T" id="divT" >
        استخدامی های روز</div>
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS">
            <ItemTemplate>
            
                <div class="contextToday">
                    <a href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                        title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                        <table>
                            <tr>
                                <td style="width: 430px;">
                                   <h1 class="ctitle"> <a href='<%# ResolveUrl(Eval("id","../{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                        target="_blank" >
                                        <asp:Label ID="Label1"  class="contextTodayA" runat="server" Text='<%# Eval("Title") %>' />
                                    </a></h1>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" CssClass="date" Text='<%# getShamsi(Eval("create_date")) %>' />
                                </td>
                            </tr>
                        </table>
                    </a>
                </div>
                  
            </ItemTemplate>
        </asp:DataList>
      
        <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetData" TypeName="DS_AdvertisementTableAdapters.Main_Select_Advertisement_Today_TitleTableAdapter">
        </asp:ObjectDataSource>
    </div>
</div>
<%--<script type="text/javascript">
    function move() {
        document.getElementById('divT').style.backgroundColor = '#E96B02';
        document.getElementById('divT').style.color = 'white';
    } function out() {
        document.getElementById('divT').style.backgroundColor = '#59C1C7';
        document.getElementById('divT').style.color = 'black';
    } </script>
<style type="text/css">
    .contextToday
    {
        padding: 5px;
    }
    .contextToday:hover
    {
        background-color:#F5F5F5;
    }
    .contextTodayA:hover
    {
        color: Red;
    }
    .date
    {
        color: #9E9E9E;
    }
    .date:hover
    {
        color: Red;
    }
    ul
    {
        list-style: none;
    }
    .T
    {
        background-color: #59C1C7;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
        border-radius: 5px;
        font-family: tahoma;
        font-size: 12px;
        color: black;
        padding: 7px;
    }
    .ctitle
    {
        font-family:Tahoma;
        font-size:11px;
    }
</style>--%>

