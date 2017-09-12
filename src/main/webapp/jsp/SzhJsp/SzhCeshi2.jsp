<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>测试界面</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

</head>
<body>
    <table id="dg" title="用户界面" class="easyui-datagrid" style="width:1000px;height:500px"
            url="/p2p/queryUser.do"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true" striped="true">
        <thead>
            <tr>
                <th field="money" width="50">账户余额</th>
                <th field="pwd" width="50">用户密码</th>
                <th field="state" width="50">用户状态</th>
                <th field="userID" width="50">用户编号</th>
                <th field="username" width="50">用户名称</th>
            </tr>
        </thead>
    </table>
    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">增加</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">更新</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
    </div>
    
    <div id="dlg" class="easyui-dialog" style="width:400px"
            closed="true" buttons="#dlg-buttons">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">增加用户</div>
            <div style="margin-bottom:10px">
                <input name="money" class="easyui-textbox" required="true" label="账户余额:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="pwd" class="easyui-textbox" required="true" label="用户密码:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="state" class="easyui-textbox" required="true" label="用户状态:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="userID" class="easyui-textbox" required="true" label="用户编号:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="username" class="easyui-textbox" required="true" label="用户名称:" style="width:100%">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">确定</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">取消</a>
    </div>
    <script type="text/javascript">
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','增加用户');
            $('#fm').form('clear');
            url = '/p2p/addUser.do';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','更新用户');
                $('#fm').form('load',row);
                url = '/p2p/updateUser.do?userID='+row.userID;
            }else{
            	alert("请选中一条数据进行更新！");
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: '错误提示！',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');        // close the dialog
                        $('#dg').datagrid('reload');    // reload the user data
                    }
                }
            });
        }
        
       function destroyUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('危险提示！！！','你真的确定非要删除这条数据不可么？',function(r){
                    if (r){
                        $.post('/p2p/queryUser.do',{userID:row.userID},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }else{
            	alert("请选中一条数据进行删除！");
            }
        } 
    </script>

</body>
</html>