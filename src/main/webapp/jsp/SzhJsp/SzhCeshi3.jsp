<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>统计图</title>
<script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>
<script src="echarts.common.min.js"></script>
</head>
<body>
	<div id="main" style="width: 700px;height:400px;margin:50px 150px auto;"></div>
	<script type="text/javascript">
		var seriess = [];
	    $(function(){
	    	$.ajax({
	    		type:'post',
	    		dataType:'json',
	    		async:false,
	    		url:'/p2p/queryAll.do',
	    		success:function(datas){
	    			seriess = datas;

	    			
	    			var myChart = echarts.init(document.getElementById('main'));
	    			var option = {
	    				    title: {
	    				        text: '项目期限与利率',
	    				        subtext: '真实数据'
	    				    },
	    				    tooltip: {
	    				        trigger: 'axis'
	    				    },
	    				    legend: {
	    				        data:['项目期限','项目利率']
	    				    },
	    				    toolbox: {
	    				        show: true,
	    				        feature: {
	    				            dataZoom: {
	    				                yAxisIndex: 'none'
	    				            },
	    				            dataView: {readOnly: false},
	    				            magicType: {type: ['line', 'bar']},
	    				            restore: {},
	    				            saveAsImage: {}
	    				        }
	    				    },
	    				    xAxis:  {
	    				        type: 'category',
	    				        boundaryGap: false,
	    				        data: seriess[0].one
	    				    },
	    				    yAxis: {
	    				        type: 'value',
	    				        axisLabel: {
	    				            formatter: '{value}'
	    				        }
	    				    },
	    				    series: [
	    				        {
	    				            name:'项目期限/月',
	    				            type:'line',
	    				            data:seriess[1].two,
	    				            markPoint: {
	    				                data: [
	    				                    {type: 'max', name: '最大值'},
	    				                    {type: 'min', name: '最小值'}
	    				                ]
	    				            },
	    				            markLine: {
	    				                data: [
	    				                    {type: 'average', name: '平均值'}
	    				                ]
	    				            }
	    				        },
	    				        {
	    				            name:'项目利率/%',
	    				            type:'line',
	    				            data:seriess[2].three,
	    				            markPoint: {
	    				                data: [
	    				                    {type: 'max', name: '最大值'},
	    				                    {type: 'min', name: '最小值'}
	    				                ]
	    				            },
	    				            markLine: {
	    				                data: [
	    				                    {type: 'average', name: '平均值'},
	    				                    /* [{
	    				                        symbol: 'none',
	    				                        x: '90%',
	    				                        yAxis: 'max'
	    				                    }, {
	    				                        symbol: 'circle',
	    				                        label: {
	    				                            normal: {
	    				                                position: 'start',
	    				                                formatter: '最大值'
	    				                            }
	    				                        },
	    				                        type: 'max',
	    				                        name: '最高点'
	    				                    }] */
	    				                ]
	    				            }
	    				        }
	    				    ]
	    				};myChart.setOption(option);
	    		}	    		
	    	});	    	
	    });		
	</script>
	<div id="main1" style="width: 700px;height:400px;margin:50px 150px auto;"></div>
	<script type="text/javascript">
		var summer = [];
	    $(function(){
	    	$.ajax({
	    		type:'post',
	    		dataType:'json',
	    		async:false,
	    		url:'/p2p/queryAllTwo.do',
	    		success:function(datas){
	    			summer = datas;
	    			
					var myChart1 = echarts.init(document.getElementById('main1'));
					var option1 = {
						    title: {
						        text: '项目资金',
						        subtext: '真实数据'
						    },
						    tooltip: {
						        trigger: 'axis',
						        axisPointer: {
						            type: 'shadow'
						        }
						    },
						    legend: {
						        data: ['2017年']
						    },
						    grid: {
						        left: '3%',
						        right: '4%',
						        bottom: '3%',
						        containLabel: true
						    },
						    xAxis: {
						        type: 'value',
						        boundaryGap: [0, 0.01]
						    },
						    yAxis: {
						        type: 'category',
						        data: summer[0].data1
						    },
						    series: [
						        {
						            name: '2017年',
						            type: 'bar',
						            data: summer[0].data2
						        },
						        /* {
						            name: '2012年',
						            type: 'bar',
						            data: [19325, 23438, 31000, 121594, 134141, 681807]
						        } */
						    ]
						};myChart1.setOption(option1);
	    		}	    		
	    	});	    	
	   });		
	</script>
	<div style="text-align:center;font:normal 14px/24px 'MicroSoft YaHei';">
		<p>来源：<a href="Xmtj.jsp">第七组</a></p>
	</div>
</body>
</html>