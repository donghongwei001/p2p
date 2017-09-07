<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>角色界面</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

</head>
<body>
	<table id="dg" title="角色界面" class="easyui-datagrid"
            url="/p2p/queryRole.do"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true" striped="true">
        <thead>
            <tr>
                <th field="description" width="50">角色说明</th>
                <th field="rolecode" width="50">不清楚</th>
                <th field="roleid" width="50">角色编号</th>
                <th field="rolename" width="50">角色名称</th>
                <th field="rolestatus" width="50">角色状态</th>
            </tr>
        </thead>
    </table>
    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">增加</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">更新</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
        <label>搜索:</label>  
      	<input type="text" id="searchValue" style="width:120px;color: #dcdcdc;" value="请输入cphm关键字"  
             onfocus="if(value=='请输入cphm关键字') {value='';}this.style.color='#000';"  
             onblur="if (value=='') {value='请输入cphm关键字';this.style.color='#999';}"  
      	/>  
      	<a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="searchUser()">Search User</a>
    </div>
    
    <div id="dlg" class="easyui-dialog" style="width:400px"
            closed="true" buttons="#dlg-buttons">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">增加角色</div>
            <div style="margin-bottom:10px">
                <input name="description" class="easyui-textbox" required="true" label="角色说明:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="rolecode" class="easyui-textbox" required="true" label="不清楚:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="roleid" class="easyui-textbox" required="true" label="角色编号:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="rolename" class="easyui-textbox" required="true" label="角色名称:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="rolestatus" class="easyui-textbox" required="true" label="角色状态:" style="width:100%">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">确定</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">取消</a>
    </div>
    
    <script type="text/javascript">
        var url;
        function newUser(){//增加
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','增加角色');
            $('#fm').form('clear');
            url = '/p2p/addRole.do';
        }
        function editUser(){//更新
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','更新角色');
                $('#fm').form('load',row);
                url = '/p2p/updateRole.do?roleid='+row.roleid;
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
                        $('#dlg').dialog('close');        
                        $('#dg').datagrid('reload');    
                    }
                }
            });
        }
        /*$(function(){
        	var searchUser = function(){  
                var searchText = $('#searchValue').val();  
                if(searchText == '请输入cphm关键字'){  
                  searchText = '';  
                }  
                $('#datagrid').datagrid("load",{  
                  'keyword' : searchText  
                })  
              };  
        })       
       function destroyUser(){//删除
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
        }  */
        
    </script>
    
</body>
</html>