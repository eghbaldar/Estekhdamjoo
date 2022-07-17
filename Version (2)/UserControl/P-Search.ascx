<%@ Control Language="VB" AutoEventWireup="false" CodeFile="P-Search.ascx.vb" Inherits="UserControl_P_Search" %>
 <div id="search2321">
            <div style="float: right;">
                من با مدرک تحصیلی
                <asp:DropDownList Style="font-family: 'b yekan';" ID="drpdegree" runat="server"
                    Width="180" Height="30">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                       <asp:ListItem Value="6">دکتری</asp:ListItem>
                                        <asp:ListItem Value="5">فوق لیسانس</asp:ListItem>
                                        <asp:ListItem Value="4">لیسانس</asp:ListItem>
                                        <asp:ListItem Value="3">فوق دیپلم</asp:ListItem>
                                        <asp:ListItem Value="2">دیپلم</asp:ListItem>
                                        <asp:ListItem Value="1">زیر دیپلم</asp:ListItem>
                                        <asp:ListItem Value="0">دانشجو</asp:ListItem>
                </asp:DropDownList>
                
            </div>
            <div style="float: right; padding: 0px 14px 0px 4px;">
                در جستجوی شغل

                 <asp:DropDownList ID="drpFiled" runat="server"  DataSourceID="ODS_Field" Style="font-family: 'b yekan';"  Width="180" Height="30"
                                                            DataTextField="Name" DataValueField="ID"   AppendDataBoundItems="True" >
                                                        <asp:ListItem Text="انتخاب کنید"></asp:ListItem>

                                                          </asp:DropDownList>
                                                        <asp:ObjectDataSource ID="ODS_Field" runat="server" OldValuesParameterFormatString="original_{0}"
                                                            SelectMethod="GetData" TypeName="DS_FieldTableAdapters.CMS_Select_Field_AllTableAdapter">
                                                        </asp:ObjectDataSource>


         
            </div>
            <div style="float: right; padding: 0px 14px 0px 4px;">
                در استان


                  <asp:DropDownList ID="drpState" runat="server"  Style="font-family: 'b yekan';"  Width="180" Height="30"
                                                            DataSourceID="ODS_State" DataTextField="Name" DataValueField="ID"  AppendDataBoundItems="True" >
                                                                    <asp:ListItem Text="انتخاب کنید"></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:ObjectDataSource ID="ODS_State" runat="server" OldValuesParameterFormatString="original_{0}"  
                                                            SelectMethod="GetData" TypeName="DS_StateTableAdapters.List_StateTableAdapter">
                                                        </asp:ObjectDataSource>



               
            </div>
            <div style="float: right; padding: 0px 14px 0px 7px;">
                هستم</div>
            <asp:Button ID="Button3" runat="server" Text="پیدا کن" CssClass="search2" />
     
    


        </div>