<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>博客系统后台管理</title>
    <%--下面是easyUI的环境--%>
    <link rel="stylesheet" href="/static/jquery-easyui-1.5.5.2/themes/icon.css" type="text/css"/>
    <link rel="stylesheet" href="/static/jquery-easyui-1.5.5.2/themes/default/easyui.css" type="text/css"/>
    <script type="text/javascript" src="/static/jquery-easyui-1.5.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="/static/jquery-easyui-1.5.5.2/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/static/jquery-easyui-1.5.5.2/locale/easyui-lang-zh_CN.js"></script>
    <script>
        function addTab(title, url){
            if ($('#tabs').tabs('exists', title)){
                $('#tabs').tabs('select', title);
            } else {
                var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
                $('#tabs').tabs('add',{
                    title:title,
                    content:content,
                    closable:true
                });
            }
        }
    </script>
</head>
<body class="easyui-layout">
<div region="north" style="height: 78px; background-color:#E0ECFF">
    <table style="padding: 5px" width="100%">
        <tr>
            <td width="50%">
                <h2>博客后台系统</h2>
            </td>
            <td valign="bottom" align="right" width="50%">
                <font size="3"><strong>欢迎：</strong>admin</font>
            </td>
        </tr>
    </table>
</div>
<div region="west" style="width:200px" title="导航菜单" split="true">
    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="文章管理" data-options="selected:true,iconCls:'icon-item'" style="padding:10px;">
            <a href="javascript:void(0);" onclick="addTab('博文列表','getBlogList.jsp')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-writeblog'" style="width: 150px">博文列表</a>
            <a href="javascript:void(0);" onclick="self.parent.addTab('审核博文','getBlogList.jsp')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-review'" style="width: 150px">博文审核</a>
        </div>
        <div title="博客类别管理" data-options="iconCls:'icon-bklb'" style="padding:10px">
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-bklb'" style="width: 150px;">博客类别信息管理</a>
        </div>
        <div title="评论管理" data-options="iconCls:'icon-plgl'" style="padding:10px">
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-review'" style="width: 150px">评论审核</a>
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-plgl'" style="width: 150px;">评论信息管理</a>
        </div>

        <div title="系统管理" data-options="iconCls:'icon-system'" style="padding:10px">
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-link'" style="width: 150px">友情链接管理</a>
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-refresh'" style="width: 150px;">刷新系统缓存</a>
            <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-exit'"
               style="width: 150px;">安全退出</a>
        </div>
    </div>
</div>
<div data-options="region:'center'" style="background: #eee;">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
            <div align="center" style="padding-top: 100px">
                <font color="red" size="10">欢迎使用</font>
            </div>
        </div>
    </div>
</div>
<div region="south" style="height: 25px;padding: 5px" align="center">
    Copyright @copy 2018-2020 阿米妮的TOLD博客系统 版权所有
</div>
</body>
</html>
