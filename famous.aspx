<%@ Page Title="" Language="VB" MasterPageFile="~/Master3.master" AutoEventWireup="false" CodeFile="famous.aspx.vb" Inherits="famous" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
        #divText
        {
            line-height:1.8em;
        }
        #divText table
        {
            border: 1px solid #9E9E9E;
        }
        
        #divText table td:first-child
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
        
        #divText table td:last-child
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
        #divText table td
        {
            border: 1px solid #9E9E9E;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="ODS">
                <ItemTemplate>
                    <div class="ContentTitlePost" style="margin-right:2px; width:790px; border:1px solid #DADADA" >
    
                        <table>
                            <tr>
                                <td style="width: 600px;">
                                    <h2>
                                        <asp:Label Style="font-size: 17px   ; font-weight:normal; font-family:'b yekan';" ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    </h2>
                                </td>
                                <td>
                                  
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="border: 1px solid #ccc; -moz-border-radius: 4px; -webkit-border-radius: 4px;
            border-radius: 4px;background-color:White;margin-right:2px; ">
                    <div class="postContent" >
                        <div  style="padding:7px;">
                            <table>
                                <tr>
                                    <td>
                                        <img src='<%=ResolveUrl("content/images/IconVisit.gif") %>' alt="IconVisit" />
                                    </td>
                                    <td>
                                       <div style="width: 600px; text-align: right; margin-right:3px;">
                                            <asp:Label ID="Label11" Style="font-size: 13px; font-family:'b yekan';" runat="server" Text='<%# "تعداد بازدید: "+Eval("visit","{0}") %>' />
                                        </div>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label8" Style="font-size: 13px; font-family:'b yekan';" runat="server" Text='<%# getShamsi(Eval("create_date")) %>' /> 
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="width: 550px; padding-right: 10px;">
                            <table>
                                <tr>
                                    <td >
                                        <div style="width: 610px;">
                                            <asp:Label ID="Label9" Style="font-family:'b yekan'; font-size: 20px; color: #383838;"
                                                runat="server" Text='<%# Eval("Title") %>' />
                                        </div>
                                    </td>
                                    <td>
                                        <div style=" background-color:White; -moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;border:1px solid #ccc; padding:4px; box-shadow:0px 0px 3px 1px #E2E2E2;">
                                            <asp:Image ID="Image2" runat="server" Style="width: 150px; height: 150px;" ImageUrl='<%# ResolveUrl(Eval("PicFile","~/management/images/{0}")) %>'
                                                AlternateText='<%# Eval("Title") %>' /></div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding: 10px; line-height:26px;" id="divText">
                            <br />
                            <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>'  Font-Size="11pt" Font-Names="Arial"/>
                            <br />
                        </div>
                    </div> </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ODS" runat="server" OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetData" TypeName="DS_famousTableAdapters.Main_Select_famous_AllTableAdapter">
                <SelectParameters>
                    <asp:RouteParameter Name="id" RouteKey="code" Type="Int64" />
                </SelectParameters>
            </asp:ObjectDataSource>
</asp:Content>

