<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Question.ascx.vb" Inherits="UserControl_Question" %>
<div class="ContentTitlePost">
   نمونه سوالات استخدامی
</div>

                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS">
                    <ItemTemplate>
                     <div>
        </div>
                 <h1 style="font-family: Tahoma; font-size: 12px; color: #A49F9B;">
            <a href='<%# ResolveUrl(Eval("id","../file/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                <div class="u">
                    <img src='<%= ResolveUrl("../content/images/arrow.png") %>' />
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </div>
            </a>
        </h1>
                    </ItemTemplate>
                </asp:DataList> 
         
      
    <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetData" TypeName="DS_questionTableAdapters.Main_Select_Question_TitleTableAdapter">
    </asp:ObjectDataSource>
 