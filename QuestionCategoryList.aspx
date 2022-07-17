<%@ Page Title="" Language="VB" MasterPageFile="~/Master3.master" AutoEventWireup="false" CodeFile="QuestionCategoryList.aspx.vb" Inherits="QuestionCategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .Contextbox
        {
            margin-bottom: 2px;
            height: 100px;
            width: 700px;
            margin-left: 4px;
            padding: 8px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            border: 1px solid #ccc;
            background-color: White;
        }
        .Contextbox:hover
        {
            background: #d7edf4; /* Old browsers */
            background: -moz-linear-gradient(top, #d7edf4 0%, #d3e1e5 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d7edf4), color-stop(100%,#d3e1e5)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #d7edf4 0%,#d3e1e5 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #d7edf4 0%,#d3e1e5 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #d7edf4 0%,#d3e1e5 100%); /* IE10+ */
            background: linear-gradient(to bottom, #d7edf4 0%,#d3e1e5 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d7edf4', endColorstr='#d3e1e5',GradientType=0 ); /* IE6-9 */
        }
        .ContextPostList_Title
        {
            font: bold 12px tahoma;
        }
        .List_Create_Date
        {
            color: #626262;
            margin: 1px;
            font-family: 'tahoma';
            font-size: 1.12em;
        }
        .List_Expiry_Date
        {
            padding: 3px;
            color: #626262;
            margin: 1px;
            font-family: 'tahoma';
            font-size: 1.12em;
        }
        .im
        {
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: 1px solid #ccc;
            width: 100px;
            height: 100px;
        }
        
        
        .ContextT
        {
            padding: 5px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            background: #009fa9; /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */
            background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjMDA5ZmE5IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTAlIiBzdG9wLWNvbG9yPSIjNTljMWM3IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjMDA5ZmE5IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzU5YzFjNyIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
            background: -moz-linear-gradient(-45deg, #009fa9 0%, #59c1c7 50%, #009fa9 51%, #59c1c7 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#009fa9), color-stop(50%,#59c1c7), color-stop(51%,#009fa9), color-stop(100%,#59c1c7)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(-45deg, #009fa9 0%,#59c1c7 50%,#009fa9 51%,#59c1c7 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(-45deg, #009fa9 0%,#59c1c7 50%,#009fa9 51%,#59c1c7 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(-45deg, #009fa9 0%,#59c1c7 50%,#009fa9 51%,#59c1c7 100%); /* IE10+ */
            background: linear-gradient(135deg, #009fa9 0%,#59c1c7 50%,#009fa9 51%,#59c1c7 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#009fa9', endColorstr='#59c1c7',GradientType=1 ); /* IE6-8 fallback on horizontal gradient */
            color: White;
            margin-bottom: 4px;
        }
        .T
        {
            font: bold 12px tahoma;
        }
        .DivAb
        {
            color: #626262;
            line-height: 1.8em;
        }
        /* Pagging*/
        .gridview
        {
            padding: 2px;
        }
        .gridview a
        {
            margin: auto 1%;
            background-color: #444;
            padding: 5px 10px 5px 10px;
            color: #fff;
            text-decoration: none;
            box-shadow: 1px 1px 1px #111;
        }
        .gridview a:hover
        {
            background-color: #E76A01;
            color: #fff;
        }
        .gridview span
        {
            background-color: #009FA9;
            color: #fff;
            box-shadow: 1px 1px 1px #111;
            padding: 5px 10px 5px 10px;
        }
        
        /* ------ */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="ContextT">
            <h1>
                <span class="T">نمونه سوالات استخدامی </span>
            </h1>
        </div>
 
    <div>
        <asp:GridView ID="gr_state" runat="server" DataSourceID="ODS_Question" AutoGenerateColumns="False"
            AllowPaging="True" PageSize="15" DataKeyNames="ID" ShowHeader="False">
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <ItemTemplate>
                        <div class="Contextbox">
                            <table>
                                <tr>
                                    <td style="width: 650px; margin-left: 5px;">
                                        <div style="margin-bottom: 8px;">
                                            <a href='<%# ResolveUrl(Eval("id","file/{0}/") + Eval("title","{0}").ToString().Replace(" ", "-") + ".html") %>'
                                                title='<%# Eval("Title") %>' rel="bookmark" target="_blank">
                                                <asp:Label ID="TitleLabel" class="ContextPostList_Title" runat="server" Text='<%# Eval("Title") %>' />
                                            </a>
                                        </div>
                                        <div class="DivAb">
                                            <asp:Label ID="PicFileLabel" runat="server" Text='<%# "دسته : "+ Eval("CategoryTitle") %>' /></div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="List_Create_Date">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# "حجم : "+ Eval("Size") %>' />
                                                        </div>
                                                    </td>
                                                    <td>
                                                    |
                                                    </td>
                                                    <td>
                                                        <div class="List_Expiry_Date">
                                                            <asp:Label ID="Label2" runat="server" Text='<%#  "قیمت : " +Eval("Price").ToString + " تومان   " %>' />
                                                        </div>
                                                    </td>
                                                     <td>
                                                    |
                                                    </td>
                                                    <td>
                                                        <div class="List_Create_Date">
                                                            <asp:Label ID="Label3" runat="server" Text='<%# "نوع فایل : "+ Eval("File_Type") %>' />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                   
                                    <td>
                                        <asp:Image ID="Image1" CssClass="im" ImageUrl='<%# Eval("PicFile","management/images/{0}") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="gridview"></PagerStyle>
        </asp:GridView>
        <asp:ObjectDataSource ID="ODS_Question" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetData" TypeName="DS_QuestionTableAdapters.Main_Select_QuestionCategory_ListTableAdapter">

            <SelectParameters>
                <asp:RouteParameter Name="CategoryId" RouteKey="CategoryId" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

