<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/11/15
  Time: 8:15 PM
--%>
<html>
<head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawPieChart);
        google.setOnLoadCallback(drawLineChart);
        function drawPieChart() {

            var data = google.visualization.arrayToDataTable([
                ['Sentiment', 'Percentage'],
                ['Postive', ${count[2]}],
                ['Neutral', ${count[1]}],
                ['Negative', ${count[0]}]
            ]);

            var options = {
                title: 'Twitter Sentiment Statistics Pie Chart'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }

        function drawLineChart() {
            var data = google.visualization.arrayToDataTable([
                ['days', 'Positive', 'Neutral', 'Negative'],
                ['day1',  ${map.get(1)[2]},  ${map.get(1)[1]},  ${map.get(1)[0]}],
                ['day2',  ${map.get(2)[2]},  ${map.get(2)[1]},  ${map.get(2)[0]}],
                ['day3',  ${map.get(3)[2]},  ${map.get(3)[1]},  ${map.get(3)[0]}],
                ['day4',  ${map.get(4)[2]},  ${map.get(4)[1]},  ${map.get(4)[0]}],
                ['day5',  ${map.get(5)[2]},  ${map.get(5)[1]},  ${map.get(5)[0]}],
                ['day6',  ${map.get(6)[2]},  ${map.get(6)[1]},  ${map.get(6)[0]}],
                ['day7',  ${map.get(7)[2]},  ${map.get(7)[1]},  ${map.get(7)[0]}]

            ]);

            var options = {
                title: 'Satatistics in time line last week',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
        }

    </script>
</head>
<body>
<div id="piechart" style="width: 900px; height: 500px;"></div>

<div id="curve_chart" style="width: 900px; height: 500px"></div>

</body>
</html>

