<%--
  Created by IntelliJ IDEA.
  User: zhongxiaowa
  Date: 2018/7/4
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <style>
        html, body, #mapDiv {
            padding: 0;
            margin: 0;
            height: 100%;
            width: 100%;
        }
    </style>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://js.arcgis.com/4.7/esri/css/main.css">
    <script src="https://js.arcgis.com/4.7/"></script>
    <script>
        require(["esri/map","esri/layers/ArcGISDynamicMapServiceLayer",
                "dojo/domReady!"],
            function(Map,ArcGISDynamicMapServiceLayer){
                var map = new Map("mapDiv");
                //利用url创建一个动态地图服务对象
                var layer=new ArcGISDynamicMapServiceLayer("http://202.203.134.147:6080/arcgis/rest/services/Servertest/MapServer");
                //将地图服务对象添加到地图容器中
                map.addLayer(layer);
            })
    </script>
    <title>GIS JavaScript</title>
</head>
<body>
<!--引入Botstrap组件-->
<!--顶部导航栏-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">哀牢山生态监测</a>
        </div>
    </div>
</nav>

<!--地图显示控件-->
<div id="mapDiv"></div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
