<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: quocq
  Date: 01/23/2018
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>chart created with amCharts | amCharts</title>
    <meta name="description" content="chart created using amCharts live editor" />

    <!-- amCharts javascript sources -->
    <!--<script src="https://www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>-->
    <!--<script src="https://www.amcharts.com/lib/3/serial.js" type="text/javascript"></script>-->
    <script src="../js/amcharts.js" type="text/javascript"></script>
    <script src="../js/serial.js" type="text/javascript"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- amCharts javascript code -->
    

</head>
<body>
<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
<input type="button" id="btnShow" name="btnShow" value="show"/>

<script>
    $('#btnShow').on('click', function(){


        $.ajax({
            url: 'AjaxServlet',
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',

            data:{
                param1: "123",
                param2: "abc"
            },
            success: function (obj) {
                alert('ok');
                console.log(obj);
 //              drawChart();
                AmCharts.makeChart("chartdiv",
                    {
                        "type": "serial",
                        "categoryField": "date",
                        "dataDateFormat": "YYYY-MM-DD HH",
                        "categoryAxis": {
                            "minPeriod": "hh",
                            "parseDates": true
                        },
                        "chartCursor": {
                            "enabled": true,
                            "categoryBalloonDateFormat": "JJ:NN"
                        },
                        "chartScrollbar": {
                            "enabled": true
                        },
                        "trendLines": [],
                        "graphs": [ // mô tả graph
                            {
                                "bullet": "round",
                                "id": "Line-1",
                                "title": "Line thu 1",
                                "valueField": "col1"
                            },
                            {
                                "bullet": "square",
                                "id": "Line-2",
                                "title": "Line thu 2",
                                "valueField": "col2"
                            }
                        ],
                        "guides": [],
                        "valueAxes": [
                            {
                                "id": "ValueAxis-1",
                                "title": "Day la ten"
                            }
                        ],
                        "allLabels": [],
                        "balloon": {},
                        "legend": {
                            "enabled": true,
                            "useGraphSettings": true
                        },
                        "titles": [
                            {
                                "id": "Title-1",
                                "size": 15,
                                "text": "Chart Title"
                            }
                        ],
                        "dataProvider": obj
                    }
                );
            },
            error: function (e) {
                alert('Error: ' + e);
            }
        });
    });
</script>
</body>
</html>