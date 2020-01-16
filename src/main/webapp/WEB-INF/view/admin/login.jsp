<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setCharacterEncoding("UTF-8");

%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="kindeditor-4.1.10/themes/default/default.css" />
    <link rel="stylesheet" href="kindeditor-4.1.10/plugins/code/prettify.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script charset="utf-8" src="kindeditor-4.1.10/kindeditor.js"></script>
    <script charset="utf-8" src="kindeditor-4.1.10/lang/zh_CN.js"></script>
    <script charset="utf-8" src="kindeditor-4.1.10/plugins/code/prettify.js"></script>
  <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript"
            src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/My97DatePicker/WdatePicker.js"></script>
    <script>
        KindEditor.ready(function(K) {
            var editor1 = K.create('textarea[name="content1",name="content2"]', {
                cssPath : '/kindeditor-4.1.10/plugins/code/prettify.css',
                uploadJson : '/fileUpload',
                fileManagerJson : '/fileManager',
                allowFileManager : true,
                afterBlur: function(){this.sync();}
            });
            prettyPrint();
        });
    </script>

</head>
<body>
  ??
<li><label>商家图片地址</label><textarea name="businessAddressImg" id="content1"  cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></li>
<br>
 <li><label>有效起始时间  </label><input name="activitiesFirstTime" id="startDate" type="text" class="Wdate"  onfocus="WdatePicker({el:'startDate',dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}',skin:'twoer',readOnly:true})" /></li>
<li><label>有效截止时间</label><input name="activitiesLastTime" id="endDate" type="text" class="Wdate" onfocus="WdatePicker({el:'endDate',dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startDate\')}',readOnly:true})"  /></li>
</body>

</html>
<%!
    private String htmlspecialchars(String str) {
        str = str.replaceAll("&", "&amp;");
        str = str.replaceAll("<", "&lt;");
        str = str.replaceAll(">", "&gt;");
        str = str.replaceAll("\"", "&quot;");
        return str;
    }
%>
