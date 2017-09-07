<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户界面</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
    	$(function(){
    		$('#win').dialog('close');  
    	      //创建一个grid  
    	      var datagrid = $('#datagrid').datagrid({  
    	        url:"/p2p/queryUser.do",  
    	        fit:true,//自动填充满  
    	        border:false,//去除边框  
    	        pagination:true,//分页栏  
    	        pageSize:10,//默认选择项  
    	        pageList:[10,20,30],//下拉框数值  
    	        rownumbers:true,//是否显示行号  
    	        fitColumns:false,//是否让浏览器自动控制列宽  
    	        idField:'userID',//多选时，通过row记录行号  
    	        singleSelect:false,//是否单选  
    	        selectOnCheck:true,  
    	        checkOnSelect:true,  
    	        toolbar:"#toolbar",//工具栏调用  
    	        loadMsg:'正在加载数据..',  
    	        //列模型  
    	        columns:[[  
    	          //{field:'row',checkbox:true},    
    	          {field:'money',title:'账户余额',width:80,align:'center'},  
    	          {field:'pwd',title:'用户密码',width:80,align:'center'},    
    	          {field:'state',title:'用户状态',width:80,align:'center',  
    	            formatter:function(value){  
    	              if(value=='是') return "<font color='green'>通过</font>";//格式化内容，true->通过，false->禁止，并配上颜色  
    	                else return "<font color='red'>禁止</font>";  
    	            }},  
      	          {field:'userID',title:'用户编号',width:80,align:'center'},  
      	          {field:'username',title:'用户名称',width:80,align:'center'}
    	        ]],  
    	        //双击事件  
    	        'onDblClickRow':function (Index, row){  
    	          editUser();  
    	        },  
    	        // 鼠标右键  
    	        'onRowContextMenu':function(e, index, row){  
    	          e.preventDefault();//取消事件的默认行为  
    	          var selected=$("#datagrid").datagrid('getRows'); //获取所有行集合对象  
    	          selected[index].id; //index为当前右键行的索引，指向当前行对象  
    	          $('#mn').menu('show', {//定位右键菜单打开的位置  
    	            left:e.pageX,  
    	            top:e.pageY  
    	          });  
    	        }  
    	      });  
    	});
    	
    	 //添加/编辑的标志位，用于选择提交的url  
        var subflag;  
        //添加数据  
        var newUser = function(){  
          subflag = true;  
          $('#win').dialog('open').dialog('setTitle','增加用户');//打开dialog窗口  
          $('#ff').form('clear');//清空form表单的数据  
        };  
        //编辑数据  
        var editUser = function(){  
          subflag = false;  
          var row = $("#datagrid").datagrid("getChecked");//获取勾选的数据  
          if (row.length == 1) {  
            $("#win").dialog("open").dialog('setTitle','更新用户');  
            $("#ff").form("load", {  
              //数据绑定  
              "testCm.money":row[0].money,  
              "testCm.pwd":row[0].pwd,  
              "testCm.state":row[0].state,  
              "testCm.userID":row[0].userID,  
              /* "testCm.passtime":new Date(row[0].passtime).toLocaleDateString(), */  
              "testCm.username":row[0].username  
            });  
          }else{ 
            alert('请只勾选一条数据');
          }
        };
        //搜索数据  
        var searchUser = function(){  
          var searchText = $('#searchValue').val();  
          if(searchText == '请输入cphm关键字'){  
            searchText = '';  
          }  
          $('#datagrid').datagrid("load",{  
            'keyword' : searchText  
          })  
        };  
        // 添加/编辑窗口中的确认按钮操作  
        var saveUser = function(){  
          //添加  
          var url;  
          if(subflag){  
            url = "/p2p/addUser.do";  
          }else{  
            url = "/p2p/updateUser.do";  
          }  
          $('#ff').form('submit', {  
            url:url, 
            onSubmit: function(){
            },  
            success:function(data){  
              var data = eval('(' + data + ')');  
              if(data.success){  
                $.messager.show({title:"提示信息", msg:"操作成功",timeout:1200,showType:'slide'});  
                $("#win").dialog("close");  
                $("#datagrid").datagrid("load");  
              }else{  
                $.messager.alert("提示信息", "操作失败");  
              }  
            }
          });  
        };  
        //添加/编辑窗口中的取消按钮操作  
        var closeUser = function(){  
          $('#win').dialog('close');  
        };  
</script>

</head>
<body>
	 <%--创建一个grid--%>  
    <table id="datagrid"></table>  
  
    <%--toolbar工具栏重新实现，easyui自带的工具栏只能添加按钮--%>  
    <div id="toolbar">  
      <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">增加</a>  
      <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">更新</a>  
      <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>  
      <label>搜索:</label>  
      <input type="text" id="searchValue" style="width:120px;color: #dcdcdc;" value="请输入cphm关键字"  
             onfocus="if(value=='请输入cphm关键字') {value='';}this.style.color='#000';"  
             onblur="if (value=='') {value='请输入cphm关键字';this.style.color='#999';}"  
      />  
      <a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="searchUser()">GO</a>  
    </div>  
  
    <%--添加/编辑窗口，及里面的Form表单--%>  
    <div id="win" class="easyui-dialog" style="width:330px;height:250px"  
         data-options="iconCls:'icon-save',modal:true,buttons:[{  
            text:'保存',  
            handler:function(){saveUser();}  
         },{  
            text:'关闭',  
            handler:function(){closeUser();}  
         }]" >  
  
      <form id="ff" method="post">        
        <!-- <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">用户密码:</label>  
          <input class="easyui-datetimebox" name="testCm.pwd"  style="width:120px;" data-options="required:true" />  
        </div> -->                      
        <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">账户余额:</label>  
          <input class="easyui-validatebox" name="testCm.money" style="width:120px;" data-options="required:true" />  
        </div>
        <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">用户密码:</label>  
          <input class="easyui-validatebox" name="testCm.pwd"  style="width:120px;" data-options="required:true" />  
        </div>
        <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">用户状态:</label>  
          <input class="easyui-validatebox" name="testCm.state" style="width:120px;" data-options="required:true" />  
        </div>
        <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">用户编号:</label>  
          <input class="easyui-validatebox" name="testCm.userID" style="width:120px;" data-options="required:true" />  
        </div>
        <div style="padding:5px;">  
          <label style="width:80px;text-align:right;float:left;">用户名称:</label>  
          <input class="easyui-validatebox" name="testCm.username" style="width:120px;" data-options="required:true" />  
        </div>   
      </form>  
    </div>  
  
    <div id="mn" class="easyui-menu" style="width:120px;">  
      <div onClick="newUser()" data-options="iconCls:'icon-add'">新增</div>  
      <div onClick="editUser()" data-options="iconCls:'icon-edit'">编辑</div>  
      <div onClick="destroyUser()" data-options="iconCls:'icon-remove'">删除</div>  
      <div class="menu-sep"></div>  
      <div onClick=$("#datagrid").datagrid("load"); data-options="iconCls:'icon-reload'">刷新</div>    
    </div>  
       
</body>
</html>