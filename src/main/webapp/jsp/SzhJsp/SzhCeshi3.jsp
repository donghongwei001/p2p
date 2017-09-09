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
	<table id="xxoo" class="easyui-datagrid" title="Outlets Sales Quantity "  style="width:720px;height:auto"  
            data-options="  
                singleSelect: true,  
                url: 'outlets_init.php?type=init',  
                 rowStyler: function(index,row){  
                    if (row.outdate == 'TOTAL'){  
                        return 'background-color:#6293BB;color:#fff;font-weight:bold;';  
                    }  
                }  
            ">  
        <thead>  
            <tr>  
                <th data-options="field:'outdate',width:80" ><strong>DATE</strong></th>  
                <th data-options="field:'Qingpu',width:60,align:'right'">Qingpu</th>  
                <th data-options="field:'Wuxi',width:60,align:'right'">Wuxi</th>  
                <th data-options="field:'Foxtown',width:60,align:'right'">Foxtown</th>  
                <th data-options="field:'Suzhou',width:60,align:'right'">Suzhou</th>  
                <th data-options="field:'Beijing',width:60,align:'right'">Beijing</th>  
                 <th data-options="field:'Shenyang',width:60,align:'right'">Shenyang</th>  
                <th data-options="field:'Xiamen',width:60,align:'right'">Xiamen</th>  
                <th data-options="field:'Chongqing',width:65,align:'right'">Chongqing</th>  
                <th data-options="field:'Chengdu',width:60,align:'right'">Chengdu</th>  
                <th data-options="field:'day_total',width:80,align:'right'"><strong>TOTAL</strong></th>  
                 
            </tr>  
        </thead>  
    </table>  
    
    <script type="text/javascript">
    
    </script>
</body>
</html>