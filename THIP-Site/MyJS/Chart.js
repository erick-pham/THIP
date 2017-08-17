$(document).ready(function () {
    /* vẽ chart*/
    Highcharts.chart('chart-power', {
        chart: {
            type: 'column'
        },
        title: {
            align: "center",
            floating: false,
            margin: 15,
            style: { "color": "#333333", "fontSize": "16px" },
            text: 'Lịch sử tiêu thụ điện',
        },
        xAxis: {
            categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
        },
        yAxis: {
            min: 0,
            title: {
                text: 'KWh'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: 'KWh',
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} Kwh</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            //column: {
            //    pointPadding: 0.2,
            //    borderWidth: 0
            //}
            column: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        //legend: {
        //    layout: 'vertical',
        //    align: 'right',
        //    verticalAlign: 'middle',
        //    borderWidth: 0
        //},
        //series: [{
        //    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
        //}]
        series: [{
            name: 'Điện',
            data: [50, 100, 60, 20, 40, 60, 30, null, null, null, null, null]
        }]
    });

    Highcharts.chart('chart-water', {
        chart: {
            type: 'column'
        },
        title: {
            align: "center",
            floating: false,
            margin: 15,
            style: { "color": "#333333", "fontSize": "16px" },
            text: 'Lịch sử dùng nước',
        },
        xAxis: {
            categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
        },
        yAxis: {
            min: 0,
            title: {
                text: 'm3'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: 'm3',
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} Kwh</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            //column: {
            //    pointPadding: 0.2,
            //    borderWidth: 0
            //}
            column: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        //legend: {
        //    layout: 'vertical',
        //    align: 'right',
        //    verticalAlign: 'middle',
        //    borderWidth: 0
        //},
        //series: [{
        //    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
        //}]
        series: [{
            name: 'Nước',
            data: [50, 100, 60, 20, 40, 60, 30, null, null, null, null, null]
        }]
    });

    Highcharts.chart('chart-cod', {
        chart: {
            type: 'line',
        },
        title: {
            align: "center",
            floating: false,
            margin: 15,
            style: { "color": "#333333", "fontSize": "16px" },
            text: 'Chỉ số COD nước thải',
        },
        xAxis: {
            categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
        },
        yAxis: {
            title: {
                text: 'mg/l'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        //tooltip: {
        //    valueSuffix: 'mg/l'
        //},
        //legend: {
        //    layout: 'vertical',
        //    align: 'right',
        //    verticalAlign: 'middle',
        //    borderWidth: 0
        //},
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'COD Index',
            data: [7.0, 6.9, 9.5, 14.5, 2.2, 4.5, 5.2, null, null, null, null, null]
        }]
    });

});