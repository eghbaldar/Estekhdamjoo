<%@ Page Language="VB" AutoEventWireup="false" CodeFile="selectAvatars.aspx.vb" Inherits="management_admin_selectAvatars" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function copyCode(str) {

            document.getElementById('TextBox').value = str;

            var txt = document.getElementById('TextBox');

            var base = window.opener;
            var src = base.document.getElementById('txtFileNamePhotoDuplicate');
            if (src && txt.value != '') {
                src.value = txt.value;
            }
        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 150px;
            height: 150px;
        }
        .btn
        {
            font: bold 10pt tahoma;
            color: Red;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <table class="style1">
                <tr style="text-align: center;">
                    <td>
                        <a onclick="copyCode('6iZwoG8PECT5aHy9GApgTTusM.png');" class="btn">(این عکس) </a>
                    </td>
                    <td>
                        <a onclick="copyCode('CBF3KgobgvqMPs7gJmPwbFj3R.png');" class="btn">(این عکس) </a>
                        <td>
                            <a onclick="copyCode('CSACWCuAAj46J2wP4iM4kgYs8.png');" class="btn">(این عکس) </a>
                            <td>
                                <a onclick="copyCode('DeMaWGmCNrubjZF4KACZFbVx7.png');" class="btn">(این عکس) </a>
                                <td>
                                    <a onclick="copyCode('JxuuGYVVHtnqhvJWvUXtDQEeT.png');" class="btn">(این عکس) </a>
                </tr>
                <tr style="text-align: center;">
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/6iZwoG8PECT5aHy9GApgTTusM.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/CBF3KgobgvqMPs7gJmPwbFj3R.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/CSACWCuAAj46J2wP4iM4kgYs8.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/DeMaWGmCNrubjZF4KACZFbVx7.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/JxuuGYVVHtnqhvJWvUXtDQEeT.png" />
                    </td>
                </tr>
                <tr style="text-align: center;">
                    <td>
                        <a onclick="copyCode('kfgCjRoV2HQc2j9nBeNPqbf4r.png');" class="btn">(این عکس) </a>
                        <td>
                            <a onclick="copyCode('sjYgxyrbcohn9iPWem8YDPAai.png');" class="btn">(این عکس) </a>
                            <td>
                                <a onclick="copyCode('mcKhRmUaPWaGsfomp93xEJYRC.png');" class="btn">(این عکس) </a>
                                <td>
                                    <a onclick="copyCode('sdKha3Ua3sfG3o4p93aEJsRg.png');" class="btn">(این عکس) </a>
                                </td>
                                <td>
                                   <a onclick="copyCode('sdKha2Ua3sfG2o3p93aEJfRg.png');" class="btn">(این عکس) </a>
                                </td>
                </tr>
                <tr style="text-align: center;">
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/kfgCjRoV2HQc2j9nBeNPqbf4r.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/sjYgxyrbcohn9iPWem8YDPAai.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/mcKhRmUaPWaGsfomp93xEJYRC.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/sdKha3Ua3sfG3o4p93aEJsRg.png" />
                    </td>
                    <td>
                       <img alt="" class="style2" src="../images/DuplicateFiles/sdKha2Ua3sfG2o3p93aEJfRg.png" />
                    </td>
                </tr>
                 <tr style="text-align: center;">
                    <td>
                        <a onclick="copyCode('kfgCjRoV2JKc2j9nBeNPqbf1r.png');" class="btn">(این عکس) </a>
                        <td>
                            <a onclick="copyCode('sjYgxyrbcohn2iPWem8YDPQai.png');" class="btn">(این عکس) </a>
                            <td>
                               
                                <td>
                                  
                                </td>
                                <td>
                                 
                                </td>
                </tr>
                <tr style="text-align: center;">
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/kfgCjRoV2JKc2j9nBeNPqbf1r.png" />
                    </td>
                    <td>
                        <img alt="" class="style2" src="../images/DuplicateFiles/sjYgxyrbcohn2iPWem8YDPQai.png" />
                    </td>
                    <td>
                      
                    </td>
                    <td>
                       
                    </td>
                    <td>
                    
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div style="text-align: center;">
            <input readonly="readonly" id="TextBox" type="text" style="width: 300px; text-align: center;
                padding: 5px;" />
        </div>
        <br />
        <div style="text-align: center;">
            <button onclick="window.close(); return false;" style="font: normal 10pt tahoma;">
                پنجره را ببند
            </button>
        </div>
    </div>
    </form>
</body>
</html>
